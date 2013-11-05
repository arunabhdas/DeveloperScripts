#!/usr/bin/perl

=head1 NAME

constsJSC.pl - Produces a C header file and implementation file to declare and define designated constants parsed from JavaScript files.

=head1 DESCRIPTION

This script is recommended if you have a project which produces both binary executables compiled from C source code, and JavaScript files, which share the same constants.  The benefit is that you can now define these shared constants in only the JavaScript files and not have to copy, paste, and maintain the same constants in C header files.  Your Build system or script should execute this script before compiling C files.

Only *designated* constants in the input JavaScript files appear in the output.  Constants are *designated* by coding each on a separate line, ending in a comment with the following syntax:

=over

=item   C</* C: TYPE */>

=back

where

=over

=item TYPE is the C type of which the generated constant should be declared.  Examples of TYPE are 'int', 'char*', 'char *', 'float'.

=item All whitespace in the comment is optional except there must be one whitespace after the word 'type'

=back

Designated constants in the JavaScript files may be defined by any of these keywords: 'var', 'const' or 'let'.

Example: The following line in JavaScript file Foo.js:

=over

=item C<var MY_HELLO = \"Hello\" ; /* C: char * */>

=back

will produce the following line in the output header (.h) file:

=over

=item C<extern char * const MY_HELLO" ;>

=back

and produce the following line in the output C implementation (.c) file:

=over

=item C<char * const MY_HELLO = \"Hello\" ; /* from Foo.js */>

=back

=head1 USAGE

Invoke from the shell:

=over

=item C<constJSC.pl outputFilePath inputFilePath1, …>

=back

where outputFilePath is the path to and name of the output files, not including the .h or c. extension.

=head1 WRAPPING WITH THE GNU `make' UTILITY

Normally, one would use this script in an automatic build system, and in order to avoid unnecessary rebuilding, to invoke it from the GNU `make' utility (http://www.gnu.org/software/make/).

This script does not quite fit into the `make' paradigm, however, because it produces two output files, .c and .h.  So you only need to invoke `make' for one of them.

Here is a typical invocation from a bash shell script, where we've chosen to `make' the .h file:

=over

SRCROOT=path/to/whatever
constsName=ConstsFromJavaScript

makefile=$SRCROOT/ConstsFromJavaScript.make
/usr/bin/make -C $SRCROOT constsName=$constsName -f $makefile $constsName.h

=back

And here is the contents of a typical .make file (makefile):

=over

# Variable declarations
script=the/path/to/constsJSC.pl
outputFile=$(SRCROOT)/$(constsName)
inputFiles=$(SRCROOT)/MyJavaScripts/*.js

# Explicit rule to make the .h file (which will make the .c file too)
$(constsName).h : $(inputFiles)
	the/path/to/constsJSC.pl $(outputFile) $(inputFiles)

=back

=head1 PREREQUISITES

File::Spec

=pod

=head1 SCRIPT CATEGORIES

Programming

=cut

use strict ;
use File::Spec ;

my $VERSION = 1.0 ;

my $scriptName = scriptName() ;

my $nArgs = $#ARGV + 1 ;
if ($nArgs < 2) {
	usageErrorDie() ;
}

my $outputPath = $ARGV[0] ;
my @files = @ARGV[1..$#ARGV] ;

my ($volume, $dirpath, $filename) = File::Spec->splitpath($outputPath) ;
my $filenameUpper = uc($filename) ;

my @findings ;
my $fileList = "" ;
foreach my $file (@files) {
	$fileList .= "    $file\n" ;
	open (SOURCEDATA, $file) ;
	my $source = (File::Spec->splitpath($file))[2] ;
	while (my $aLine = <SOURCEDATA>) {
		$aLine =~ m{\s*(const|var|let)\s*(\w+)\s*=\s*(.+)\s*;\s*/\*\s*C\s*:\s*(.+)\s*\*/} ;
		if ($2) {
			my $finding_ref = {
				symbol => trim($2),
				value => trim($3),
				type => trim($4),
				source => $source
				} ;
			push(@findings, $finding_ref) ;
		}
	}
}

my $comment = "/*\nThis file is automatically generated by a Perl script, $scriptName.\nThe constants herein were copied from the following JavaScript files:\n\n$fileList\nDo not edit.\n*/\n\n" ;

my $hBody = "" ;
my $cBody = "" ;
foreach my $finding_ref (@findings) {
	my $type = $finding_ref->{'type'} ;
	my $symbol = $finding_ref->{'symbol'} ;
	my $value = $finding_ref->{'value'} ;
	my $source = $finding_ref->{'source'} ;
	
	$hBody .= "extern $type const $symbol ;\n" ;
	$cBody .= "$type const $symbol = $value ; /* from $source */\n" ;
}

my $diConst = "_INCLUDED_$filenameUpper" . "_H_" ;
my $doubleInclusionPrefix = "#ifndef $diConst\n#define $diConst\n\n" ;
my $doubleInclusionSuffix = "\n#endif\n" ;
my $include = "#include \"$filename.h\"\n\n" ;

my $textOut ;

# Write .h file
my $textOut = $comment . $doubleInclusionPrefix . $hBody . $doubleInclusionSuffix ;
open(OUTPUTFILE,">$outputPath.h") ;
print OUTPUTFILE $textOut ;
close(OUTPUTFILE) ;

# Write .c file
my $textOut = $comment . $include . $cBody ;
open(OUTPUTFILE,">$outputPath.c") ;
print OUTPUTFILE $textOut ;
close(OUTPUTFILE) ;

exit 0 ;

sub scriptName {
	(my $volume, my $parentPath, my $filename) = File::Spec->splitpath(__FILE__) ;
	return $filename ;
}

sub trim() {
	my $string = shift;
	$string =~ s/^\s+//;
	$string =~ s/\s+$//;
	return $string;
}

sub usageErrorDie {
	print ("Welcome.  Script $scriptName will produce a C header file and implementation file which declares and defines designated constants defined in JavaScript files.  Constants in each JavaScript file are so designated by coding each on a separate line, ending in a comment with the following syntax: /* C type TYPE */, where all whitespace is optional except one after the word 'type', and where TYPE is the C type of which the generated constant should be declared.  Examples of TYPE are 'int', 'char*', 'char *', 'float'.  Designated constants in the JavaScript files may be defined by any of the keywords 'var', 'const' or 'let'. \n\nUsage:\n   $scriptName outputFilePath inputFilePath1, inputFilePath2, ...\n\noutputFilePath is the path to and name of the output files, not including the .h or c. extension.\n\nExample: The line in JavaScript:\n   const MY_HELLO = \"Hello\" ; /* Ctype char * */\n will produce the following line in the output C header file:\n   const char * MY_HELLO = \"Hello\" ;\n\nReport bugs etc. to Jerry Krinock <jerry\@sheepsystems.com>\n") ;
	exit ;
}
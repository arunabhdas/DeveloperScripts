FasdUAS 1.101.10   ��   ��    k             l     ����  I    �� ��
�� .sysodlogaskr        TEXT  m      	 	 � 
 
� T h i s   s c r i p t   i l l u s t r a t e s   u n e x p e c t e d   b e h a v i o r   i n   r e t u r n i n g   t h e   s t d o u t   a n d   s t d e r r   o f   a   ' d o   s h e l l   s c r i p t '   c o m m a n d .     R u n   t h e   s c r i p t   a n d   s e e   r e s u l t s   i n   y o u r   s y s t e m . l o g   ( C o n s o l e . a p p )   f r o m   S e n d e r   ' S h e l l B u g ' .��  ��  ��        l     ��������  ��  ��        l     ��  ��     
 No Errors     �      N o   E r r o r s      l     ��������  ��  ��        l   	 ����  r    	    m       �    e c h o   M y E c h o  o      ���� 0 cmd  ��  ��        l  
  ����  I   
 �� ���� 0 doshellscript doShellScript       o    ���� 0 cmd      ! " ! m     # # � $ $ F C a s e   1 .     N o   E r r o r s   w i t h o u t   r e d i r e c t "  %�� % m    ��
�� boovfals��  ��  ��  ��     & ' & l    (���� ( I    �� )���� 0 doshellscript doShellScript )  * + * o    ���� 0 cmd   +  , - , m     . . � / / @ C a s e   2 .     N o   E r r o r s   w i t h   r e d i r e c t -  0�� 0 m    ��
�� boovtrue��  ��  ��  ��   '  1 2 1 l     ��������  ��  ��   2  3 4 3 l     �� 5 6��   5   Error from gcc    6 � 7 7    E r r o r   f r o m   g c c 4  8 9 8 l     ��������  ��  ��   9  : ; : l   % <���� < r    % = > = n    # ? @ ? 1   ! #��
�� 
psxp @ l   ! A���� A I   !�� B��
�� .earsffdralis        afdr B m    ��
�� afdrcusr��  ��  ��   > o      ���� 0 	posixhome 	posixHome��  ��   ;  C D C l  & + E���� E r   & + F G F b   & ) H I H o   & '���� 0 	posixhome 	posixHome I m   ' ( J J � K K  s o u r c e . c G o      ���� 0 
sourcepath 
sourcePath��  ��   D  L M L l  , / N���� N r   , / O P O m   , - Q Q � R R 8 T h i s   w i l l   g i v e   a   s h o r t   e r r o r P o      ���� 0 
sourcecode 
sourceCode��  ��   M  S T S l  0 8 U���� U I   0 8�� V���� ,0 writetexttoposixpath writeTextToPosixPath V  W X W o   1 2���� 0 
sourcepath 
sourcePath X  Y Z Y o   2 3���� 0 
sourcecode 
sourceCode Z  [�� [ m   3 4��
�� boovfals��  ��  ��  ��   T  \ ] \ l     ��������  ��  ��   ]  ^ _ ^ l  9 @ `���� ` r   9 @ a b a b   9 > c d c m   9 < e e � f f  g c c   - c   d o   < =���� 0 
sourcepath 
sourcePath b o      ���� 0 cmd  ��  ��   _  g h g l  A K i���� i I   A K�� j���� 0 doshellscript doShellScript j  k l k o   B C���� 0 cmd   l  m n m m   C F o o � p p P C a s e   3 .     E r r o r   f r o m   g c c   w i t h o u t   r e d i r e c t n  q�� q m   F G��
�� boovfals��  ��  ��  ��   h  r s r l  L V t���� t I   L V�� u���� 0 doshellscript doShellScript u  v w v o   M N���� 0 cmd   w  x y x m   N Q z z � { { J C a s e   4 .     E r r o r   f r o m   g c c   w i t h   r e d i r e c t y  |�� | m   Q R��
�� boovtrue��  ��  ��  ��   s  } ~ } l     ��������  ��  ��   ~   �  l     �� � ���   �   Warning from gcc    � � � � "   W a r n i n g   f r o m   g c c �  � � � l     ��������  ��  ��   �  � � � l  W \ ����� � r   W \ � � � m   W Z � � � � �  
 # w a r n i n g   T h i s   i s   a   w a r n i n g 
 # i n c l u d e   < s t d i o . h > 
 i n t   m a i n   ( i n t   a r g c ,   c o n s t   c h a r   *   a r g v [ ] )   { 
         p r i n t f ( " H e l l o \ n " ) ; 
         r e t u r n   0 ; 
 } � o      ���� 0 
sourcecode 
sourceCode��  ��   �  � � � l  ] e ����� � I   ] e�� ����� ,0 writetexttoposixpath writeTextToPosixPath �  � � � o   ^ _���� 0 
sourcepath 
sourcePath �  � � � o   _ `���� 0 
sourcecode 
sourceCode �  ��� � m   ` a��
�� boovfals��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  f m ����� � r   f m � � � b   f k � � � m   f i � � � � �  g c c   - c   � o   i j���� 0 
sourcepath 
sourcePath � o      ���� 0 cmd  ��  ��   �  � � � l  n x ����� � I   n x�� ����� 0 doshellscript doShellScript �  � � � o   o p���� 0 cmd   �  � � � m   p s � � � � � J C a s e   5 .     g c c   w a r n i n g   w i t h o u t   r e d i r e c t �  ��� � m   s t��
�� boovfals��  ��  ��  ��   �  � � � l  y � ����� � I   y ��� ����� 0 doshellscript doShellScript �  � � � o   z {���� 0 cmd   �  � � � m   { ~ � � � � � D C a s e   6 .     g c c   w a r n i n g   w i t h   r e d i r e c t �  ��� � m   ~ ��
�� boovtrue��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  � � ����� � I  � ��� ���
�� .sysodlogaskr        TEXT � m   � � � � � � �� C a s e s   1   a n d   2   a r e   a s   e x p e c t e d :   s t d o u t   i s   n o t   r e d i r e c t e d . 
 
 C a s e   3   i s   a s   e x p e c t e d :   s t d e r r   i s   n o t   r e d i r e c t e d . 
 
 C a s e   4   i s   N O T   a s   e x p e c t e d :   s t d e r r   s h o u l d   h a v e   b e e n   r e d i r e c t e d   b u t   i t   i s   n o t 
 
 C a s e   5   i s   N O T   a s   e x p e c t e d :   s t d e r r   d i d   n o t   a p p e a r   i n   e i t h e r   s c r i p t   o u t p u t   n o r   e r r o r . 
 
 C a s e   6   i s   a s   e x p e c t e d :   s t d e r r   w a s   r e d i r e c t e d   t o   s c r i p t   o u t p u t . 
 
 T h e   p r o b l e m   d o e s   n o t   s e e m   t o   b e   i n   g c c   o r   b a s h   b e c a u s e   i f   I   r e d i r e c t   o u t p u t   i n   T e r m i n a l   t o   f i l e s   w i t h   c o m m a n d s   l i k e   t h i s : 
         g c c   - c   / U s e r s / j k / s o u r c e . c   2 > m y S t d E r r . t x t   1 > m y S t d O u t . t x t 
 o r   t h i s : 
       g c c   - c   / U s e r s / j k / b a d S o u r c e . c   1 > m y S t d O u t . t x t   2 > & 1 
       
 t h e n   a l l   b e h a v e s   a s   e x p e c t e d . 
��  ��  ��   �  � � � l     ����~��  �  �~   �  � � � i      � � � I      �} ��|�} 0 doshellscript doShellScript �  � � � o      �{�{ 0 cmd   �  � � � o      �z�z 0 testname testName �  ��y � o      �x�x 40 doredirectstderrtostdout doRedirectStderrToStdout�y  �|   � k     d � �  � � � r      � � � m      � � � � �  N o   r e s u l t � o      �w�w 0 aresult aResult �  � � � r     � � � m     � � � � �  N o   e r r o r   s t r i n g � o      �v�v 0 errorstring errorString �  � � � r     � � � m    	 � � � � �  N o   e r r o r   n u m b e r � o      �u�u 0 errornumber errorNumber �  � � � Z     � ��t�s � =    � � � o    �r�r 40 doredirectstderrtostdout doRedirectStderrToStdout � m    �q
�q boovtrue � r     � � � b     � � � o    �p�p 0 cmd   � m     � � � � � 
   2 > & 1 � o      �o�o 0 cmd  �t  �s   �  � � � Q    5 � � � � r    & � � � I   $�n ��m
�n .sysoexecTEXT���     TEXT � o     �l�l 0 cmd  �m   � o      �k�k 0 aresult aResult � R      �j � �
�j .ascrerr ****      � **** � o      �i�i 0 errstr errStr � �h ��g
�h 
errn � o      �f�f 0 errnum errNum�g   � k   . 5 � �  � � � r   . 1 � � � o   . /�e�e 0 errstr errStr � o      �d�d 0 errorstring errorString �  ��c � r   2 5 � � � o   2 3�b�b 0 errnum errNum � o      �a�a 0 errornumber errorNumber�c   �  � � � I   6 A�` ��_�` 0 	syslogger   �    m   7 8 �  S h e l l B u g �^ b   8 = b   8 ; m   8 9		 �

  * * * * * *   o   9 :�]�] 0 testname testName m   ; < �    * * * * * *�^  �_   �  I   B K�\�[�\ 0 	syslogger    m   C D �  S h e l l B u g �Z b   D G m   D E �  r e s u l t :   o   E F�Y�Y 0 aresult aResult�Z  �[    I   L U�X�W�X 0 	syslogger    m   M N �  S h e l l B u g  �V  b   N Q!"! m   N O## �$$  e r r o r S t r i n g :  " o   O P�U�U 0 errorstring errorString�V  �W   %&% I   V a�T'�S�T 0 	syslogger  ' ()( m   W X** �++  S h e l l B u g) ,�R, b   X ]-.- m   X [// �00  e r r o r N u m b e r :  . o   [ \�Q�Q 0 errornumber errorNumber�R  �S  & 1�P1 L   b d22 o   b c�O�O 0 aresult aResult�P   � 343 l     �N�M�L�N  �M  �L  4 565 i    787 I      �K9�J�K ,0 writetexttoposixpath writeTextToPosixPath9 :;: o      �I�I 0 apath aPath; <=< o      �H�H 0 newtext newText= >�G> o      �F�F 0 doappend doAppend�G  �J  8 k     ]?? @A@ l     �EBC�E  B W Q filename must not end in ".log" or else a "file already open" error will result.   C �DD �   f i l e n a m e   m u s t   n o t   e n d   i n   " . l o g "   o r   e l s e   a   " f i l e   a l r e a d y   o p e n "   e r r o r   w i l l   r e s u l t .A EFE l     �DGH�D  G C = Maybe some system logging daemon takes over all .log files??   H �II z   M a y b e   s o m e   s y s t e m   l o g g i n g   d a e m o n   t a k e s   o v e r   a l l   . l o g   f i l e s ? ?F JKJ l     �CLM�C  L N H Uses File Read/Write suite of the Standard Additions scripting addition   M �NN �   U s e s   F i l e   R e a d / W r i t e   s u i t e   o f   t h e   S t a n d a r d   A d d i t i o n s   s c r i p t i n g   a d d i t i o nK OPO Z     "QR�B�AQ C    STS o     �@�@ 0 apath aPathT m    UU �VV  ~R k    WW XYX r    Z[Z n    \]\ 1    �?
�? 
psxp] l   ^�>�=^ I   �<_�;
�< .earsffdralis        afdr_ m    �:
�: afdrcusr�;  �>  �=  [ o      �9�9 0 home_posix_path  Y `�8` r    aba b    cdc o    �7�7 0 home_posix_path  d n    efe 7   �6gh
�6 
cha g m    �5�5 h  ;    f o    �4�4 0 apath aPathb o      �3�3 0 apath aPath�8  �B  �A  P iji r   # +klk l  # )m�2�1m c   # )non 4   # '�0p
�0 
psxfp o   % &�/�/ 0 apath aPatho m   ' (�.
�. 
ctxt�2  �1  l o      �-�- 0 filepath filePathj qrq r   , 5sts I  , 3�,uv
�, .rdwropenshor       fileu o   , -�+�+ 0 filepath filePathv �*w�)
�* 
permw m   . /�(
�( boovtrue�)  t o      �'�' 0 fileref fileRefr xyx Z   6 Wz{�&|z =  6 9}~} o   6 7�%�% 0 doappend doAppend~ m   7 8�$
�$ boovtrue{ I  < E�#�
�# .rdwrwritnull���     **** o   < =�"�" 0 newtext newText� �!��
�! 
refn� o   > ?� �  0 fileref fileRef� ���
� 
wrat� m   @ A�
� rdwreof �  �&  | k   H W�� ��� l  H H����  � ' ! Wipe out all existing text first   � ��� B   W i p e   o u t   a l l   e x i s t i n g   t e x t   f i r s t� ��� I  H O���
� .rdwrseofnull���     ****� o   H I�� 0 fileref fileRef� ���
� 
set2� m   J K��  �  � ��� I  P W���
� .rdwrwritnull���     ****� o   P Q�� 0 newtext newText� ���
� 
refn� o   R S�� 0 fileref fileRef�  �  y ��� I  X ]���
� .rdwrclosnull���     ****� o   X Y�� 0 fileref fileRef�  �  6 ��� l     ���
�  �  �
  � ��� l      �	���	  � x r Logs a message to the system log (which you can monitor in Console.app).  The msg is tagged with a given sender.    � ��� �   L o g s   a   m e s s a g e   t o   t h e   s y s t e m   l o g   ( w h i c h   y o u   c a n   m o n i t o r   i n   C o n s o l e . a p p ) .     T h e   m s g   i s   t a g g e d   w i t h   a   g i v e n   s e n d e r .  � ��� i    ��� I      ���� 0 	syslogger  � ��� o      �� 
0 sender  � ��� o      �� 0 msg  �  �  � k     /�� ��� Z     ����� l    ��� � ?    ��� n     ��� 1    ��
�� 
leng� o     ���� 0 msg  � m    ������  �   � r    ��� b    ��� l   ������ n    ��� 7  	 ����
�� 
ctxt� m    ���� � m    ������ o    	���� 0 msg  ��  ��  � m    �� ��� �   < s n i p >   * * *   S o r r y ,   M e s s a g e   >   1 5 0 0   c h a r s   w i l l   n o t   b e   r e l i a b l y   l o g g e d   b y   B S D ' s   ' l o g g e r ' .� o      ���� 0 msg  �  �  � ��� r    )��� b    '��� b    #��� b    !��� m    �� ���  l o g g e r   - t  � n     ��� 1     ��
�� 
strq� o    ���� 
0 sender  � m   ! "�� ���   � n   # &��� 1   $ &��
�� 
strq� o   # $���� 0 msg  � o      ���� 0 cmd  � ���� I  * /�����
�� .sysoexecTEXT���     TEXT� o   * +���� 0 cmd  ��  ��  � ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       ���������  � ���������� 0 doshellscript doShellScript�� ,0 writetexttoposixpath writeTextToPosixPath�� 0 	syslogger  
�� .aevtoappnull  �   � ****� �� ����������� 0 doshellscript doShellScript�� ����� �  �������� 0 cmd  �� 0 testname testName�� 40 doredirectstderrtostdout doRedirectStderrToStdout��  � ������������������ 0 cmd  �� 0 testname testName�� 40 doredirectstderrtostdout doRedirectStderrToStdout�� 0 aresult aResult�� 0 errorstring errorString�� 0 errornumber errorNumber�� 0 errstr errStr�� 0 errnum errNum�  � � � ������	��#*/
�� .sysoexecTEXT���     TEXT�� 0 errstr errStr� ������
�� 
errn�� 0 errnum errNum��  �� 0 	syslogger  �� e�E�O�E�O�E�O�e  
��%E�Y hO �j E�W X  �E�O�E�O*��%�%l+ 
O*��%l+ 
O*��%l+ 
O*�a �%l+ 
O�� ��8���������� ,0 writetexttoposixpath writeTextToPosixPath�� ����� �  �������� 0 apath aPath�� 0 newtext newText�� 0 doappend doAppend��  � �������������� 0 apath aPath�� 0 newtext newText�� 0 doappend doAppend�� 0 home_posix_path  �� 0 filepath filePath�� 0 fileref fileRef� U��������������������������������
�� afdrcusr
�� .earsffdralis        afdr
�� 
psxp
�� 
cha 
�� 
psxf
�� 
ctxt
�� 
perm
�� .rdwropenshor       file
�� 
refn
�� 
wrat
�� rdwreof �� 
�� .rdwrwritnull���     ****
�� 
set2
�� .rdwrseofnull���     ****
�� .rdwrclosnull���     ****�� ^�� �j �,E�O��[�\[Zl\62%E�Y hO*�/�&E�O��el E�O�e  ����� Y ��jl O��l O�j � ������������� 0 	syslogger  �� ����� �  ������ 
0 sender  �� 0 msg  ��  � �������� 
0 sender  �� 0 msg  �� 0 cmd  � �������������
�� 
leng���
�� 
ctxt
�� 
strq
�� .sysoexecTEXT���     TEXT�� 0��,� �[�\[Zk\Z�2�%E�Y hO��,%�%��,%E�O�j � �����������
�� .aevtoappnull  �   � ****� k     ���  ��  ��  ��  &��  :��  C��  L��  S��  ^��  g��  r��  ���  ���  ���  ���  ���  �����  ��  ��  �  �  	�� �� #�� .�������� J�� Q���� e o z � � � � �
�� .sysodlogaskr        TEXT�� 0 cmd  �� 0 doshellscript doShellScript
�� afdrcusr
�� .earsffdralis        afdr
�� 
psxp�� 0 	posixhome 	posixHome�� 0 
sourcepath 
sourcePath�� 0 
sourcecode 
sourceCode�� ,0 writetexttoposixpath writeTextToPosixPath�� ��j O�E�O*��fm+ O*��em+ O�j �,E�O��%E�O�E�O*��fm+ Oa �%E�O*�a fm+ O*�a em+ Oa E�O*��fm+ Oa �%E�O*�a fm+ O*�a em+ Oa j  ascr  ��ޭ
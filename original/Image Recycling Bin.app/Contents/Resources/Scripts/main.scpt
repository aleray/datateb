FasdUAS 1.101.10   ��   ��    k             l     �� ��      author: Martin Michel       	  l     �� 
��   
 ' ! eMail: martin@joyofscripting.com    	     l     �� ��      created: 30.03.2008         l     ������  ��        l     �� ��    P J This AppleScript droplet will execute a Python script named "dropycol.py"         l     �� ��    K E located in its own application bundle and pass the item paths of the         l     �� ��    "  dropped items as arguments.         l     �� ��    < 6 The Python script will then set/reset the color label         l     �� ��    ; 5 of the dropped items using appscript and the Finder.          l     ������  ��      ! " ! j     �� #�� 0 mytitle   # m      $ $  Files Shredder    "  % & % l     ������  ��   &  ' ( ' i     ) * ) I     ������
�� .aevtoappnull  �   � ****��  ��   * Q     n + , - + k    & . .  / 0 / r     1 2 1 l   
 3�� 3 c    
 4 5 4 l    6�� 6 I   �� 7��
�� .earsffdralis        afdr 7  f    ��  ��   5 m    	��
�� 
utxt��   2 o      ���� 
0 mypath   0  8 9 8 r     : ; : n     < = < 1    ��
�� 
strq = l    >�� > n     ? @ ? 1    ��
�� 
psxp @ l    A�� A b     B C B o    ���� 
0 mypath   C m     D D % Contents:Resources:patchwork.py   ��  ��   ; o      ���� 0 pyscriptpath   9  E F E l   �� G��   G J D executing the Python script with the item paths passed as arguments    F  H I H r     J K J b     L M L b     N O N m     P P  /usr/local/bin/python    O 1    ��
�� 
spac M o    ���� 0 pyscriptpath   K o      ���� 0 cmd   I  Q R Q l   �� S��   S %  set cmd to cmd as �class utf8�    R  T�� T r    & U V U I   $�� W��
�� .sysoexecTEXT���     TEXT W o     ���� 0 cmd  ��   V o      ���� 0 shellresult  ��   , R      �� X Y
�� .ascrerr ****      � **** X o      ���� 
0 errmsg   Y �� Z��
�� 
errn Z o      ���� 
0 errnum  ��   - O   . n [ \ [ k   2 m ] ]  ^ _ ^ I  2 7������
�� .miscactvnull��� ��� null��  ��   _  `�� ` I  8 m�� a b
�� .sysodlogaskr        TEXT a b   8 M c d c b   8 I e f e b   8 G g h g b   8 C i j i b   8 A k l k b   8 = m n m m   8 9 o o  Sorry, an error occured:    n o   9 <��
�� 
ret  l o   = @��
�� 
ret  j o   A B���� 
0 errmsg   h m   C F p p   (    f o   G H���� 
0 errnum   d m   I L q q  )    b �� r s
�� 
btns r J   P U t t  u�� u m   P S v v  OK   ��   s �� w x
�� 
dflt w m   X Y����  x �� y z
�� 
disp y m   \ _��
�� stic     z �� {��
�� 
appr { o   b g���� 0 mytitle  ��  ��   \  f   . / (  | } | l     ������  ��   }  ~�� ~ i    
  �  I     �� ���
�� .aevtodocnull  �    alis � o      ���� 0 	dropitems  ��   � Q     � � � � � k    x � �  � � � l   �� ���   � 2 , creating a large string containing all the     �  � � � l   �� ���   � . ( quoted Posix paths of the dropped items    �  � � � r     � � � m     � �       � o      ���� 0 strfilepaths   �  � � � r     � � � n    
 � � � 1    
��
�� 
leng � o    ���� 0 	dropitems   � o      ���� 0 countdropitems   �  � � � Y    B ��� � ��� � k    = � �  � � � r     � � � c     � � � l    ��� � n     � � � 4    �� �
�� 
cobj � o    ���� 0 i   � o    ���� 0 	dropitems  ��   � m    ��
�� 
utxt � o      ���� 0 dropitempath   �  ��� � Z     = � ��� � � =    # � � � o     !���� 0 i   � o   ! "���� 0 	dropitems   � r   & / � � � b   & - � � � o   & '���� 0 strfilepaths   � n   ' , � � � 1   * ,��
�� 
strq � l  ' * ��� � n   ' * � � � 1   ( *��
�� 
psxp � o   ' (���� 0 dropitempath  ��   � o      ���� 0 strfilepaths  ��   � r   2 = � � � b   2 ; � � � b   2 9 � � � o   2 3���� 0 strfilepaths   � n   3 8 � � � 1   6 8��
�� 
strq � l  3 6 ��� � n   3 6 � � � 1   4 6��
�� 
psxp � o   3 4���� 0 dropitempath  ��   � 1   9 :��
�� 
spac � o      ���� 0 strfilepaths  ��  �� 0 i   � m    ����  � o    ���� 0 countdropitems  ��   �  � � � l  C C�� ���   � J D getting the path to the Python script inside the AppleScript bundle    �  � � � r   C L � � � l  C J ��� � c   C J � � � l  C H ��� � I  C H�� ���
�� .earsffdralis        afdr �  f   C D��  ��   � m   H I��
�� 
utxt��   � o      ���� 
0 mypath   �  � � � I  M R�� ���
�� .aevtstvlnull��� ��� nmbr � m   M N���� ��   �  � � � r   S \ � � � n   S Z � � � 1   X Z��
�� 
strq � l  S X ��� � n   S X � � � 1   V X��
�� 
psxp � l  S V ��� � b   S V � � � o   S T���� 
0 mypath   � m   T U � � $ Contents:Resources:dropping.py   ��  ��   � o      ���� 0 pyscriptpath   �  � � � l  ] ]�� ���   � J D executing the Python script with the item paths passed as arguments    �  � � � r   ] h � � � b   ] f � � � b   ] d � � � b   ] b � � � b   ] ` � � � m   ] ^ � �  /usr/local/bin/python    � 1   ^ _��
�� 
spac � o   ` a���� 0 pyscriptpath   � 1   b c��
�� 
spac � o   d e���� 0 strfilepaths   � o      ���� 0 cmd   �  � � � r   i n � � � c   i l � � � o   i j���� 0 cmd   � m   j k��
�� 
utf8 � o      ���� 0 cmd   �  � � � r   o v � � � I  o t� ��~
� .sysoexecTEXT���     TEXT � o   o p�}�} 0 cmd  �~   � o      �|�| 0 shellresult   �  ��{ � l  w w�z ��z   � !  catching unexpected errors   �{   � R      �y � �
�y .ascrerr ****      � **** � o      �x�x 
0 errmsg   � �w ��v
�w 
errn � o      �u�u 
0 errnum  �v   � O   � � � � � k   � � � �    I  � ��t�s�r
�t .miscactvnull��� ��� null�s  �r   �q I  � ��p
�p .sysodlogaskr        TEXT b   � � b   � � b   � �	
	 b   � � b   � � b   � � m   � �  Sorry, an error occured:    o   � ��o
�o 
ret  o   � ��n
�n 
ret  o   � ��m�m 
0 errmsg  
 m   � �   (    o   � ��l�l 
0 errnum   m   � �  )    �k
�k 
btns J   � � �j m   � �  OK   �j   �i
�i 
dflt m   � ��h�h  �g
�g 
disp m   � ��f
�f stic     �e�d
�e 
appr o   � ��c�c 0 mytitle  �d  �q   �  f   � ���       �b $ !"#$�a�`�_�^�]�b   �\�[�Z�Y�X�W�V�U�T�S�R�Q�\ 0 mytitle  
�[ .aevtoappnull  �   � ****
�Z .aevtodocnull  �    alis�Y 
0 mypath  �X 0 pyscriptpath  �W 0 cmd  �V 0 shellresult  �U  �T  �S  �R  �Q   �P *�O�N%&�M
�P .aevtoappnull  �   � ****�O  �N  % �L�K�L 
0 errmsg  �K 
0 errnum  & �J�I�H D�G�F�E P�D�C�B�A�@'�? o�> p q�= v�<�;�:�9�8�7
�J .earsffdralis        afdr
�I 
utxt�H 
0 mypath  
�G 
psxp
�F 
strq�E 0 pyscriptpath  
�D 
spac�C 0 cmd  
�B .sysoexecTEXT���     TEXT�A 0 shellresult  �@ 
0 errmsg  ' �6�5�4
�6 
errn�5 
0 errnum  �4  
�? .miscactvnull��� ��� null
�> 
ret 
�= 
btns
�< 
dflt
�; 
disp
�: stic    
�9 
appr�8 
�7 .sysodlogaskr        TEXT�M o ()j  �&E�O��%�,�,E�O��%�%E�O�j 
E�W GX  ) =*j O�_ %_ %�%a %�%a %a a kva ka a a b   a  U  �3 ��2�1()�0
�3 .aevtodocnull  �    alis�2 0 	dropitems  �1  ( �/�.�-�,�+�*�)�(�'�&�%�/ 0 	dropitems  �. 0 strfilepaths  �- 0 countdropitems  �, 0 i  �+ 0 dropitempath  �* 
0 mypath  �) 0 pyscriptpath  �( 0 cmd  �' 0 shellresult  �& 
0 errmsg  �% 
0 errnum  )  ��$�#�"�!� ��� � ����*���������
�$ 
leng
�# 
cobj
�" 
utxt
�! 
psxp
�  
strq
� 
spac
� .earsffdralis        afdr
� .aevtstvlnull��� ��� nmbr
� 
utf8
� .sysoexecTEXT���     TEXT� 
0 errmsg  * ���
� 
errn� 
0 errnum  �  
� .miscactvnull��� ��� null
� 
ret 
� 
btns
� 
dflt
� 
disp
� stic    
� 
appr� 
� .sysodlogaskr        TEXT�0 � z�E�O��,E�O 4k�kh ��/�&E�O��  ���,�,%E�Y ���,�,%�%E�[OY��O)j �&E�Omj O��%�,�,E�O��%�%�%�%E�O��&E�O�j E�OPW IX  ) ?*j Oa _ %_ %�%a %�%a %a a kva ka a a b   a  U! �++ f s t o c k : U s e r s : a l e r a y : D e s k t o p : I m a g e   R e c y c l i n g   B i n . a p p :" �,, � ' / V o l u m e s / s t o c k / U s e r s / a l e r a y / D e s k t o p / I m a g e   R e c y c l i n g   B i n . a p p / C o n t e n t s / R e s o u r c e s / p a t c h w o r k . p y '# �-- � / u s r / l o c a l / b i n / p y t h o n   ' / V o l u m e s / s t o c k / U s e r s / a l e r a y / D e s k t o p / I m a g e   R e c y c l i n g   B i n . a p p / C o n t e n t s / R e s o u r c e s / p a t c h w o r k . p y '$ �.. 1   %   C o m p l e t e d  2   %   C o m p l e t e d  3   %   C o m p l e t e d  4   %   C o m p l e t e d  5   %   C o m p l e t e d  6   %   C o m p l e t e d  7   %   C o m p l e t e d  8   %   C o m p l e t e d  9   %   C o m p l e t e d  1 0   %   C o m p l e t e d  1 1   %   C o m p l e t e d  1 2   %   C o m p l e t e d  1 3   %   C o m p l e t e d  1 4   %   C o m p l e t e d  1 5   %   C o m p l e t e d  1 6   %   C o m p l e t e d  1 7   %   C o m p l e t e d  1 8   %   C o m p l e t e d  1 9   %   C o m p l e t e d  2 0   %   C o m p l e t e d  2 1   %   C o m p l e t e d  2 2   %   C o m p l e t e d  2 3   %   C o m p l e t e d  2 4   %   C o m p l e t e d  2 5   %   C o m p l e t e d  2 6   %   C o m p l e t e d  2 7   %   C o m p l e t e d  2 8   %   C o m p l e t e d  2 9   %   C o m p l e t e d  3 0   %   C o m p l e t e d  3 1   %   C o m p l e t e d  3 2   %   C o m p l e t e d  3 3   %   C o m p l e t e d  3 4   %   C o m p l e t e d  3 5   %   C o m p l e t e d  3 6   %   C o m p l e t e d  3 7   %   C o m p l e t e d  3 8   %   C o m p l e t e d  3 9   %   C o m p l e t e d  4 0   %   C o m p l e t e d  4 1   %   C o m p l e t e d  4 2   %   C o m p l e t e d  4 3   %   C o m p l e t e d  4 4   %   C o m p l e t e d  4 5   %   C o m p l e t e d  4 6   %   C o m p l e t e d  4 7   %   C o m p l e t e d  4 8   %   C o m p l e t e d  4 9   %   C o m p l e t e d  5 0   %   C o m p l e t e d  5 1   %   C o m p l e t e d  5 2   %   C o m p l e t e d  5 3   %   C o m p l e t e d  5 4   %   C o m p l e t e d  5 5   %   C o m p l e t e d  5 6   %   C o m p l e t e d  5 7   %   C o m p l e t e d  5 8   %   C o m p l e t e d  5 9   %   C o m p l e t e d  6 0   %   C o m p l e t e d  6 1   %   C o m p l e t e d  6 2   %   C o m p l e t e d  6 3   %   C o m p l e t e d  6 4   %   C o m p l e t e d  6 5   %   C o m p l e t e d  6 6   %   C o m p l e t e d  6 7   %   C o m p l e t e d  6 8   %   C o m p l e t e d  6 9   %   C o m p l e t e d  7 0   %   C o m p l e t e d  7 1   %   C o m p l e t e d  7 2   %   C o m p l e t e d  7 3   %   C o m p l e t e d  7 4   %   C o m p l e t e d  7 5   %   C o m p l e t e d  7 6   %   C o m p l e t e d  7 7   %   C o m p l e t e d  7 8   %   C o m p l e t e d  7 9   %   C o m p l e t e d  8 0   %   C o m p l e t e d  8 1   %   C o m p l e t e d  8 2   %   C o m p l e t e d  8 3   %   C o m p l e t e d  8 4   %   C o m p l e t e d  8 5   %   C o m p l e t e d  8 6   %   C o m p l e t e d  8 7   %   C o m p l e t e d  8 8   %   C o m p l e t e d  8 9   %   C o m p l e t e d  9 0   %   C o m p l e t e d  9 1   %   C o m p l e t e d  9 2   %   C o m p l e t e d  9 3   %   C o m p l e t e d  9 4   %   C o m p l e t e d  9 5   %   C o m p l e t e d  9 6   %   C o m p l e t e d  9 7   %   C o m p l e t e d  9 8   %   C o m p l e t e d  9 9   %   C o m p l e t e d  1 0 0   %   C o m p l e t e d  D o n e   w i t h   l o o p  T h e   d i a l o g   s h o u l d   b e   g o n e   n o w  [ [ < J p e g I m a g e P l u g i n . J p e g I m a g e F i l e   i n s t a n c e   a t   0 x 2 c c f 6 9 8 > ,   5 0 0 ,   3 3 9 ] ,   [ < J p e g I m a g e P l u g i n . J p e g I m a g e F i l e   i n s t a n c e   a t   0 x 2 c d 8 a 8 0 > ,   5 0 0 ,   3 3 8 ] ]�a  �`  �_  �^  �]   ascr  ��ޭ
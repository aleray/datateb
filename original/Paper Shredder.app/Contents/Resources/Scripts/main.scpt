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
0 mypath   C m     D D ' !Contents:Resources:open_folder.py   ��  ��   ; o      ���� 0 pyscriptpath   9  E F E l   �� G��   G J D executing the Python script with the item paths passed as arguments    F  H I H r     J K J b     L M L b     N O N m     P P  /usr/bin/env python    O 1    ��
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
�� .aevtodocnull  �    alis � o      ���� 0 	dropitems  ��   � Q     � � � � � k    r � �  � � � l   �� ���   � 2 , creating a large string containing all the     �  � � � l   �� ���   � . ( quoted Posix paths of the dropped items    �  � � � r     � � � m     � �       � o      ���� 0 strfilepaths   �  � � � r     � � � n    
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
0 mypath   �  � � � r   M V � � � n   M T � � � 1   R T��
�� 
strq � l  M R ��� � n   M R � � � 1   P R��
�� 
psxp � l  M P ��� � b   M P � � � o   M N���� 
0 mypath   � m   N O � � &  Contents:Resources:pyshredder.py   ��  ��   � o      ���� 0 pyscriptpath   �  � � � l  W W�� ���   � J D executing the Python script with the item paths passed as arguments    �  � � � r   W b � � � b   W ` � � � b   W ^ � � � b   W \ � � � b   W Z � � � m   W X � �  /usr/bin/env python    � 1   X Y��
�� 
spac � o   Z [���� 0 pyscriptpath   � 1   \ ]��
�� 
spac � o   ^ _���� 0 strfilepaths   � o      ���� 0 cmd   �  � � � r   c h � � � c   c f � � � o   c d���� 0 cmd   � m   d e��
�� 
utf8 � o      ���� 0 cmd   �  � � � r   i p � � � I  i n�� ���
�� .sysoexecTEXT���     TEXT � o   i j���� 0 cmd  ��   � o      �� 0 shellresult   �  ��~ � l  q q�} ��}   � !  catching unexpected errors   �~   � R      �| � �
�| .ascrerr ****      � **** � o      �{�{ 
0 errmsg   � �z ��y
�z 
errn � o      �x�x 
0 errnum  �y   � O   z � � � � k   ~ � � �  � � � I  ~ ��w�v�u
�w .miscactvnull��� ��� null�v  �u   �  ��t � I  � ��s 
�s .sysodlogaskr        TEXT  b   � � b   � � b   � � b   � �	 b   � �

 b   � � m   � �  Sorry, an error occured:    o   � ��r
�r 
ret  o   � ��q
�q 
ret 	 o   � ��p�p 
0 errmsg   m   � �   (    o   � ��o�o 
0 errnum   m   � �  )    �n
�n 
btns J   � � �m m   � �  OK   �m   �l
�l 
dflt m   � ��k�k  �j
�j 
disp m   � ��i
�i stic     �h�g
�h 
appr o   � ��f�f 0 mytitle  �g  �t   �  f   z {��       �e $�e   �d�c�b�d 0 mytitle  
�c .aevtoappnull  �   � ****
�b .aevtodocnull  �    alis �a *�`�_�^
�a .aevtoappnull  �   � ****�`  �_   �]�\�] 
0 errmsg  �\ 
0 errnum   �[�Z�Y D�X�W�V P�U�T�S�R�Q �P o�O p q�N v�M�L�K�J�I�H
�[ .earsffdralis        afdr
�Z 
utxt�Y 
0 mypath  
�X 
psxp
�W 
strq�V 0 pyscriptpath  
�U 
spac�T 0 cmd  
�S .sysoexecTEXT���     TEXT�R 0 shellresult  �Q 
0 errmsg    �G�F�E
�G 
errn�F 
0 errnum  �E  
�P .miscactvnull��� ��� null
�O 
ret 
�N 
btns
�M 
dflt
�L 
disp
�K stic    
�J 
appr�I 
�H .sysodlogaskr        TEXT�^ o ()j  �&E�O��%�,�,E�O��%�%E�O�j 
E�W GX  ) =*j O�_ %_ %�%a %�%a %a a kva ka a a b   a  U �D ��C�B!"�A
�D .aevtodocnull  �    alis�C 0 	dropitems  �B  ! �@�?�>�=�<�;�:�9�8�7�6�@ 0 	dropitems  �? 0 strfilepaths  �> 0 countdropitems  �= 0 i  �< 0 dropitempath  �; 
0 mypath  �: 0 pyscriptpath  �9 0 cmd  �8 0 shellresult  �7 
0 errmsg  �6 
0 errnum  "  ��5�4�3�2�1�0�/ � ��.�-�,#�+�*�)�(�'�&�%�$�#
�5 
leng
�4 
cobj
�3 
utxt
�2 
psxp
�1 
strq
�0 
spac
�/ .earsffdralis        afdr
�. 
utf8
�- .sysoexecTEXT���     TEXT�, 
0 errmsg  # �"�!� 
�" 
errn�! 
0 errnum  �   
�+ .miscactvnull��� ��� null
�* 
ret 
�) 
btns
�( 
dflt
�' 
disp
�& stic    
�% 
appr�$ 
�# .sysodlogaskr        TEXT�A � t�E�O��,E�O 4k�kh ��/�&E�O��  ���,�,%E�Y ���,�,%�%E�[OY��O)j �&E�O��%�,�,E�O��%�%�%�%E�O��&E�O�j E�OPW GX  ) =*j O�_ %_ %�%a %�%a %a a kva ka a a b   a  Uascr  ��ޭ
FasdUAS 1.101.10   ��   ��    k             l     �� ��      author: Martin Michel       	  l     �� 
��   
 ' ! eMail: martin@joyofscripting.com    	     l     �� ��      created: 30.03.2008         l     �� ��    M G modify by Alexandre Leray for Datateb digital waste management utility         l     �� ��      http://www.datateb.org/         l     ������  ��        l     �� ��    L F This AppleScript droplet will execute a Python script named "main.py"         l     �� ��    K E located in its own application bundle and pass the item paths of the         l     �� ��    "  dropped items as arguments.          l     ������  ��      ! " ! j     �� #�� 0 mytitle   # m      $ $ 
 Base    "  % & % l     ������  ��   &  ' ( ' i     ) * ) I     ������
�� .aevtoappnull  �   � ****��  ��   * Q     v + , - + k    , . .  / 0 / r     1 2 1 l   
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
0 mypath   C m     D D ( "Contents:Resources:Scripts:main.py   ��  ��   ; o      ���� 0 pyscriptpath   9  E F E l   �� G��   G J D executing the Python script with the item paths passed as arguments    F  H I H r     J K J b     L M L b     N O N m     P P  /usr/bin/env python    O 1    ��
�� 
spac M o    ���� 0 pyscriptpath   K o      ���� 0 cmd   I  Q R Q r    $ S T S c    " U V U o     ���� 0 cmd   V m     !��
�� 
utf8 T o      ���� 0 cmd   R  W�� W r   % , X Y X I  % *�� Z��
�� .sysoexecTEXT���     TEXT Z o   % &���� 0 cmd  ��   Y o      ���� 0 shellresult  ��   , R      �� [ \
�� .ascrerr ****      � **** [ o      ���� 
0 errmsg   \ �� ]��
�� 
errn ] o      ���� 
0 errnum  ��   - O   4 v ^ _ ^ k   8 u ` `  a b a I  8 =������
�� .miscactvnull��� ��� null��  ��   b  c�� c I  > u�� d e
�� .sysodlogaskr        TEXT d b   > U f g f b   > Q h i h b   > O j k j b   > K l m l b   > I n o n b   > E p q p m   > A r r  Sorry, an error occured:    q o   A D��
�� 
ret  o o   E H��
�� 
ret  m o   I J���� 
0 errmsg   k m   K N s s   (    i o   O P���� 
0 errnum   g m   Q T t t  )    e �� u v
�� 
btns u J   X ] w w  x�� x m   X [ y y  OK   ��   v �� z {
�� 
dflt z m   ` a����  { �� | }
�� 
disp | m   d g��
�� stic     } �� ~��
�� 
appr ~ o   j o���� 0 mytitle  ��  ��   _  f   4 5 (   �  l     ������  ��   �  ��� � i    
 � � � I     �� ���
�� .aevtodocnull  �    alis � o      ���� 0 	dropitems  ��   � I    �� ���
�� .sysodlogaskr        TEXT � m      � � e _Dropping items is not supported. Please double-click the Application to magnetize your Desktop!   ��  ��       �� � $ � ���   � �������� 0 mytitle  
�� .aevtoappnull  �   � ****
�� .aevtodocnull  �    alis � �� *���� � ���
�� .aevtoappnull  �   � ****��  ��   � ������ 
0 errmsg  �� 
0 errnum   � ������ D������ P������������ ��� r�� s t�� y������������
�� .earsffdralis        afdr
�� 
utxt�� 
0 mypath  
�� 
psxp
�� 
strq�� 0 pyscriptpath  
�� 
spac�� 0 cmd  
�� 
utf8
�� .sysoexecTEXT���     TEXT�� 0 shellresult  �� 
0 errmsg   � ������
�� 
errn�� 
0 errnum  ��  
�� .miscactvnull��� ��� null
�� 
ret 
�� 
btns
�� 
dflt
�� 
disp
�� stic    
�� 
appr�� 
�� .sysodlogaskr        TEXT�� w .)j  �&E�O��%�,�,E�O��%�%E�O��&E�O�j E�W IX  ) ?*j Oa _ %_ %�%a %�%a %a a kva ka a a b   a  U � �� ����� � ���
�� .aevtodocnull  �    alis�� 0 	dropitems  ��   � ���� 0 	dropitems   �  ���
�� .sysodlogaskr        TEXT�� �j ascr  ��ޭ
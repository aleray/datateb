FasdUAS 1.101.10   ��   ��    k             l     �� ��      author: Martin Michel       	  l     �� 
��   
 ' ! eMail: martin@joyofscripting.com    	     l     �� ��      created: 30.03.2008         l     ������  ��        l     �� ��    P J This AppleScript droplet will execute a Python script named "dropycol.py"         l     �� ��    K E located in its own application bundle and pass the item paths of the         l     �� ��    "  dropped items as arguments.         l     �� ��    < 6 The Python script will then set/reset the color label         l     �� ��    ; 5 of the dropped items using appscript and the Finder.          l     ������  ��      ! " ! j     �� #�� 0 mytitle   # m      $ $  
Magnetizer    "  % & % l     ������  ��   &  ' ( ' i     ) * ) I     ������
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
0 mypath   C m     D D &  Contents:Resources:magnetizer.py   ��  ��   ; o      ���� 0 pyscriptpath   9  E F E l   �� G��   G J D executing the Python script with the item paths passed as arguments    F  H I H r     J K J b     L M L b     N O N m     P P  /usr/local/bin/python    O 1    ��
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
�� .sysodlogaskr        TEXT � m      � � e _Dropping items is not supported. Please double-click the Application to magnetize your Desktop!   ��  ��       �� � $ � � � � � �������������   � �������������������������� 0 mytitle  
�� .aevtoappnull  �   � ****
�� .aevtodocnull  �    alis�� 
0 mypath  �� 0 pyscriptpath  �� 0 cmd  �� 0 shellresult  ��  ��  ��  ��  ��   � �� *���� � ���
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
�� .sysodlogaskr        TEXT�� �j  � � � � R S T O C K : U s e r s : a l e r a y : D e s k t o p : M a g n e t i z e . a p p : � � � � � ' / V o l u m e s / S T O C K / U s e r s / a l e r a y / D e s k t o p / M a g n e t i z e . a p p / C o n t e n t s / R e s o u r c e s / m a g n e t i z e r . p y ' � � � � � / u s r / l o c a l / b i n / p y t h o n   ' / V o l u m e s / S T O C K / U s e r s / a l e r a y / D e s k t o p / M a g n e t i z e . a p p / C o n t e n t s / R e s o u r c e s / m a g n e t i z e r . p y ' � � � � a p p ( u ' / S y s t e m / L i b r a r y / C o r e S e r v i c e s / F i n d e r . a p p ' ) . d e s k t o p . d o c u m e n t _ f i l e s [ u ' 0 2 - 0 1 Y a h o o . p p t ' ]   r e m o v e d  a p p ( u ' / S y s t e m / L i b r a r y / C o r e S e r v i c e s / F i n d e r . a p p ' ) . d e s k t o p . d o c u m e n t _ f i l e s [ u ' f s a e 1 9 9 8 . x l s ' ]   r e m o v e d  a p p ( u ' / S y s t e m / L i b r a r y / C o r e S e r v i c e s / F i n d e r . a p p ' ) . d e s k t o p . d o c u m e n t _ f i l e s [ u ' p r e s e n t a t i o n s . p p t ' ]   r e m o v e d  a p p ( u ' / S y s t e m / L i b r a r y / C o r e S e r v i c e s / F i n d e r . a p p ' ) . d e s k t o p . d o c u m e n t _ f i l e s [ u ' S u r v e y R e s u l t s . x l s ' ]   r e m o v e d��  ��  ��  ��  ��  ascr  ��ޭ
FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �
organize - hierarchy

This Folder Action handler is triggered whenever items are added to the attached folder.
The script organizes the added files into a folder hierarchy that follows the following structure:
YYYY/M/D
Where YYYY is four-digit year, M is month and D is the day.
Copyright � 2010 Omar Abdel-Wahab <owahab@gmail.com>.
You may not incorporate this code into your program(s) without
a written permission from the author but you're free to use it AS IS
with absolutely no warranty from the author.
     � 	 	� 
 o r g a n i z e   -   h i e r a r c h y 
 
 T h i s   F o l d e r   A c t i o n   h a n d l e r   i s   t r i g g e r e d   w h e n e v e r   i t e m s   a r e   a d d e d   t o   t h e   a t t a c h e d   f o l d e r . 
 T h e   s c r i p t   o r g a n i z e s   t h e   a d d e d   f i l e s   i n t o   a   f o l d e r   h i e r a r c h y   t h a t   f o l l o w s   t h e   f o l l o w i n g   s t r u c t u r e : 
 Y Y Y Y / M / D 
 W h e r e   Y Y Y Y   i s   f o u r - d i g i t   y e a r ,   M   i s   m o n t h   a n d   D   i s   t h e   d a y . 
 C o p y r i g h t   �   2 0 1 0   O m a r   A b d e l - W a h a b   < o w a h a b @ g m a i l . c o m > . 
 Y o u   m a y   n o t   i n c o r p o r a t e   t h i s   c o d e   i n t o   y o u r   p r o g r a m ( s )   w i t h o u t 
 a   w r i t t e n   p e r m i s s i o n   f r o m   t h e   a u t h o r   b u t   y o u ' r e   f r e e   t o   u s e   i t   A S   I S 
 w i t h   a b s o l u t e l y   n o   w a r r a n t y   f r o m   t h e   a u t h o r . 
   
  
 l     ��������  ��  ��        l      ��  ��    8 2 A list of extension to exclude from notification      �   d   A   l i s t   o f   e x t e n s i o n   t o   e x c l u d e   f r o m   n o t i f i c a t i o n        j     �� �� 0 silent_extensions_list    J         ��  m        �    d o w n l o a d��        l     ��������  ��  ��        i        I     ��  
�� .facofgetnull���     alis  o      ���� 0 this_folder    ��  ��
�� 
flst   o      ���� 0 added_items  ��    Q    R ! "�� ! k   I # #  $ % $ r     & ' & l    (���� ( c     ) * ) n    
 + , + 1    
��
�� 
year , l    -���� - I   ������
�� .misccurdldt    ��� null��  ��  ��  ��   * m   
 ��
�� 
long��  ��   ' l      .���� . o      ���� 0 current_year  ��  ��   %  / 0 / r     1 2 1 l    3���� 3 c     4 5 4 n     6 7 6 m    ��
�� 
mnth 7 l    8���� 8 I   ������
�� .misccurdldt    ��� null��  ��  ��  ��   5 m    ��
�� 
long��  ��   2 l      9���� 9 o      ���� 0 current_month  ��  ��   0  : ; : r    & < = < l   $ >���� > c    $ ? @ ? n    " A B A 1     "��
�� 
day  B l     C���� C I    ������
�� .misccurdldt    ��� null��  ��  ��  ��   @ m   " #��
�� 
long��  ��   = l      D���� D o      ���� 0 current_day  ��  ��   ;  E F E l  ' '��������  ��  ��   F  G H G O   '; I J I k   +: K K  L M L l  + +�� N O��   N 4 . Create this year's folder if it doesn't exist    O � P P \   C r e a t e   t h i s   y e a r ' s   f o l d e r   i f   i t   d o e s n ' t   e x i s t M  Q R Q Z   + K S T���� S H   + 6 U U l  + 5 V���� V I  + 5�� W��
�� .coredoexbool        obj  W n   + 1 X Y X 4   , 1�� Z
�� 
cfol Z l  - 0 [���� [ c   - 0 \ ] \ o   - .���� 0 current_year   ] m   . /��
�� 
TEXT��  ��   Y o   + ,���� 0 this_folder  ��  ��  ��   T I  9 G���� ^
�� .corecrel****      � null��   ^ �� _ `
�� 
kocl _ m   ; <��
�� 
cfol ` �� a b
�� 
insh a o   = >���� 0 this_folder   b �� c��
�� 
prdt c K   ? C d d �� e��
�� 
pnam e o   @ A���� 0 current_year  ��  ��  ��  ��   R  f g f r   L T h i h n   L R j k j 4   M R�� l
�� 
cfol l l  N Q m���� m c   N Q n o n o   N O���� 0 current_year   o m   O P��
�� 
TEXT��  ��   k o   L M���� 0 this_folder   i l      p���� p o      ���� 0 year_folder  ��  ��   g  q r q l  U U�� s t��   s 5 / Create this month's folder if it doesn't exist    t � u u ^   C r e a t e   t h i s   m o n t h ' s   f o l d e r   i f   i t   d o e s n ' t   e x i s t r  v w v Z   U u x y���� x H   U ` z z l  U _ {���� { I  U _�� |��
�� .coredoexbool        obj  | n   U [ } ~ } 4   V [�� 
�� 
cfol  l  W Z ����� � c   W Z � � � o   W X���� 0 current_month   � m   X Y��
�� 
TEXT��  ��   ~ o   U V���� 0 year_folder  ��  ��  ��   y I  c q���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   e f��
�� 
cfol � �� � �
�� 
insh � o   g h���� 0 year_folder   � �� ���
�� 
prdt � K   i m � � �� ���
�� 
pnam � o   j k���� 0 current_month  ��  ��  ��  ��   w  � � � r   v ~ � � � n   v | � � � 4   w |�� �
�� 
cfol � l  x { ����� � c   x { � � � o   x y���� 0 current_month   � m   y z��
�� 
TEXT��  ��   � o   v w���� 0 year_folder   � l      ����� � o      ���� 0 month_folder  ��  ��   �  � � � l   �� � ���   � 0 * Create today's folder if it doesn't exist    � � � � T   C r e a t e   t o d a y ' s   f o l d e r   i f   i t   d o e s n ' t   e x i s t �  � � � Z    � � ����� � H    � � � l   � ����� � I   ��� ��
�� .coredoexbool        obj  � n    � � � � 4   � ��~ �
�~ 
cfol � l  � � ��}�| � c   � � � � � o   � ��{�{ 0 current_day   � m   � ��z
�z 
TEXT�}  �|   � o    ��y�y 0 month_folder  �  ��  ��   � I  � ��x�w �
�x .corecrel****      � null�w   � �v � �
�v 
kocl � m   � ��u
�u 
cfol � �t � �
�t 
insh � o   � ��s�s 0 month_folder   � �r ��q
�r 
prdt � K   � � � � �p ��o
�p 
pnam � o   � ��n�n 0 current_day  �o  �q  ��  ��   �  � � � r   � � � � � n   � � � � � 4   � ��m �
�m 
cfol � l  � � ��l�k � c   � � � � � o   � ��j�j 0 current_day   � m   � ��i
�i 
TEXT�l  �k   � o   � ��h�h 0 month_folder   � l      ��g�f � o      �e�e 0 
day_folder  �g  �f   �  � � � l  � ��d � ��d   � ' ! Prepare to move downloaded files    � � � � B   P r e p a r e   t o   m o v e   d o w n l o a d e d   f i l e s �  � � � r   � � � � � o   � ��c�c 0 
day_folder   � l      ��b�a � o      �`�` 0 target_folder  �b  �a   �  � � � l  � ��_ � ��_   �   Move downloaded items    � � � � ,   M o v e   d o w n l o a d e d   i t e m s �  � � � Y   �$ ��^ � ��] � k   � � �  � � � r   � � � � � n   � � � � � 4   � ��\ �
�\ 
cobj � o   � ��[�[ 0 i   � o   � ��Z�Z 0 added_items   � o      �Y�Y 0 	this_item   �  � � � r   � � � � � l  � � ��X�W � I  � ��V ��U
�V .sysonfo4asfe        file � o   � ��T�T 0 	this_item  �U  �X  �W   � l      ��S�R � o      �Q�Q 0 	item_info  �S  �R   �  � � � Z   � � � ��P�O � l  � � ��N�M � H   � � � � E  � � � � � l  � � ��L�K � o   � ��J�J 0 silent_extensions_list  �L  �K   � l  � � ��I�H � n   � � � � � 1   � ��G
�G 
nmxt � l  � � ��F�E � o   � ��D�D 0 	item_info  �F  �E  �I  �H  �N  �M   � r   � � � � � m   � ��C
�C boovtrue � l      ��B�A � o      �@�@ 0 flag  �B  �A  �P  �O   �  � � � I  � ��? � �
�? .coremoveobj        obj  � o   � ��>�> 0 	this_item   � �= � �
�= 
insh � o   � ��<�< 0 target_folder   � �; ��:
�; 
alrp � m   � ��9
�9 boovtrue�:   �  � � � r   � � � � c   � � � � b   � � � � b   � � � � b   � � �  � b   � � m   � � �  M o v e d   f i l e   ' l  � ��8�7 c   � � l  � ��6�5 n   � �	
	 1   � ��4
�4 
pnam
 l  � ��3�2 o   � ��1�1 0 	item_info  �3  �2  �6  �5   m   � ��0
�0 
TEXT�8  �7    m   � � �  '   t o   f o l d e r   ' � l  ��/�. l  ��-�, n   � 1  �+
�+ 
psxp l  ��*�) c   � o   � �(�( 0 target_folder   m   �'
�' 
TEXT�*  �)  �-  �,  �/  �.   � m  
 �  ' . � m  �&
�& 
TEXT � l     �%�$ o      �#�# 0 message  �%  �$   �  n  I  �"�!�" 0 growl_message    m   �   $ D o w n l o a d   O r g a n i z e r !� ! o  �� 0 message  �   �!    f   "#" l �$%�  $   Highlight last item   % �&& (   H i g h l i g h t   l a s t   i t e m# '�' I �(�
� .miscslctnull���    obj ( o  �� 0 	this_item  �  �  �^ 0 i   � m   � ���  � n   � �)*) m   � ��
� 
nmbr* n  � �+,+ 2  � ��
� 
cobj, o   � ��� 0 added_items  �]   � -�- Z  %:./��. l %(0��0 = %(121 l %&3��3 o  %&�� 0 flag  �  �  2 m  &'�
� boovtrue�  �  / k  +644 565 l ++�78�  7   Open today's folder		   8 �99 ,   O p e n   t o d a y ' s   f o l d e r 	 	6 :;: I +0�<�

� .aevtodocnull  �    alis< o  +,�	�	 0 target_folder  �
  ; =>= l 11�?@�  ?   Set focus on Finder   @ �AA (   S e t   f o c u s   o n   F i n d e r> B�B I 16���
� .miscactvnull��� ��� obj �  �  �  �  �  �   J m   ' (CC�                                                                                  MACS  alis    \  Slash                      �"(�H+   ��?
Finder.app                                                      ݁�Ƙv        ����  	                CoreServices    �"x      ƘK�     ��? ��� ���  ,Slash:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    S l a s h  &System/Library/CoreServices/Finder.app  / ��   H DED n <GFGF I  =G�H�� 0 growl_message  H IJI m  =@KK �LL $ D o w n l o a d   O r g a n i z e rJ M�M m  @CNN �OO , D o n e   o r g a n i z i n g   f i l e s .�  �  G  f  <=E P� P l  HH��QR��  Q"
	-- Uncomment this to debug		on error error_message number error_number		if the error_number is not -128 then			tell application "Finder"				activate				display dialog error_message & ": " & error_number buttons {"OK"} default button 1 giving up after 20			end tell		end if
		   R �SS8 
 	 - -   U n c o m m e n t   t h i s   t o   d e b u g 	  	 o n   e r r o r   e r r o r _ m e s s a g e   n u m b e r   e r r o r _ n u m b e r  	 	 i f   t h e   e r r o r _ n u m b e r   i s   n o t   - 1 2 8   t h e n  	 	 	 t e l l   a p p l i c a t i o n   " F i n d e r "  	 	 	 	 a c t i v a t e  	 	 	 	 d i s p l a y   d i a l o g   e r r o r _ m e s s a g e   &   " :   "   &   e r r o r _ n u m b e r   b u t t o n s   { " O K " }   d e f a u l t   b u t t o n   1   g i v i n g   u p   a f t e r   2 0  	 	 	 e n d   t e l l  	 	 e n d   i f 
 	 	�    " R      ������
�� .ascrerr ****      � ****��  ��  ��    T��T i   	 UVU I      ��W���� 0 growl_message  W XYX o      ���� 	0 title  Y Z��Z o      ���� 0 body  ��  ��  V Q     H[\��[ O    ?]^] k    >__ `a` r    bcb c    
ded o    ���� 	0 title  e m    	��
�� 
TEXTc l     f����f o      ���� 0 	msg_title  ��  ��  a ghg r    iji c    klk o    ���� 0 body  l m    ��
�� 
TEXTj l     m����m o      ���� 0 msg_body  ��  ��  h non r    pqp J    rr s��s m    tt �uu $ D o w n l o a d   O r g a n i z e r��  q l     v����v o      ���� ,0 allnotificationslist allNotificationsList��  ��  o wxw r    yzy J    {{ |��| m    }} �~~ $ D o w n l o a d   O r g a n i z e r��  z l     ���� o      ���� 40 enablednotificationslist enabledNotificationsList��  ��  x ��� I   *�����
�� .registernull��� ��� null��  � ����
�� 
appl� m   ! "�� ��� H G r o w l   D o w n l o a d   O r g a n i z e r   A p p l e S c r i p t� ����
�� 
anot� o   # $���� ,0 allnotificationslist allNotificationsList� �����
�� 
dnot� o   % &���� 40 enablednotificationslist enabledNotificationsList��  � ���� I  + >�����
�� .notifygrnull��� ��� null��  � ����
�� 
name� m   - .�� ��� $ D o w n l o a d   O r g a n i z e r� ����
�� 
titl� o   / 0���� 0 	msg_title  � ����
�� 
desc� o   1 2���� 0 msg_body  � ����
�� 
appl� m   3 4�� ��� H G r o w l   D o w n l o a d   O r g a n i z e r   A p p l e S c r i p t� �����
�� 
iapp� m   5 8�� ��� " S c r i p t   E d i t o r . a p p��  ��  ^ m    ��                                                                                  GRRR  alis    �  Slash                      �"(�H+   ��GrowlHelperApp.app                                              ����R�        ����  	                	Resources     �"x      ��6p     �� �� �� �/� ���  RSlash:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app  &  G r o w l H e l p e r A p p . a p p    S l a s h  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  \ R      ������
�� .ascrerr ****      � ****��  ��  ��  ��       ��������  � �������� 0 silent_extensions_list  
�� .facofgetnull���     alis�� 0 growl_message  � ����� �   � �� ��������
�� .facofgetnull���     alis�� 0 this_folder  �� ������
�� 
flst�� 0 added_items  ��  � ������������������������������ 0 this_folder  �� 0 added_items  �� 0 current_year  �� 0 current_month  �� 0 current_day  �� 0 year_folder  �� 0 month_folder  �� 0 
day_folder  �� 0 target_folder  �� 0 i  �� 0 	this_item  �� 0 	item_info  �� 0 flag  �� 0 message  � #����������C������������������������������������������KN����
�� .misccurdldt    ��� null
�� 
year
�� 
long
�� 
mnth
�� 
day 
�� 
cfol
�� 
TEXT
�� .coredoexbool        obj 
�� 
kocl
�� 
insh
�� 
prdt
�� 
pnam�� 
�� .corecrel****      � null
�� 
cobj
�� 
nmbr
�� .sysonfo4asfe        file
�� 
nmxt
�� 
alrp�� 
�� .coremoveobj        obj 
�� 
psxp�� 0 growl_message  
�� .miscslctnull���    obj 
�� .aevtodocnull  �    alis
�� .miscactvnull��� ��� obj ��  ��  ��SK*j  �,�&E�O*j  �,�&E�O*j  �,�&E�O����&/j  *�����l� Y hO���&/E�O���&/j  *�����l� Y hO���&/E�O���&/j  *�����l� Y hO���&/E�O�E�O vk��-a ,Ekh 	��/E�O�j E�Ob   �a , eE�Y hO��a ea  Oa ��,�&%a %��&a ,%a %�&E�O)a �l+ O�j [OY��O�e  �j O*j Y hUO)a a  l+ OPW X ! "h� ��V���������� 0 growl_message  �� ����� �  ������ 	0 title  �� 0 body  ��  � �������������� 	0 title  �� 0 body  �� 0 	msg_title  �� 0 msg_body  �� ,0 allnotificationslist allNotificationsList�� 40 enablednotificationslist enabledNotificationsList� ���t}������������������������~�}�|
�� 
TEXT
�� 
appl
�� 
anot
�� 
dnot�� 
�� .registernull��� ��� null
�� 
name
�� 
titl
�� 
desc
�� 
iapp� 

�~ .notifygrnull��� ��� null�}  �|  �� I A� 9��&E�O��&E�O�kvE�O�kvE�O*����� 	O*��������a a  UW X  hascr  ��ޭ
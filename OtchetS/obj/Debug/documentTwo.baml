   M S B A M L   `   `   `  ����B  >OtchetS, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:OtchetSOtchetS  5   	       OtchetS.documentTwo   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:OtchetS     5   	     � WindowStartupLocation$  CenterScreen=�5   	    � WindowStyle$
 None=�5	   	    � Title$ document��5
   	   $	��680��6   $	��600��6'    � 
ResizeMode$ NoResize=�63   .��5      � .+�5   
   �� -   5         ��Name$ btnClose��5      $��0q�5      $��X��5      
�������$��12(�5      $��
Montserrat)�5       � Cursor$
 Hand��5      $��566,3,0,651q�5   4    J� RenderTransformOrigin$ 0.5,0.5&�6I   z�5      V� 5      .~�5      ��  �� ScaleX$ -1Q�6%   �� 5      �� 5      T� 5      5      ��5      �� 5       �� 
TargetType" ��6   .�5      �� 	 �� Property	 � ��
 �� Value

 �  ��63    �� Triggers 5      P� 5        P� Property �@J�IsMouseOver P� Value . . �5!      �� 	 � ��

 �  ��6;   5"      5$      ��5&      �� 5'       �� 
TargetType" ��6"   .R�5(      �� $��18��6   $��18��6(    �� CornerRadius$ 9��5)   )   #��z��5*   )   ._�5+      �� $��Center=�6+   $��Center=�5,   7   5-      5.      50      �� 51   
   -   5        $��pechat��51   "   $��Печать��6   $
��Left=�6E   $��529,639,0,0q�6`   $	��Top=�6u   $��31��6�   $��61��6�   $
��Bold"�6�   � 52   
   -   5         �Name$ print��52      .+�53      �� $��
ОТЧЕТ��6   $��Center=�6$   $��0,78,0,0q�6A   $	��Top=�6S   $
��Bold"�6k   $��20(�6}   �� 54      -   5         ��Name$
 name��54      $O��IРаспределение компьютеров по кабинетам��6"   $��Center=�6S   $��	0,105,0,0q�6p   $	��Top=�6�   $��Normal"�6�   $��16(�6�   �� 55      $��	Дата:��6   $
��Left=�6$   $��
10,569,0,0q�6?   $	��Top=�6S   $��Normal"�6k   $��16(�6   �� 56      -   5        $
 data��56      $�� ��6"   $
��Left=�6-   $��
57,569,0,0q�6H   $	��Top=�6\   $��Normal"�6t   $��16(�6�   $��Normal$�6�   �� 57      $��1��6   
���   �$��60,598,457,80q�67   �� 58      $��1��6   
���   �$��389,599,136,80q�67   �� 59      $��роспись��6   $
��Left=�6&   $��399,592,0,0q�6A   $	��Top=�6V   $��Normal"�6n   $��12(�6�   $��30��6�   �� 5:      $��/      М.П.��6   $
��Left=�6*   $��464,576,0,0q�6E   $	��Top=�6Z   $��Normal"�6r   $��16(�6�   &   System.Windows.Controls.DataGrid  5;      -   5          Name$ PDFkabinets��5;      $��0,162,-20,142q�6.      AutoGenerateColumns .  $��Times New Roman)�6a   $��16(�6~   $ 0.5,0.5&�6�   
�������   HeadersVisibility$	 All=�6�   ��6�   Z�    HorizontalGridLinesBrush 6�   Z�    Columns 5?      0  *System.Windows.Controls.DataGridTextColumn  5@      ,  &System.Windows.Controls.DataGridColumn   
IsReadOnly .    Header$ Кабинет��6;      Width5  /System.Windows.Controls.DataGridLengthConverter$	 100 6L   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6X   �� *	Kabinet+  5A       . $5 /Инвентаризационный Номер��6;   $ * 6]    6g   �� *InventNomer+  5B       . $ Наименование��6;   $ * 6Q    6[   �� *Name+5I      5K      5M      5N      
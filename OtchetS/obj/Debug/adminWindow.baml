   M S B A M L   `   `   `  ����B  >OtchetS, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:OtchetSOtchetS  5   	       OtchetS.adminWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:OtchetS     5   	     � Title$  adminWindow��5   	   $	��450��6   $	��800��6*    � WindowStartupLocation$ CenterScreen=�66   .��5	      � .+�5
   
   �� -   5         ��Name$ 
vidOtcheta��5
      $��10,23,541,360q�6'    J� RenderTransformOrigin$ 0.5,0.5&�6>   z�5      V� 5      .~�5      ��  �� ScaleX$ 1Q�6%   �� 5      �� 5      T� 5      5      .@�5      �� $)��#Паспорт компьютера��6   �� 5      $8��2Распределение по кабинетам��6   5      � 5   
   -   5         �Name$ passportPage��5   &   $y�	Collapsed=�6   $��0,79,0,0q�6<    � RowDefinitions 5      �� 5      $	��11* �6    �� 5      $
��687* �6    .+�5      &   System.Windows.Controls.DataGrid  -   5          Name$ PDFcomputers��5      $��10,10,10,97q�6.      AutoGenerateColumns .  $��Times New Roman)�6_   $��16(�6|   $ 0.5,0.5&�6�   $��1��6�   	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   
IsReadOnly
 .    Header$5 /Инвентаризационный Номер��6;      Width5  /System.Windows.Controls.DataGridLengthConverter$	 220 6]   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6i   �� *InventNomer+  5       
 . $ Наименование��6;   $	 130 6Q    6]   �� *Name+  5!      
 . $ Кабинет��6;   $	 130 6L    6X   �� *	Kabinet+  5"      
 . $ Монитор��6;   $	 135 6L    6X   �� *	Monitor+  5#      
 . $ ОЗУ��6;   $ * 6H    6S   �� *RAM+5(      �� 5)      -   5         ��Name$ pdfBut��5)      $��1q�6%   $	��PDF��5*      
���   �$��18(�5,      $��Times New Roman)�5-       � Cursor$
 Hand��5.      $��10,285,660,10q�6+   $ 0.5,0.5&�6C   $��1��6z   ���	#FF020000��6�   Z� z�5/      V� 50      .~�51      ��  �� ScaleY$ 1Q�6)   �� 52      �� 53      T� 54      55      57      59      � 5<   
   -   5        $ kabinetsPage��5<   $   $y�Visible=�6   $��0,79,0,0q�6:    5=      �� 5>      $	��11* �6    �� 5?      $
��687* �6    .+�5A        -   5        $ PDFkabinets��5A      $��10,10,10,97q�6-    .  $��Times New Roman)�6^   $��16(�6{   $ 0.5,0.5&�6�   $��1��6�   	 5C        5D      
 . $ Кабинет��6;   $ * 6L    6V   �� *	Kabinet+  5E      
 . $5 /Инвентаризационный Номер��6;   $ * 6]    6g   �� *InventNomer+  5F      
 . $ Наименование��6;   $ * 6Q    6[   �� *Name+5M      �� 5N      -   5        $ 	pdfKabBut��5N      $��1q�6(   $	��PDF��5O      
���   �$��18(�5Q      $��Times New Roman)�5R      $
 Hand��5S      $��10,285,660,10q�6+   $ 0.5,0.5&�6C   $��1��6{   ���	#FF020000��6�   Z� z�5T      V� 5U      .~�5V      �� $ 1Q�6)   �� 5W      �� 5X      T� 5Y      5Z      5\      5^      5_      5`      
   M S B A M L   `   `   `  ����L  HDebugger.AddIn, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=nullS.clr-namespace:Debugger.AddIn.Visualizers.Graph Debugger.AddIn.Visualizers.Graph  5      Y1clr-namespace:Debugger.AddIn.Visualizers.Controls#Debugger.AddIn.Visualizers.Controls  5      9    3Debugger.AddIn.Visualizers.Graph.ObjectGraphControl   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      =dv.clr-namespace:Debugger.AddIn.Visualizers.Graph     5      Fcontrols1clr-namespace:Debugger.AddIn.Visualizers.Controls     5      .��5      �   � RowDefinitions  5   
   �� 5      $
��Auto �6   6,   �� 5	      6   .+�5   
   �� $��0��6   $��0��6"    �� Orientation$ 
Horizontal=�62   
�������$	��Top=�6b    � 	Resources 5       �� 
TargetType �� Property �� Value��%�   '��       '�� M     �� 5      " ��6   .�5      ��  � ��$ 0 0 8 0q�6/   5      �� 5      " ��6   .�5      ��  � ��$ 8 0 0 0q�6/   �� 5       � ��$ 8 0 8 0q�60   5      5      .+�5      �� $��3q�6    �� Padding$ 3q�6    ._�5      �� $ Vertical=�6   .+�5      �� $ 
Horizontal=�6   .+�5      �� $��Center=�6    Expression:6H   �� 5      -   5        $��txtExpression��5      $��Center=�63   $	��100��6N   6\   �� 5      $��12 0 6 0q�6   $��Center=�6,   	Layout:6P   �� 5      -   5        $��cmbLayoutDirection��5      $	��120��69    �� SelectedValuePath$ 	EnumValue��6�    �� DisplayMemberPath$ DisplayValue��6�   ��6E   �� 	 �� Path$	 
EnumValues�
 �� SelectedValue
 6m   �� $	 SelectedEnumValue�6�   �� 5      $��12 0 6 0q�6   $��Center=�6/   Zoom:6Q   �� 5      -   5         ��Name$ 
zoomSlider��5      $	��100��6+    � Minimum$	 0.5Q�67    � Maximum$ 1Q�6E    � Value$ 1Q�6Q   5       �� 5!      -   5        $��pnlError��5!   0   $ 
Horizontal=�6   $y�	Collapsed=�6@   $��0 6 0 0q�6W   .+�5"      �� -   5        $��lblError��5"   1   $��0 0 4 0q�6    $��Italic$�6A   Error:6]   �� 5#      -   5        $��txtError��5#   1   $��0 0 0 0q�6    $��Italic$�6A   6V   5$      5%      5&      5'      :   4Debugger.AddIn.Visualizers.Controls.DragScrollViewer  5)      -   5          Name$ scroller��5)   !   :   4Debugger.AddIn.Visualizers.Controls.DragScrollViewer   PreviewMouseWheel$ Canvas_MouseWheel��6t   $��0 4 0 0q�63   $��1��6D   $��0��6Q   
�������$
��Auto=�5*      $
��Auto=�6,   .��5+      �� -   5         ��Name$ canvas��5+      $��4q�6"   $
��Left=�5,   	   $	��Top=�6$    � LayoutTransform 5-   	   �� 5.       �� ScaleX 6   �� $	 Value� �� ElementName$ 
zoomSlider�� �� ScaleY 5/      �� $	 Value�$ 
zoomSlider��51   	   52      53      54      
   M S B A M L   `   `   `  ���� a  ]PresentationFramework.Aero, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35gJclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.AeroMicrosoft.Windows.Themes  L HDebugger.AddIn, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Debugger.AddIn.VisualizersDebugger.AddIn.Visualizers I   CDebugger.AddIn.Visualizers.Graph.Drawing.PositionedGraphNodeControl   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     [aeroJclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero     :local(clr-namespace:Debugger.AddIn.Visualizers       � 	Resources   �� MergedDictionaries �� Source��  �� $ NodeControlResources.xaml?�%    .��5   /Microsoft.Windows.Themes.SystemDropShadowChrome  ._���  �� Orientation$ Vertical=�.+��� -    ��Name$ typeNameHeaderBorder�����#ddeeff$��20��$	��1,0q�$��1,1,1,0q�
�������$��Stretch=� �� Padding$ 1q�._��� ���� *
TypeName+�� -   $��listView��$
��Auto=�$	��200��$	��300������  �� 
StartPoint$	 0,0&� �� EndPoint$	 0,1&�.���  � Color$ #ddeeff��	 � Offset$		 0.0Q�� $ White��$		 0.4Q�� $ White��$		 0.8Q����� 
 �� 
TargetType"
 ��.�-   ��  �� Property � �� �� Value
 ���� ��  � ��$ 0q���  � ��$ 1q���  � |� .   �� Triggers ��  �� Binding �� *
IsNested+ �� Value True.a���  � �� �#666666��  � ��$ Italic$�P�  P� Property �@J�IsMouseOver P� Value . . ���  � ��
 ����� �� View �� ! �� ColumnHeaderContainerStyle �� .���  � ��$ 1��P��� $
��Plus�� �� Width$ 20��-   columnExpander�� �� CellTemplate �� .R��� $��0 2 0 0q�.+�d�  d�Name$ Expander��-   $
��-6 0q�$��0q� d� 	IsChecked �� *
IsExpanded+d� $ PropertyExpander��-   $
��-6 0q�$��0q� �� *IsPropertyExpanded+ �� Triggers �� $ False�� ��  �� Path$ HasChildren�.a���  �� 
TargetName$ Expander�� � y�$ 	Collapsed=��� $ False�� �� $ ShowExpandPropertyButton�.a��� $ PropertyExpander�� � y�$ 	Collapsed=��� $
��Icon��$ 10��-   columnMemberIcon�� �� .R��� $��10��$��10��$
��-6 0q����� *
MemberIcon+�� $
��Name��$ 60��-   
columnName�� �� .R��� $ 
Horizontal=�.+��� ���� *Name+���� *IsPropertyExpanded+   BoolToBoldConverter �� 	Converter# [  �� $��Value��$ 60��  valueColumnTemplate# [ -	   
columnText��
   M S B A M L   `   `   `  ���� D  @GameHaker, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:GameHaker	GameHaker      GameHaker.App   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     )localclr-namespace:GameHaker       �� 	Resources     ScrollBarLineButton �� 
TargetType �� Property �� Value �� 
TargetType ��Name �� CornerRadius'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState	   
Storyboard
 �� 
TargetName �� TargetProperty8  2System.Windows.Media.Animation.EasingColorKeyFrame �� KeyTime �� Value F�Name �� RelativeSource �� Color  ScrollBarPageButton  	BackColor  
ColorThumb  ScrollBarThumb J� SnapsToDevicePixels  VerticalScrollBar � RowDefinitions K� ZIndex ]�Name ]� DecreaseRepeatButton ]� Thumb ]� IncreaseRepeatButton  HorizontalScrollBar � ColumnDefinitions �� 
StartPoint �� EndPoint � Color � Offset �� Triggers P� Property P� Value  LeftScrollViewer  ��Name! �� VerticalOffset" � Value# �� ScrollableHeight$ � Maximum% �� ViewportHeight& �� ViewportSize*' �� #ComputedVerticalScrollBarVisibility( �� Orientation) �� HorizontalOffset* �� ScrollableWidth+ �� ViewportWidth,, �� %ComputedHorizontalScrollBarVisibility��%  &	        &	     &	 �    &	 �    &	 �    &	     7  7  7  &	 �    7  7  7  '�� $    7  7  &	 _	    �� " ��.���  �@J�SnapsToDevicePixels . ��  �@�OverridesDefaultStyle . ��  � |� .  ��  � �� �� " ��.R��� $ Border��$��0q�$ 2��$��1q�
���  ��$y�Hidden=�$��0��$��0����Z�    CommonStates��.   
Normal��  	MouseOver��  Pressed��.	 �� .���� $
 Border��$c ](Panel.Background).                     (GradientBrush.GradientStops)[1].(GradientStop.Color)�.g�  $ 0��$ 	#FF211AA9��  Disabled��.	 �� .���� $
 Arrow��$? 9(Shape.Fill).                     (SolidColorBrush.Color)�.g�  $ 0��$ 	#FF888888��._�F� $ Arrow��$��Center=�$��Center=�$��76��$	��422��$y�Hidden=����� *	Content+ �� *TemplatedParent+���� $ 	#FF7CD300���� " ��.���  �@J�SnapsToDevicePixels . ��  �@�OverridesDefaultStyle . ��  � �� .  ��  � |� .  ��  � �� �� " ��.R��� ���	#FFD67D7D$��0��$��0��$��3����	#5EF0F0F0����	White���� " n�.���  �@J�SnapsToDevicePixels . ��  �@�OverridesDefaultStyle . ��  � �� .  ��  � |� .  ��  � �� �� " n�.R��� $ 0��$��0q�$
��Auto��$��Stretch=� .  $��0q����� # �  ��  � �� Z� ��  � ��
 �   ��� " ��.R�� $��10��$��Right=�$��0,1,1,1q� �� $��5���� $��0.00001* ��� $��5��.+��� $��3��$ 0��$��10��$
��Auto��$ -3������ # �  ]� $ 
PART_Track��$��1����. $��0q� �� 8��  $��ScrollBar.PageUpCommand�� n� 8�� $��1,0,1,0q�
���   ���Z� ��Z�  �� 8�� $��ScrollBar.PageDownCommand���� " ��.R�� $��10��$��Bottom=�$��0q� �� $��5���� $��0.00001* ��� $��5��.+��� $��3��$ 0������ # �  ]� $ 
PART_Track��$��1����.  $	��0,1q� �� 8��  $��ScrollBar.PageLeftCommand�� n� 8�� $
��Auto��$
��Auto������ $	 0,0&�$	 1,0&���� � $ 	#FFCCCCCC��$	 0.0Q�� $ 	#FF444444��$	 1.0Q� �� 8�� $ ��ScrollBar.PageRightCommand���� " ��.���  �@J�SnapsToDevicePixels . ��  �@�OverridesDefaultStyle .  P�  �@��Orientation$ 
Horizontal=�. ���  � ��$
 Auto����  � ��$ 30����  � ��8   P�  �@��Orientation$ Vertical=�. ���  � ��$ 18����  � ��$
 Auto����  � ��8  �� " ��.���  �@�OverridesDefaultStyle . ��  � �� �� " ��.R�� #��z�� �� $��0* ��� $
��208* �$��10���� $��0 �$��10�� �� �� $��0 �.+��� $��1��$��1,1,1,1q�$��2��#��z��._��� �� $  PART_VerticalScrollBar��#" z! #$ z# #& z% #y�z' $��2��$
��Left=����	#B3FFFFFF
���   ����	#99FFFFFF$��10���� $  PART_HorizontalScrollBar��$( 
Horizontal=�$��1��$��1��#" z) #$ z* #& z+ #y�z, $��0q�$
��Auto��$��1���� $��10��
�������$��1��$��2��$��Right=�$��10��$��Bottom=�
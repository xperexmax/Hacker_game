   M S B A M L   `   `   `  ���� D  @GameHaker, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:GameHaker	GameHaker  C&clr-namespace:GameHaker.Resource.pagesGameHaker.Resource.pages  G(clr-namespace:GameHaker.Resource.controlGameHaker.Resource.control      GameHaker.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     )localclr-namespace:GameHaker     8pages&clr-namespace:GameHaker.Resource.pages     c _Microsoft.Expression.Effects, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35h dMicrosoft.Expression.Interactions, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35?ee4http://schemas.microsoft.com/expression/2010/effects   c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  Bei9http://schemas.microsoft.com/expression/2010/interactions  6control(clr-namespace:GameHaker.Resource.control  -     � Title$  
MainWindow��$	��451��$	��805�� � WindowState$ 	Maximized=� � 
ResizeMode$ NoResize=� � WindowStyle$
 None=� � 	Resources    	OnLoaded1 g� AutoReverse g� RepeatBehavior �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame	 O� KeyTime
 O� Value   EasingFunction0  *System.Windows.Media.Animation.QuinticEase7  1System.Windows.Media.Animation.EasingFunctionBase   
EasingMode  OnMouseEnter1  OnMouseLeave1��%5  &	        &	     &	     ��  . $ Forever��.��U� $7 1(UIElement.Effect).(ee:BloomEffect.BaseIntensity)�$ image��.\�  $	 0��$
 0Q�   $ EaseIn=�  $	 0:0:2.8��$	
 0.6Q�   $ EaseIn=�U� $8 2(UIElement.Effect).(ee:BloomEffect.BaseSaturation)�$ image��.\�  $	 0��$
 0Q�   $ EaseIn=�U� $8 2(UIElement.Effect).(ee:BloomEffect.BloomIntensity)�$ image��.\�  $	 0��$
 1Q�   $ EaseIn=�  $	 0:0:2.8��$	
 1.3Q�   $ EaseIn=�U� $9 3(UIElement.Effect).(ee:BloomEffect.BloomSaturation)�$ image��.\�  $	 0��$

 1.45Q�   $ EaseIn=�  $	 0:0:2.8��$

 0.78Q�   $ EaseIn=�U� $3 -(UIElement.Effect).(ee:BloomEffect.Threshold)�$ image��.\�  $	 0��$
 0Q�   $ EaseIn=��� ��  � Triggers :�  :� RoutedEvent$ FrameworkElement.Loaded�� :� 
SourceName$
 grid��.[��� -    ��Name$ OnLoaded1_BeginStoryboard��#��[  .��� -    �Name$
 grid�����	#FF1E4F20.+��� -    ��Name$ image��$��0q�$.��(/GameHaker;component/Resource/img/dd.png�� J� Effect 4  .Microsoft.Expression.Media.Effects.BloomEffect  �� -    ��Name$
 test��$��Button��$
��Left=�$��432,102,0,0q�$	��Top=�$��75��$��20��� -   $ 	MainPanel��$��0q�.+�(   "GameHaker.Resource.control.AppFrom  $
��Left=�$	��147��$��
159,75,0,0q�$	��Top=�$	��329��� -   $ 	TaskPanel�����	#6631E61F$��Bottom=�$��40��.+��� -    ��Name$ TaskPanelContent��$��40,0,0,0q� �� Orientation$ 
Horizontal=�.+�   GameHaker.TaskPanelBlock  -	     Name$ testblock_Copy��   GameHaker.TaskPanelBlock   Loaded$ TaskPanelBlock_Loaded��$
��Left=�$��40��  -
   $ 	testblock��$ TaskPanelBlock_Loaded��$
��Left=�$��40��   
NotifColor$ White��   Image ��  �� ImageSource$8 2/GameHaker;component/Resource/img/DevelNextIco.png��  -   $ testblock_Copy1��$ TaskPanelBlock_Loaded��$
��Left=�$��40��$	 Red�� �� $@ :/GameHaker;component/Resource/img/icons8--fsociety-100.png��  -   $ MenuPysk��$��	0,0,758,0q�$
��Left=�$��40���� $
��Left=�$��39,0,0,0q�$��0��$��1��
�������
   M S B A M L   `   `   `  ����D  @GameHaker, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:GameHaker	GameHaker  5   	   C&clr-namespace:GameHaker.Resource.pagesGameHaker.Resource.pages  5   	   G(clr-namespace:GameHaker.Resource.controlGameHaker.Resource.control  6      GameHaker.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:GameHaker     5   	   8pages&clr-namespace:GameHaker.Resource.pages     5   	   c _Microsoft.Expression.Effects, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35h dMicrosoft.Expression.Interactions, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35?ee4http://schemas.microsoft.com/expression/2010/effects   6>   c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  6~   Bei9http://schemas.microsoft.com/expression/2010/interactions  6�   6control(clr-namespace:GameHaker.Resource.control  6  -   5          � Title$  
MainWindow��5	   	   $	��451��6   $	��805��6)    � WindowState$ 	Maximized=�6R    � 
ResizeMode$ NoResize=�6�    � WindowStyle$
 None=�6�    � 	Resources 5
         	OnLoaded1 g� AutoReverse g� RepeatBehavior �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame	 O� KeyTime
 O� Value   EasingFunction0  *System.Windows.Media.Animation.QuinticEase7  1System.Windows.Media.Animation.EasingFunctionBase   
EasingMode  OnMouseEnter1  OnMouseLeave1��%�  &	        &	 H    &	 [    �� 5   
    . $ Forever��6:   .��5      U� $7 1(UIElement.Effect).(ee:BloomEffect.BaseIntensity)�6,   $ image��6z   .\�5        $	 0��6'   $
 0Q�63    5        5      $ EaseIn=�6&   5        5      $	 0:0:2.8��6'   $	
 0.6Q�69    5        5      $ EaseIn=�6&   5      5      U� 5      $8 2(UIElement.Effect).(ee:BloomEffect.BaseSaturation)�6,   $ image��6{   .\�5        $	 0��6'   $
 0Q�63    5        5      $ EaseIn=�6&   5      5      U� 5      $8 2(UIElement.Effect).(ee:BloomEffect.BloomIntensity)�6,   $ image��6{   .\�5         $	 0��6'   $
 1Q�63    5!        5"      $ EaseIn=�6&   5$        5%      $	 0:0:2.8��6'   $	
 1.3Q�69    5&        5'      $ EaseIn=�6&   5)      5*      U� 5+      $9 3(UIElement.Effect).(ee:BloomEffect.BloomSaturation)�6,   $ image��6|   .\�5,        $	 0��6'   $

 1.45Q�63    5-        5.      $ EaseIn=�6&   50        51      $	 0:0:2.8��6'   $

 0.78Q�69    52        53      $ EaseIn=�6&   55      56      U� 57      $3 -(UIElement.Effect).(ee:BloomEffect.Threshold)�6,   $ image��6v   .\�58        $	 0��6'   $
 0Q�63    59        5:      $ EaseIn=�6&   5<      5=      5>      �� 5?   
   6   �� 5@   
   6   5A       � Triggers 5B      :� 5C   
    :� RoutedEvent$ FrameworkElement.Loaded��6    :� 
SourceName$
 grid��6=   .[�5D      �� -   5         ��Name$ OnLoaded1_BeginStoryboard��5D      #��[ 6A   5E      .��5G      � -   5         �Name$
 grid��5G      ���	#FF1E4F20.+�5H   
   �� -   5         ��Name$ image��5H      $��0q�6   $.��(/GameHaker;component/Resource/img/dd.png��6*    J� Effect 5I      4  .Microsoft.Expression.Media.Effects.BloomEffect  5J      5L      �� 5M   
   -   5         ��Name$
 test��5M      $��Button��6   $
��Left=�60   $��432,102,0,0q�6K   $	��Top=�6`   $��75��6x   $��20��6�   6�   � 5N   
   -   5        $ 	MainPanel��5N      $��0q�6"   .+�5O      (   "GameHaker.Resource.control.AppForm  (   "GameHaker.Resource.control.AppForm   Loaded$ AppForm_Loaded��6|   $
��Left=�6   $	��147��69   $��10,0,0,0q�6F   $	��Top=�6X   $	��390��6p    J� RenderTransformOrigin$ 0.5,0.5&�6�     5P      -   5          Name$
 form��5P      $ AppForm_Loaded��6�   $
��Left=�6,   $	��132��6G   $��
304,78,0,0q�6T   $	��Top=�6h   $	��270��6�   $ 0.5,0.5&�6�   �� 5Q      -   5        $��Button��5Q      $
��Left=�6&   $��38��6A   $��574,232,0,0q�6M   $	��Top=�6b   $��72��6z   6�   �� 5R      -	   5        $��Button��5R      $
��Left=�6&   $��38��6A   $��409,258,0,0q�6M   $	��Top=�6b   $��72��6z   6�   5S      � 5T   
   -
   5        $ 	TaskPanel��5T      ���	#6631E61F$��Bottom=�69   $��40��6T   .+�5U      �� -   5         ��Name$ TaskPanelContent��5U      $��40,0,0,0q�63    �� Orientation$ 
Horizontal=�6E   .+�5V         GameHaker.TaskPanelBlock  -   5          Name$ testblock_Copy��5V   '      GameHaker.TaskPanelBlock   Loaded$ TaskPanelBlock_Loaded��6?   $
��Left=�6^   $��40��6y     5W      -   5        $ 	testblock��5W   '   $ TaskPanelBlock_Loaded��6:   $
��Left=�6Y   $��40��6t      
NotifColor$ White��6      Image 5X      �� 5Y       �� ImageSource$8 2/GameHaker;component/Resource/img/DevelNextIco.png��6%   5[        5\      -   5        $ testblock_Copy1��5\   '   $ TaskPanelBlock_Loaded��6@   $
��Left=�6_   $��40��6z   $	 Red��6�    5]      �� 5^      $@ :/GameHaker;component/Resource/img/icons8--fsociety-100.png��6%   5`      5a        5b      -   5        $ MenuPysk��5b   #   $��	0,0,758,0q�65   $
��Left=�6H   $��40��6c   �� 5c      $
��Left=�6   $��39,0,0,0q�63   $��0��6E   $��1��6Y   
�������6c   5d      5e      5f      
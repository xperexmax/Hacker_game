   M S B A M L   `   `   `  ���� D  @GameHaker, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:GameHaker	GameHaker      GameHaker.Main   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     )localclr-namespace:GameHaker     c _Microsoft.Expression.Effects, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35h dMicrosoft.Expression.Interactions, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35?ee4http://schemas.microsoft.com/expression/2010/effects   c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  Bei9http://schemas.microsoft.com/expression/2010/interactions  -     �Name$  window�� � Title$
 Main��$
��1080��$
��1920�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowState$ 	Maximized=� � 	Resources  	  HAKED �� Property �� Value  	OnLoaded1 g� RepeatBehavior	 �� TargetProperty
 �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value   EasingFunction-  'System.Windows.Media.Animation.BackEase7  1System.Windows.Media.Animation.EasingFunctionBase   
EasingMode/  )System.Windows.Media.Animation.CircleEase4  .System.Windows.Media.Animation.ExponentialEase   Exponent.  (System.Windows.Media.Animation.PowerEase   Power   	Amplitude/  )System.Windows.Media.Animation.BounceEase   Bounces   
Bounciness R� KeyTime-  'System.Windows.Media.Effects.KernelType   Gaussian R� Value �� KeyTime �� Value  	OnLoaded4<	  6System.Windows.Media.Animation.EasingThicknessKeyFrame p� KeyTime p� Value 	  EasingFunction  OnMouseEnter1  OnMouseLeave1  startButInfoShow  startButInfoHide  settingsButInfoShow  settingsButInfoHide 	 closeButInfoShow 
 closeButInfoHide  
ShowDialog  
HideDialog��%a  &	        &	 /     &	 �    &	 U    &	 �    &	 q    &	     &	 �    &	 {    &		 1    &	
 �    &	 �    &	 _    �� .���  � ��$ Resources/HAKED.ttf)��� $ 1x��.��U� $U	 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$
 border��.\�  $ 0��$ 6Q�   $ EaseOut=�  $ 0:0:1.4��$	 528Q�   $ EaseOut=�  $ 0:0:7.9��$	 780Q�   $ EaseIn=�  $ 0:0:9.7��$
 1221Q�   $ EaseOut=�  $ 0:0:13.3��$
 1226Q�U� $U	 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�$
 border��.\�  $ 0:0:1.4��$	 -11Q�   $ EaseOut=�  $ 0:0:7.9��$	 -21Q�   $ EaseIn=�  $ 0:0:9.7��$ 35Q�   $ EaseOut=�  $ 0:0:13.3��$ 34Q�U� $V	 P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�$
 border��.\�  $ 0:0:1.4��$ -5.531Q�   $ EaseOut=�  $ 0:0:7.9��$ 6.082Q�   $ EaseIn=�  $ 0:0:9.7��$ 27.491Q�   $ EaseOut=�U� $,	 &(UIElement.Effect).(BlurEffect.Radius)�$

 grid��.\�  $ 0:0:0.3��$ 0Q�   $ EaseOut=�  $ 0:0:1.1��$ 17Q�   $ EaseOut=�$ 15Q�  $ 0:0:8.5��$ 17Q�  $ 0:0:10��$ 0Q�   $ EaseOut=�$ 17Q�U� $U	 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$
 border1��.\�  $ 0��$ 2Q�  $ 0:0:2.4��$	 316Q�   $ EaseOut=�$	 -50Q�  $ 0:0:4.8��$	 136Q�   $ EaseOut=�$	 -52Q�  $ 0:0:7��$ 2Q�  $ 0:0:9.3��$	 316Q�   $ EaseOut=�$	 -50Q�  $ 0:0:11.5��$	 136Q�   $ EaseOut=�$	 -52Q�  $ 0:0:13.3��$	 2.5Q�   $ EaseOut=�$	 -50Q�U� $U	 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�$
 border1��.\�  $ 0��$ 0Q�  $ 0:0:2.4��$ 8Q�   $ EaseOut=�$	 -50Q�  $ 0:0:4.8��$	 218Q�   $ EaseOut=�$	 -52Q�  $ 0:0:7��$ 0Q�  $ 0:0:9.3��$ 8Q�   $ EaseOut=�$	 -50Q�  $ 0:0:11.5��$	 218Q�   $ EaseOut=�$	 -52Q�  $ 0:0:13.3��$	 0.5Q�   $ EaseOut=�$	 -50Q�U� $V	 P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�$
 border1��.\�  $ 0��$ 0Q�  $ 0:0:2.4��$ 90Q�   $ EaseOut=�$	 -50Q�  $ 0:0:4.8��$	 180Q�   $ EaseOut=�$	 -52Q�  $ 0:0:7��$ 0Q�  $ 0:0:9.3��$ 90Q�   $ EaseOut=�$	 -50Q�  $ 0:0:11.5��$	 180Q�   $ EaseOut=�$	 -52Q�  $ 0:0:13.3��$	 270Q�   $ EaseOut=�$	 -50Q�U� $U	 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�$
 grid1��.\�  $ 0��$
 -7.5Q�  $ 	0:0:3.213��$
 -105Q�   $ EaseIn=�$ 0��$ 1Q�  $ 	0:0:6.575��$
 -7.5Q�   $ EaseOut=�$ 1Q�$ 0��  $ 	0:0:6.725��$
 -7.5Q�  $ 	0:0:9.938��$
 -105Q�   $ EaseIn=�$ 0��$ 1Q�  $ 0:0:13.3��$
 -7.5Q�   $ EaseOut=�$ 1Q�$ 0��U� $U	 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$
 grid1��.\�  $ 0��$ 0Q�  $ 	0:0:3.213��$
 -1.5Q�   $ EaseIn=�$ 0��$ 1Q�  $ 	0:0:6.575��$ 0Q�   $ EaseOut=�$ 1Q�$ 0��  $ 	0:0:6.725��$ 0Q�  $ 	0:0:9.938��$
 -1.5Q�   $ EaseIn=�$ 0��$ 1Q�  $ 0:0:13.3��$ 0Q�   $ EaseOut=�$ 1Q�$ 0��T� $0	 *(UIElement.Effect).(BlurEffect.KernelType)�$

 grid��..�i� $ 0:0:0.3��# Z i� $ 0:0:0.7��# Z i� $ 0:0:1.1��# Z �� $.	 ((local:MenuButtonsBackgroundBlur.BlurOn)�$
 exitBut��.p�s� $ 0�� . s� $ 0:0:2.1�� .  s� $ 0:0:8.5�� . �� $.	 ((local:MenuButtonsBackgroundBlur.BlurOn)�$
 settingsBut��.p�s� $ 0�� . s� $ 0:0:2.1�� .  s� $ 0:0:8.5�� . �� $.	 ((local:MenuButtonsBackgroundBlur.BlurOn)�$
 startBut��.p�s� $ 0�� . s� $ 0:0:2.1�� .  s� $ 0:0:8.5�� . �� .��r� $	 (FrameworkElement.Margin)�$
 grid2��.	�	  $ 0��$ 
0,-261,0,0q�	  $ 0:0:1��$ 0q�   $ 	EaseInOut=�r� $	 (FrameworkElement.Margin)�$
 
stackPanel��.	�	  $ 0:0:1��$ 	1,261,0,0q��� $"	 (UIElement.IsHitTestVisible)�$
 border4��.p�s� $ 0�� .  U� $U	 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�$
 
stackPanel��.\�  $ 0:0:1��$ 0Q�   $ 	EaseInOut=�U� $U	 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�$
 
stackPanel��.\�  $ 0:0:1��$ 0Q�   $ 	EaseInOut=��� .��U� $,	 &(UIElement.Effect).(BlurEffect.Radius)�$
 mediaElement��.\�  $ 0:0:0.2��$	 100Q��� $.	 ((local:MenuButtonsBackgroundBlur.BlurOn)�$
 startBut��.p�s� $ 0:0:0.2�� .  �� $.	 ((local:MenuButtonsBackgroundBlur.BlurOn)�$
 settingsBut��.p�s� $ 0:0:0.2�� .  �� $.	 ((local:MenuButtonsBackgroundBlur.BlurOn)�$
 exitBut��.p�s� $ 0:0:0.2�� .  �� .��U� $,	 &(UIElement.Effect).(BlurEffect.Radius)�$
 mediaElement��.\�  $ 0:0:0.3��$ 0Q��� $.	 ((local:MenuButtonsBackgroundBlur.BlurOn)�$
 startBut��.p�s� $ 0:0:0.3�� . �� $.	 ((local:MenuButtonsBackgroundBlur.BlurOn)�$
 settingsBut��.p�s� $ 0:0:0.3�� . �� $.	 ((local:MenuButtonsBackgroundBlur.BlurOn)�$
 exitBut��.p�s� $ 0:0:0.3�� . �� .��U� $	 (UIElement.Opacity)�$
 startButInfo��.\�  $ 0:0:0.2��$ 1Q��� $"	 (UIElement.IsHitTestVisible)�$
 startButInfo��.p�s� $ 0�� . �� .��U� $	 (UIElement.Opacity)�$
 startButInfo��.\�  $ 0:0:0.4��$ 0Q��� $"	 (UIElement.IsHitTestVisible)�$
 startButInfo��.p�s� $ 0:0:0.4�� .  �� .��U� $	 (UIElement.Opacity)�$
 settingsButInfo��.\�  $ 0:0:0.2��$ 1Q��� $"	 (UIElement.IsHitTestVisible)�$
 settingsButInfo��.p�s� $ 0�� . �� .��U� $	 (UIElement.Opacity)�$
 settingsButInfo��.\�  $ 0:0:0.4��$ 0Q��� $"	 (UIElement.IsHitTestVisible)�$
 settingsButInfo��.p�s� $ 0:0:0.4�� .  �� .��U� $	 (UIElement.Opacity)�$
 settingsButExit��.\�  $ 0:0:0.2��$ 1Q��� $"	 (UIElement.IsHitTestVisible)�$
 settingsButExit��.p�s� $ 0�� . �� .��U� $	 (UIElement.Opacity)�$
 settingsButExit��.\�  $ 0:0:0.4��$ 0Q��� $"	 (UIElement.IsHitTestVisible)�$
 settingsButExit��.p�s� $ 0:0:0.4�� .  �� .��U� $	 (UIElement.Opacity)�$
 Dialog��.\�  $ 0��$ 0Q�  $ 0:0:0.3��$ 1Q�U� $V	 P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$
 border5��.\�  $ 0��$	 1.2Q�   $ EaseOut=�  $ 0:0:0.3��$ 1Q�   $ 	EaseInOut=�U� $V	 P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�$
 border5��.\�  $ 0��$	 1.2Q�   $ EaseOut=�  $ 0:0:0.3��$ 1Q�   $ 	EaseInOut=��� $"	 (UIElement.IsHitTestVisible)�$
 Dialog��.p�s� $ 0�� . U� $,	 &(UIElement.Effect).(BlurEffect.Radius)�$
 	MainPanel��.\��� $ 0��$ 0Q�  $ 0:0:0.3��$	 100Q��� .��U� $,	 &(UIElement.Effect).(BlurEffect.Radius)�$
 	MainPanel��.\�  $ 0��$	 100Q�  $ 0:0:0.3��$ 0Q�U� $V	 P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$
 Dialog��.\�  $ 0��$ 1Q�  $ 0:0:0.4��$	 1.2Q�U� $V	 P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�$
 Dialog��.\�  $ 0��$ 1Q�  $ 0:0:0.4��$	 1.2Q�U� $	 (UIElement.Opacity)�$
 Dialog��.\�  $ 0��$ 1Q�  $ 0:0:0.4��$ 0Q��� $"	 (UIElement.IsHitTestVisible)�$
 Dialog��.p�s� $ 0�� .  s� $ 0:0:0.4�� .   � Triggers :�  :� RoutedEvent$ FrameworkElement.Unloaded��.[��� #��[ :� $ UIElement.MouseUp�� :� 
SourceName$ border4��.[���  �� BeginStoryboardName$ OnLoaded4_BeginStoryboard���� -     ��Name$  OnLoaded4_BeginStoryboard��#��[ :� $ UIElement.MouseEnter��$ startBut��.[��� -   $#  OnMouseEnter1_BeginStoryboard��#��[ �� -   $&   startButInfoShow_BeginStoryboard��#��[ :� $ UIElement.MouseEnter��$ exitBut��.[��� -   $$  OnMouseEnter1_BeginStoryboard1��#��[ :� $ UIElement.MouseEnter��$ settingsBut��.[��� -   $$  OnMouseEnter1_BeginStoryboard2��#��[ �� -   $)  #settingsButInfoShow_BeginStoryboard��#��[ :� $ UIElement.MouseLeave��$ settingsBut��.[��� -   $#  OnMouseLeave1_BeginStoryboard��#��[ �� -	   $)  #settingsButInfoHide_BeginStoryboard��#��[ :� $ UIElement.MouseLeave��$ startBut��.[��� -
   $$  OnMouseEnter1_BeginStoryboard3��#��[ �� -   $&   startButInfoHide_BeginStoryboard��#��[ :� $ UIElement.MouseLeave��$ exitBut��.[��� -   $$  OnMouseLeave1_BeginStoryboard1��#��[ :� $ UIElement.MouseEnter��$ startButInfo��.[��� -   $$  OnMouseEnter1_BeginStoryboard4��#��[ �� -   $$  OnMouseEnter1_BeginStoryboard5��#��[ :� $ UIElement.MouseLeave��$ startButInfo��.[��� -   $$  OnMouseLeave1_BeginStoryboard2��#��[ �� -   $$  OnMouseLeave1_BeginStoryboard3��#��[ :� $ UIElement.MouseEnter��$ settingsButInfo��.[��� -   $$  OnMouseEnter1_BeginStoryboard6��#��[ �� -   $*  $settingsButInfoShow_BeginStoryboard1��#��[ :� $ UIElement.MouseLeave��$ settingsButInfo��.[��� -   $*  $settingsButInfoHide_BeginStoryboard1��#��[ �� -   $$  OnMouseLeave1_BeginStoryboard4��#��[ :� $ UIElement.MouseEnter��$ settingsButExit��.[��� -   $*  $settingsButInfoHide_BeginStoryboard2��#��[	 �� -   $$  OnMouseEnter1_BeginStoryboard7��#��[ :� $ UIElement.MouseLeave��$ settingsButExit��.[��� -   $&   closeButInfoHide_BeginStoryboard��#��[
 �� -   $$  OnMouseLeave1_BeginStoryboard5��#��[ :� $ UIElement.MouseEnter��$ exitBut��.[��� -   $$  OnMouseEnter1_BeginStoryboard8��#��[ �� -   $&   closeButInfoShow_BeginStoryboard��#��[	 :� $ UIElement.MouseLeave��$ exitBut��.[��� -   $$  OnMouseLeave1_BeginStoryboard6��#��[ �� -   $'  !closeButInfoHide_BeginStoryboard1��#��[
 .��� .+�(� ! (� Stretch$
! Fill=�.��� -   " �Name$" MainGrid�����	#FF07081F$
��Left=�$	��Top=����� *Height+# �� ElementName$# window������ *Width+$# window��.+�� -   $" 	MainPanel��$��0q�$ J� Effect$ -
  'System.Windows.Media.Effects.BlurEffect
  % 
  Radius$% 0Q�.+�(� -   & (�Name$& _Background��$
! None=�' J� IsHitTestVisible' .  $y�Hidden=�{�.  $��0,0,0,3q�( J� Opacity$( 0Q�.  (System.Windows.Interactivity.Interaction)   Triggers) /  )System.Windows.Interactivity.EventTrigger  *   	EventName$* Unloaded��.  (System.Windows.Interactivity.TriggerBase+   Actions.+ F  @Microsoft.Expression.Interactivity.Media.ControlStoryboardAction  -    s��?  9Microsoft.Expression.Interactivity.Media.StoryboardAction,   
Storyboard#, [ .��� -!   $" grid5��$	��500��$��911.111��.+��� .��� -"   $
" grid�����	#00091C36- J� RenderTransformOrigin$- 0.5,0.5&�$	��890��z�V� .~��� �� �� T� $ 
  $% 0Q�.+��� -#   . ��Name$. border1��
�������$��7q�$��-338,75,0,0q�$- 0.5,0.5&�$��Center=�$	��Top=�$��75��$��75��/ K� ZIndex$/ 1��z�V� .~��� �� �� 0 �� Angle$0 18.686Q�T� � -$   $" grid1��$��-125,172.5,0,2q�$- 0.5,0.5&�$	��Top=�$��Center=�z�V� .~��� �� �� T� .+��� 
�������$��4q�$
��Left=�$��30��$��625.5,183,0,0q�$	��Top=�$��30���� -%   $. border2��
�������$��4q�$
��Left=�$��30��$��477,219,0,0q�$	��Top=�$��30��$- 0.5,0.5&�z�V� .~��� �� �� T� �� -&   $. border3��
�������$��4q�$
��Left=�$��30��$��40.5,234,0,0q�$	��Top=�$��30��$ 3  -System.Windows.Media.Effects.DropShadowEffect  1   Color$1 White��2   ShadowDepth$2 0Q�3   
BlurRadius$3 1Q��� 
�������$��4q�$
��Left=�$��30��$��699,73.5,0,0q�$	��Top=�$��30���� 
�������$��4q�$
��Left=�$��30��$	��Top=�$��30���� 
�������$��4q�$
��Left=�$��30��$��256.5,135,0,0q�$	��Top=�$��30���� 
�������$��4q�$
��Left=�$��30��$��442.5,45,0,0q�$	��Top=�$��30���� 
�������$��4q�$
��Left=�$��30��$��118.5,73.5,0,0q�$	��Top=�$��30���� -'   $. border��
�������$��7q�$
��Left=�$	��209��$��-272,120,0,0q�$	��Top=�$	��227��4 �� CornerRadius$4 4��$- 0.5,0.5&���
� .��� 5 � Color$5 	#5AFFFFFF��6 � Offset$6 0Q�� $5 	#5AB8F9FF��$6 1Q�z�V� .~��� �� �� $0 -17.044Q�T� ._�� $   .+��� $��HAKER:
��$��40(�$��Center=�$��Center=�$
��Bold"�$��37.5,40.5,37.5,101.5q�$��Center=�$��Center=�$	��132��$��47��$��HACKED)�$- 0.5,0.5&����	#FF00FF0C' . ��Z� ��Z� �� $��	by BREND
��$��48(�$��Center=�$��Center=�$
��Bold"�$��10,74,10,43.145q�$��Center=�$��Center=�$��71.855��
�������$��HACKED)�$	��187��$- 0.5,0.5&���Z� ��Z� � -(   $" grid4��$��0q�.+�r� -)   7 r�Name$7 mediaElement��$��0q�8 r� Stretch$8 UniformToFill=�9 r� Source$89 2Resource/img/GameHaker 2018-10-25 14-21-02-731.mp4?�: r� 
SpeedRatio$: 1Q�; r� UnloadedBehavior$; Manual=�< r� LoadedBehavior$< Manual=�$ 
  $% 0Q��� ���	#02727070$��0q�
���   �� -*   $" grid2��$��661.5,-261,661.5,0q�$��Center=�$	��Top=�.+��� $��HAKER��$��Center=�$	��261��$��0q�$	��Top=�$	��597��$��HACKED)�$	��250(�
�������$   $3 8Q�=   	Direction$	= 270Q�$2 9Q�� -+   $" _Foreground��$��0q�.+��� -,   > ��Name$	> but��$��Button��$��147,51,1404,852q�$��24(�$y�Hidden=��� --   ? ��Name$? 
stackPanel��@ �� Orientation$@ Vertical=�$
��Left=�$��Center=�$- 0.5,0.5&�$��	0,261,0,0q�z�V� .~��� �� �� T� A T� X$
A -641Q�.+�)   #GameHaker.MenuButtonsBackgroundBlur  -.   B  Name$B startBut��)   #GameHaker.MenuButtonsBackgroundBlurC   Loaded$&C  MenuButtonsBackgroundBlur_Loaded��D   MouseUp$'D !MenuButtonsBackgroundBlur_MouseUp��$
��Left=�$��92��$	��Top=�$	��623��$��0q�E   Text$E Start��
F   ObjF �� $# grid4��G �� Mode$G OneWay=�H   WindowH �� $# window��$G OneWay=�  -/   $B settingsBut��$&C  MenuButtonsBackgroundBlur_Loaded��$)D #MenuButtonsBackgroundBlur_MouseUp_1��$
��Left=�$��92��$	��Top=�$	��623��$��0q�$E Settings��F �� $# grid4��$G OneWay=�H �� $# window��$G OneWay=�  -0   $B exitBut��$&C  MenuButtonsBackgroundBlur_Loaded��I   PreviewMouseLeftButtonUp$&I  exitBut_PreviewMouseLeftButtonUp��$
��Left=�$��92��$	��Top=�$	��623��$��0q�J   	TextColor$	J Red��$- 0.5,0.5&�$
E Exit��K   BlurOnK .  $/ -1��F �� $# grid4��$G OneWay=�H �� $# window��$G OneWay=�z�V� .~��� �� �� T� $	A -20Q��� -1   L ��Name$L startButInfo��$��662,266,67,67q�$��Hidden=����	#19FFFFFF
���   �|�.  ' .    LeftScrollViewer#���  
�������$- 0.5,0.5&�$
��Auto=�z�V� .~��� �� �� T� M T� Y$
M 1670Q�.��� N � Orientation$N Vertical=�$��0q�O � 	ItemWidthO �� *ActualWidth+$# startButInfo��$G OneWay=�$   $3 6Q�.+��� $��Start Button��$��88��$��0q�$��Center=�$��Center=�$��72(�$+��%/GameHaker;component/Resource/#HACKED)�
�������
�������$��0,0,0,1q��� $��	10,0,20,0q�$��48(�$+��%/GameHaker;component/Resource/#HACKED)�
�������$��Disabled=�$��WrapWithOverflow=�P �� TextAlignment$P Center=��� .��� $M�GКнопка для перехода в меню сохраннений��Q �� BaselineAlignment$Q Center=��� $��	10,0,20,0q�$��36(�$+��%/GameHaker;component/Resource/#HACKED)�
�������$��Disabled=�$��WrapWithOverflow=�$P Center=��� $Q Center=�$O�Iтам вы можете выбрать 3 режима сложности���� $Q Center=�$�:���� $��	10,0,20,0q�$��36(�$+��%/GameHaker;component/Resource/#HACKED)�
�������$��Disabled=�$��WrapWithOverflow=�$P Center=��� $Q Center=�$:�4лёгкий, нормальный и сложный���� $	��252��$ ��Resource/img/play-flat.png��$��160,3,160,0q��� -2   $L settingsButInfo��$��662,266,67,67q�$��Hidden=����	#19FFFFFF
���   �|�.  ' .  #���  
�������$
��Auto=�$
( 0.93Q�$- 0.5,0.5&�z�V� .~��� �� �� T� $	M 880Q�.��� $N Vertical=�$��0q�O �� *ActualWidth+$# startButInfo��$G OneWay=�$   $3 6Q�.+��� $��Settings��$��88��$��0q�$��Center=�$��Center=�$��72(�$+��%/GameHaker;component/Resource/#HACKED)�
�������
�������$��0,0,0,1q��� $��	10,0,20,0q�$��48(�$+��%/GameHaker;component/Resource/#HACKED)�
�������$��Disabled=�$��WrapWithOverflow=�$P Center=��� $Q Center=�$7�1Кнопка для перехода в меню ���� $Q Center=�$�настроек���� $��	10,0,20,0q�$��36(�$+��%/GameHaker;component/Resource/#HACKED)�
�������$��Disabled=�$��WrapWithOverflow=�$P Center=��� $Q Center=�$�там вы можете ���� $Q Center=�$6�0настроеть такие параметры���� $Q Center=�$�:���� $��	10,0,20,0q�$��36(�$+��%/GameHaker;component/Resource/#HACKED)�
�������$��Disabled=�$��WrapWithOverflow=�$P Center=��� $Q Center=�$���отключение размытия под кнопками, отключение заднего фона и многое другое���� $	��252��$$��Resource/img/settings-flat.png��$��160,3,160,0q��� -3   $L settingsButExit��$��662,266,67,67q�$��Hidden=����	#19FFFFFF
���   �|�.  ' .  #���  
�������$
��Auto=�$
( 0.93Q�$- 0.5,0.5&�z�V� .~��� �� �� T� $
M 2457Q�.��� $N Vertical=�$��0q�O �� *ActualWidth+$# startButInfo��$G OneWay=�$   $3 6Q�.+��� $��Close button��$��88��$��0q�$��Center=�$��Center=�$��72(�$+��%/GameHaker;component/Resource/#HACKED)�
�������
�������$��0,0,0,1q��� $��	10,0,20,0q�$��48(�$+��%/GameHaker;component/Resource/#HACKED)�
�������$��Disabled=�$��WrapWithOverflow=�$P Center=��� $Q Center=�$�Кнопка для ���� $Q Center=�$ �выхода из игры���� $	��252��$!��Resource/img/close-flat.png��$��160,3,160,0q�� -4   $" Dialog��$��0q�$- 0.5,0.5&�' .  )   $* Unloaded��.+   -5   ShowDialogControl��#, [   -6   HideDialogControl��#, [ z�V� .~��� �� �� T� $A -2670Q���
� .��� $5 	#7E000000��$6 1Q�� $5 	#34808080��.+��� -7   $. border5��
�������$��1q�$	��335��$��0q�$	��550�����	#7F000000$	��550��$	��335��$��Center=�$��Center=�$- 0.5,0.5&�z�V� .~��� �� �� T� ._�� $��0q�.+�   GameHaker.ButFlat     GameHaker.ButFlatR   PreviewMouseLeftButtonUp$(R "ButFlat_PreviewMouseLeftButtonUp_1��$��383,287.5,4,6q�S   Text$
S Да��T   NormalColor$T 	#6442FF53��U   
HoverColor$U 	#7F00FF2E��V   PressedColor$V 	#8C208901��W   	FontSizez$W 34��  $&R  ButFlat_PreviewMouseLeftButtonUp��$��217,287.5,170,6q�$S нет��$T 	#64FF3535��$U 	#7EFF0000��$V 	#8C890101��$W 34��F� �����`��@���+o	
�������$��1��$��
-1,0,-1,52q�X �� Stretch$
X Fill=�
�������$��Bottom=�$- 0.5,0.5&�$��2��z�V� .~��� Y �� ScaleY$Y -1Q��� �� T� �� -8   Z ��Name$Z TitleD��$#��Вы хотите выйти?��$��0q�$��Center=�$��48(�$+��%/GameHaker;component/Resource/#HACKED)�
�������
�������$��0,0,0,1q�$��10,5,5,5q�$	��Top=����	#11FFFFFF$��Center=�$   $	1 Red��[   Opacity$	[ 0.5Q�$2 3Q�$3 28Q��� -9   \ ��Name$\ Message��$��12,78,12,63q�$��24(�$+��%/GameHaker;component/Resource/#HACKED)�
�������$��Disabled=�$��WrapWithOverflow=�$- 0.5,0.5&�$P Center=�$ �� *Effect+$# TitleD���� $Q Center=�$<�6Выйти из игры на рабочий стол?���� -:   $. border4��
�������$��1q�$��0q�' . ] J� OpacityMask] �	#03000000��
� .��� $5 	#00000000��$6 0.721Q�� $5 	#2D000000��$6 1Q�
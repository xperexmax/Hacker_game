using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Media.Effects;
using System.Windows.Threading;

namespace GameHaker
{
    /// <summary>
    /// Логика взаимодействия для MenuButtonsBackgroundBlur.xaml
    /// </summary>
   

    public partial class MenuButtonsBackgroundBlur : UserControl
    {
        #region Ctor

        public MenuButtonsBackgroundBlur()
        {
            InitializeComponent();
        }

        static MenuButtonsBackgroundBlur()
        {
            windowProperty = DependencyProperty.Register("Window", typeof(Visual), typeof(MenuButtonsBackgroundBlur), new FrameworkPropertyMetadata(null, new PropertyChangedCallback(WindowPropertyChange)));
            objProperty = DependencyProperty.Register("Obj", typeof(Visual), typeof(MenuButtonsBackgroundBlur), new FrameworkPropertyMetadata(null, new PropertyChangedCallback(ObjPropertyChange)));
            textProperty = DependencyProperty.Register("Text", typeof(string), typeof(MenuButtonsBackgroundBlur), new FrameworkPropertyMetadata("New game", new PropertyChangedCallback(TextPropertyChange)));
            textColorProperty = DependencyProperty.Register("TextColor", typeof(Color), typeof(MenuButtonsBackgroundBlur), new FrameworkPropertyMetadata(Colors.White, new PropertyChangedCallback(TextColorPropertyChange)));
            fontSizeProperty = DependencyProperty.Register("FontSize", typeof(int), typeof(MenuButtonsBackgroundBlur), new FrameworkPropertyMetadata(48, new PropertyChangedCallback(FontSizePropertyChange)));
        }

        #endregion

        #region Dependency Properties

        public static readonly DependencyProperty windowProperty;
        public static readonly DependencyProperty textProperty;
        public static readonly DependencyProperty textColorProperty;
        public static readonly DependencyProperty fontSizeProperty;
        public static readonly DependencyProperty objProperty;

        #endregion


        #region Propetries

        public Visual Window
        {
            get { return (Visual)GetValue(windowProperty); }
            set { SetValue(windowProperty, value); }
        }

        public Visual Obj
        {
            get { return (Visual)GetValue(objProperty); }
            set { SetValue(objProperty, value); }
        }

        public string Text
        {
            get { return (string)GetValue(textProperty); }
            set { SetValue(textProperty, value); }
        }

        public Color TextColor
        {
            get { return (Color)GetValue(textColorProperty); }
            set { SetValue(textColorProperty, value); }
        }

        new public int FontSize
        {
            get { return (int)GetValue(fontSizeProperty); }
            set { SetValue(fontSizeProperty, value); }
        }

        #endregion

        private static void WindowPropertyChange(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            MenuButtonsBackgroundBlur c = obj as MenuButtonsBackgroundBlur;
            Visual v = (Visual)e.NewValue;
            c.Window = v;
        }

        private static void ObjPropertyChange(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            MenuButtonsBackgroundBlur c = obj as MenuButtonsBackgroundBlur;
            Visual v = (Visual)e.NewValue;
            c.Obj = v;
        }

        private static void TextPropertyChange(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            MenuButtonsBackgroundBlur c = obj as MenuButtonsBackgroundBlur;
            string v = (string)e.NewValue;
            c.label.Content = v;
            c.Text = v;
        }

        private static void FontSizePropertyChange(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            MenuButtonsBackgroundBlur c = obj as MenuButtonsBackgroundBlur;
            int v = (int)e.NewValue;
            c.label.FontSize = v;
            c.FontSize = v;
        }

        private static void TextColorPropertyChange(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            MenuButtonsBackgroundBlur c = obj as MenuButtonsBackgroundBlur;
            Color v = (Color)e.NewValue;
            c.label.Foreground = new SolidColorBrush(v);
            c.TextColor = v;
        }

        private bool onBlur = false;

        private void rectangle1_Loaded(object sender, RoutedEventArgs e)
        {
            
            
            //dispatcherTimer.Start();
        }

        public void OnBlur()
        {
            BlurEffect blurBackEffect = blur.Effect as BlurEffect;
            SetBlur(Obj, (int)blurBackEffect.Radius, Window);
            SolidColorBrush c = new SolidColorBrush(Color.FromRgb(7, 8, 31));
            blurB.Background = c;
            onBlur = true;
        }

        public void OffBlur()
        {
            SolidColorBrush brush = new SolidColorBrush(Color.FromArgb(0, 0, 0, 0));
            blur.Fill = brush;
            blurB.Background = brush;
            onBlur = false;
        }

        public void setBlurOptions(Visual obj, int value, Visual window)
        {
            this.Obj = obj;
            BlurEffect blurBackEffect = blur.Effect as BlurEffect;
            blurBackEffect.Radius = value;
            this.Window = window;
        }

        public void SetBlur(Visual obj, int value, Visual window)
        {
            BlurEffect blurBackEffect = blur.Effect as BlurEffect;
            blurBackEffect.Radius = value;
            

            this.Obj = obj;
            var vsB = new VisualBrush();
            vsB.Visual = obj;
            vsB.Stretch = Stretch.None;
            vsB.ViewboxUnits = BrushMappingMode.Absolute;
            vsB.AlignmentX = 0;
            vsB.AlignmentY = 0;

            this.Window = window;
            blur.Fill = vsB;
        }

        private void userControl_LayoutUpdated(object sender, EventArgs e)
        {
            if (!onBlur) return;
            try
            {
                Point relativePoint = this.TransformToAncestor(Window).Transform(new Point(0, 0));
                blur.Margin = new Thickness(-relativePoint.X, -relativePoint.Y, 0, 0);
            }
            catch (ArgumentNullException)
            {

            }
        }
    }
}

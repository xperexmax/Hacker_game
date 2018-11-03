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
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace GameHaker
{
    /// <summary>
    /// Логика взаимодействия для ButFlat.xaml
    /// </summary>
    public partial class ButFlat : UserControl
    {
        const string normalColor  = "#00FFFFFF";
        const string hoverColor   = "#34FFFFFF";
        const string pressedColor = "#9EB9B9B9";

        #region Ctor

        public ButFlat()
        {
            InitializeComponent();
        }

        static ButFlat()
        {
            textProperty = DependencyProperty.Register("TextB", typeof(string), typeof(ButFlat), new FrameworkPropertyMetadata("Button", new PropertyChangedCallback(TextPropertyChange)));
            textColorProperty = DependencyProperty.Register("TextColorB", typeof(Color), typeof(ButFlat), new FrameworkPropertyMetadata(Colors.White, new PropertyChangedCallback(TextColorPropertyChange)));
            fontSizeProperty = DependencyProperty.Register("TextFontB", typeof(int), typeof(ButFlat), new FrameworkPropertyMetadata(72, new PropertyChangedCallback(FontSizePropertyChange)));

            normalColorProperty = DependencyProperty.Register("NormalColorB", typeof(Color), typeof(ButFlat), new FrameworkPropertyMetadata((Color)ColorConverter.ConvertFromString(ButFlat.normalColor), new PropertyChangedCallback(NormalColorPropertyChange)));
            hoverColorProperty = DependencyProperty.Register("HoverColorB", typeof(Color), typeof(ButFlat), new FrameworkPropertyMetadata((Color)ColorConverter.ConvertFromString(ButFlat.hoverColor), new PropertyChangedCallback(HoverColorPropertyChange)));
            pressedColorProperty = DependencyProperty.Register("PressedColorB", typeof(Color), typeof(ButFlat), new FrameworkPropertyMetadata((Color)ColorConverter.ConvertFromString(ButFlat.pressedColor), new PropertyChangedCallback(PressedColorPropertyChange)));
        }

        #endregion

        #region Dependency Properties

        public static readonly DependencyProperty normalColorProperty;
        public static readonly DependencyProperty hoverColorProperty;
        public static readonly DependencyProperty pressedColorProperty;

        public static readonly DependencyProperty textProperty;
        public static readonly DependencyProperty textColorProperty;
        public static readonly DependencyProperty fontSizeProperty;

        #endregion


        #region Propetries

        public Color NormalColor
        {
            get { return (Color)GetValue(normalColorProperty); }
            set { SetValue(normalColorProperty, value); }
        }

        public Color HoverColor
        {
            get { return (Color)GetValue(hoverColorProperty); }
            set { SetValue(hoverColorProperty, value); }
        }

        public Color PressedColor
        {
            get { return (Color)GetValue(pressedColorProperty); }
            set { SetValue(pressedColorProperty, value); }
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

        new public int FontSizez
        {
            get { return (int)GetValue(fontSizeProperty); }
            set { SetValue(fontSizeProperty, value); }
        }

        #endregion

        private static void TextPropertyChange(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            ButFlat c = obj as ButFlat;
            string v = (string)e.NewValue;
            c.label.Content = v;
            c.Text = v;
        }

        private static void FontSizePropertyChange(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            ButFlat c = obj as ButFlat;
            int v = (int)e.NewValue;
            c.label.FontSize = v;
            c.FontSizez = v;
        }

        private static void TextColorPropertyChange(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            ButFlat c = obj as ButFlat;
            Color v = (Color)e.NewValue;
            c.label.Foreground = new SolidColorBrush(v);
            c.TextColor = v;
        }

        private static void NormalColorPropertyChange(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            ButFlat c = obj as ButFlat;
            Color v = (Color)e.NewValue;
            c.Resources["normalColor"] = v;
            c.rectangle.Fill = new SolidColorBrush(v);
            c.NormalColor = v;
        }

        private static void HoverColorPropertyChange(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            ButFlat c = obj as ButFlat;
            Color v = (Color)e.NewValue;
            c.Resources["hoverColor"] = v;
            c.HoverColor = v;
        }

        private static void PressedColorPropertyChange(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            ButFlat c = obj as ButFlat;
            Color v = (Color)e.NewValue;
            c.Resources["pressedColor"] = v;
            c.PressedColor = v;
            
        }

        private void userControl_MouseEnter(object sender, MouseEventArgs e)
        {
            Color c = ((Color)Resources["hoverColor"] == null) ? (Color)ColorConverter.ConvertFromString(ButFlat.hoverColor) : (Color)Resources["hoverColor"];
            ColorAnimation a = new ColorAnimation(c, new Duration(new TimeSpan(0, 0, 0, 0, 200)));
            rectangle.Fill.BeginAnimation(SolidColorBrush.ColorProperty, a);
           
        }

        private void userControl_MouseLeave(object sender, MouseEventArgs e)
        {
            Color c = ((Color)Resources["normalColor"] == null) ? (Color)ColorConverter.ConvertFromString(ButFlat.normalColor) : (Color)Resources["normalColor"];
            ColorAnimation a = new ColorAnimation(c, new Duration(new TimeSpan(0, 0, 0, 0, 200)));
            rectangle.Fill.BeginAnimation(SolidColorBrush.ColorProperty, a);
        }

        private void userControl_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            Color c = ((Color)Resources["pressedColor"] == null) ? (Color)ColorConverter.ConvertFromString(ButFlat.pressedColor) : (Color)Resources["pressedColor"];
            ColorAnimation a = new ColorAnimation(c, new Duration(new TimeSpan(0, 0, 0, 0, 200)));
            rectangle.Fill.BeginAnimation(SolidColorBrush.ColorProperty, a);
        }

        
    }
}

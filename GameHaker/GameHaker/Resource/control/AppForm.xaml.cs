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
using System.Windows.Threading;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using GameHaker.Classes;

namespace GameHaker.Resource.control
{
    /// <summary>
    /// Логика взаимодействия для AppFrom.xaml
    /// </summary>
    public partial class AppForm : UserControl
    {
        public AppForm()
        {
            InitializeComponent();
        }

        public Grid grid;
        public FormContent Cont;

        private TranslateTransform tr;

        private int[] minSize = {270, 50};
        private int p = 10;
        private Pos startPos = new Pos(0, 0);
        private Pos startSize = new Pos(0, 0);
        private bool resizeOn;
        private DispatcherTimer t;
        
        struct Pos
        {
            public double Y;
            public double X;

            public Pos (double y, double x)
            {
                this.Y = y;
                this.X = x;
            }

            public static Pos odds (Pos p1, Pos p2)
            {
                return new Pos((p1.Y - p2.Y), (p1.X - p2.X));
            }
        }

        private void r_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            Button b = sender as Button;
            resizeOn = true;
            TransformGroup g = new TransformGroup();
            tr = new TranslateTransform();
            tr.X = this.RenderTransform.Transform(new Point()).X;
            tr.Y = this.RenderTransform.Transform(new Point()).Y;
            g.Children.Add(tr);
            this.RenderTransform = g;
            startPos = new Pos(this.RenderTransform.Transform(new Point()).Y, this.RenderTransform.Transform(new Point()).X);
            startSize = new Pos(Height, Width);
            p = Convert.ToInt16(b.Uid);
        }

        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
            Window_LostFocus(sender, e);
            TransformGroup g = new TransformGroup();
            tr = new TranslateTransform();
            g.Children.Add(tr);
            tr.X = Margin.Left;
            tr.Y = Margin.Top;
            this.RenderTransform = g;
            Margin = new Thickness(0, 0, 0, 0);

            t = new DispatcherTimer();
            t.Tick += new EventHandler(dispatcherTimer_Tick);
            t.Interval = new TimeSpan(0, 0, 0, 0, 10);
            t.Start();
        }

        private void dispatcherTimer_Tick(object sender, EventArgs e)
        {
            if (!resizeOn) return;
            try
            {
                Pos now = new Pos(Mouse.GetPosition(this).Y, Mouse.GetPosition(this).X);
                Point mG = Mouse.GetPosition(grid);
                switch (p)
                {
                    //xy|wh
                    case 1:
                        if (mG.Y > startPos.Y + startSize.Y - minSize[1]) { tr.Y = startPos.Y + startSize.Y - minSize[1]; Height = minSize[1]; } else { Height = (startPos.Y + startSize.Y) - mG.Y; tr.Y = mG.Y; }
                        if (mG.X > startPos.X + startSize.X - minSize[0]) { tr.X = startPos.X + startSize.X - minSize[0]; Width  = minSize[0]; } else { Width  = (startPos.X + startSize.X) - mG.X; tr.X = mG.X; }
                        break;
                    //-y|-h
                    case 2:
                        if (mG.Y > startPos.Y + startSize.Y - minSize[1]) { tr.Y = startPos.Y + startSize.Y - minSize[1]; Height = minSize[1]; } else { Height = (startPos.Y + startSize.Y) - mG.Y; tr.Y = mG.Y; }
                        break;
                    //-y|wh    
                    case 3:
                        if (mG.Y > startPos.Y + startSize.Y - minSize[1]) { tr.Y = startPos.Y + startSize.Y - minSize[1]; Height = minSize[1]; } else { Height = (startPos.Y + startSize.Y) - mG.Y; tr.Y = mG.Y; }

                        if (Mouse.GetPosition(this).X < minSize[0]) now.X = minSize[0];
                        if (Mouse.GetPosition(this).X > minSize[0]) this.Width = now.X;
                        break;
                    //--|w- 
                    case 4:
                        if (Mouse.GetPosition(this).X < minSize[0]) now.X = minSize[0];
                        if (Mouse.GetPosition(this).X > minSize[0]) this.Width = now.X;
                        break;
                    //--|wh 
                    case 5:
                        if (Mouse.GetPosition(this).X < minSize[0]) now.X = minSize[0];
                        if (Mouse.GetPosition(this).Y < minSize[1]) now.Y = minSize[1];

                        if (Mouse.GetPosition(this).X > minSize[0]) this.Width = now.X;
                        if (Mouse.GetPosition(this).Y > minSize[1]) this.Height = now.Y;
                        break;
                    //--|-h 
                    case 6:
                        if (Mouse.GetPosition(this).Y < minSize[1]) now.Y = minSize[1];
                        if (Mouse.GetPosition(this).Y > minSize[1]) this.Height = now.Y;
                        break;
                    //x-|-h 
                    case 7:
                        if (mG.X > startPos.X + startSize.X - minSize[0]) { tr.X = startPos.X + startSize.X - minSize[0]; Width = minSize[0]; } else { Width = (startPos.X + startSize.X) - mG.X; tr.X = mG.X; }

                        if (Mouse.GetPosition(this).Y < minSize[1]) now.Y = minSize[1];
                        if (Mouse.GetPosition(this).Y > minSize[1]) this.Height = now.Y;
                        break;
                    //x-|w- 
                    case 8:
                        if (mG.X > startPos.X + startSize.X - minSize[0]) { tr.X = startPos.X + startSize.X - minSize[0]; Width = minSize[0]; } else { Width = (startPos.X + startSize.X) - mG.X; tr.X = mG.X; }
                        break;
                }
                //this.Title.Content = ((startPos.Y + startSize.Y) - mG.Y) + " - " + Mouse.GetPosition(this).Y + " - " + tr.Y;
            } catch (ArgumentException)
            {

            }

            if (this.Width < minSize[0]) { this.Width = minSize[0]; }
            if (this.Height < minSize[1]) { this.Height = minSize[1]; }

            
        }

        public void loadContent (FormContent Class)
        {
            Frame.Content = Class.Content;
            this.Cont = Class;
        }

        public void setTitle (string Title)
        {
            this.Title.Content = Title;
        }

        public void setWindowActiveColor (Color color)
        {
            this.Resources["WindowColorActive"] = color;
            Color c = ((Color)this.Resources["WindowColorActive"] != null) ? (Color)this.Resources["WindowColorActive"] : Colors.LightGreen;
            this.Window.BorderBrush = new SolidColorBrush(c);
        }

        private void r_PreviewMouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            resizeOn = false;
        }

        private void UserControl_PreviewMouseDown(object sender, MouseButtonEventArgs e)
        {
            HF.toFrontObj(this, grid);
        }

        private void UserControl_GotFocus(object sender, RoutedEventArgs e)
        {
            Color c = ((Color)this.Resources["WindowColorActive"] != null) ? (Color)this.Resources["WindowColorActive"] : Colors.LightGreen;
            this.Window.BorderBrush = new SolidColorBrush(c);
            this.foc.Visibility = Visibility.Hidden;
        }

        private void Window_LostFocus(object sender, RoutedEventArgs e)
        {
            this.Window.BorderBrush = new SolidColorBrush((Color)this.Resources["WindowColorDeactive"]);
            this.foc.Visibility = Visibility.Visible;
        }
    }

    public class FormContent
    {
        public readonly AppForm Form;
        public readonly ContentFormPage Content;

        public FormContent (AppForm form, ContentFormPage content)
        {
            this.Form = form;
            content.setForm(form);
            this.Content = content;
        }
    }

    struct FormData
    {
        public string Title;
        public ContentFormPage Content;
        public bool Resizible;

    }
}

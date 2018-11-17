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

        private int[] minSize = {170, 50};
        private int p = 10;
        private Pos prevPos = new Pos(0, 0);
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

        private void Button_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            Button b = sender as Button;
            resizeOn = true;
            b.Content = "press";
            prevPos = new Pos(Mouse.GetPosition(this).Y, Mouse.GetPosition(this).X);
            p = Convert.ToInt16(b.Uid);
        }

        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
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
                Pos odds = Pos.odds(prevPos, now);
                switch (p)
                {
                    case 1: break;
                    case 2: break;
                    case 3: break;
                    case 4: break;
                    case 5:
                        if (Mouse.GetPosition(this).Y < minSize[1]) now.Y = minSize[1];
                        if (Mouse.GetPosition(this).X < minSize[0]) now.X = minSize[0];

                        if (Mouse.GetPosition(this).X > minSize[0]) this.Width -= odds.X;
                        if (Mouse.GetPosition(this).Y > minSize[1]) this.Height -= odds.Y;
                        
                        prevPos = now;
                        break;
                    case 6: break;
                    case 7: break;
                    case 8: break;
                }
            } catch (ArgumentException)
            {
                if (this.Width  < minSize[0]) { this.Width  = minSize[0]; }
                if (this.Height < minSize[1]) { this.Height = minSize[1]; }
            }
            this.Title.Content = prevPos.X + " - " + prevPos.Y;
        }

        private void bu_PreviewMouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            resizeOn = false;
        }

        private void UserControl_PreviewMouseDown(object sender, MouseButtonEventArgs e)
        {
            HF.toFrontObj(this, grid);
        }
    }
}

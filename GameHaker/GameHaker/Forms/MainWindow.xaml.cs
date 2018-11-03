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
using System.Runtime.InteropServices;
using System.Windows.Forms.Integration;
using GameHaker.Resource.pages;

namespace GameHaker
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        [DllImport("User32.dll")]
        private static extern bool SetCursorPos(int X, int Y);

        private bool isLoadedEnd = false;

        private TranslateTransform trT = new TranslateTransform();
        private TransformGroup trG = new TransformGroup();

        public MainWindow()
        {
            InitializeComponent();
            
        }

        private void PageChange(object obj, RoutedEventArgs e)
        {
            Button sender = obj as Button;
            Page p;
            switch (sender.Uid) {
                default:
                    p = new Page1();
                    break;

                case "Page2":
                    p = new Page2();
                    break;
            }
            FrameObj.Content = p;
        }

        public bool isDown = false;
        public Position oldPos;
        private void Button_MouseMove(object sender, MouseEventArgs e)
        {
            
        }

        public struct Position
        {
            public int left;
            public int bottom;
            public int top;
            public int right;

            public Position(int left, int right, int top, int bottom)
            {
                this.left = left;
                this.top = top;
                this.bottom = bottom;
                
                this.right = right;
            }

            public string ToStringT()
            {
                return "left: " + left + " top: " + top + " bottom: " + bottom + " right: " + right;
            }

            public static Position mathFunc (Position p1, Position p2, bool plus = true)
            {
                int func = (plus) ? 1 : -1;
                return new Position(p1.left + p2.left * func, p1.right + p2.right * func, p1.top + p2.top * func, p1.bottom + p2.bottom * func);
            }
        }

        private void Button_MouseDown(object sender, MouseButtonEventArgs e)
        {
            Control c = sender as Control;
            Position oldPos = new Position((int)Mouse.GetPosition(this).X, 0, (int)Mouse.GetPosition(this).Y, 0);
            this.oldPos = oldPos;
            isDown = true;
            pq.Content = "press";
        }

        private void Button_MouseUp(object sender, MouseButtonEventArgs e)
        {
            isDown = false;
        }

        private void Window_MouseMove(object sender, MouseEventArgs e)
        {
            Control c = test;
            if (isDown)
            {
                if (Mouse.GetPosition(this).Y > this.Height - 45)
                {
                    SetCursorPos((int)Mouse.GetPosition(this).X, (int)this.Height - 45);
                }

                Position oldPos = new Position((int)Mouse.GetPosition(this).X, 0, (int)Mouse.GetPosition(this).Y, 0);
                Position newPos = Position.mathFunc(this.oldPos, oldPos, false);
                
                c.Margin = new Thickness(-newPos.left + c.Margin.Left, -newPos.top + c.Margin.Top, newPos.right, newPos.bottom);
                
                this.oldPos = oldPos;
                if (Mouse.GetPosition(this).Y > this.Height - 45)
                {
                    SetCursorPos((int)Mouse.GetPosition(this).X, (int)this.Height - 45);
                }
                //System.Threading.Thread.Sleep(500);
            }
        }

        private void Window_Activated(object sender, EventArgs e)
        {
            
        }

        private void test_Click(object sender, RoutedEventArgs e)
        {
            App.Current.Shutdown();
        }

        private void TaskPanelBlock_Loaded(object sender, RoutedEventArgs e)
        {
            //testblock.image.Fill = GetImageBrush("Resource/img/Pysk_hover.png");
            testblock.image.Fill = GIB("DevelNextIco.png");
            testblock.notif.Fill = new SolidColorBrush(Color.FromArgb(100, 255, 255, 0));

            MenuPysk.notif.Fill = new SolidColorBrush(Color.FromArgb(0, 0, 0, 0));
        }




        private static ImageBrush GIB (string imgName)
        {
            return GetImageBrush(imgName);
        }

        private static ImageBrush GetImageBrush(string imgName)
        {
            ImageBrush imgBrush = new ImageBrush
            {
                ImageSource = new BitmapImage(new Uri(@"pack://application:,,,/GameHaker;component/Resource/img/" + imgName, UriKind.Absolute))
            };
            return imgBrush;
        }

        private void Window_Deactivated(object sender, EventArgs e)
        {
            if (isLoadedEnd == true) WindowState = WindowState.Minimized;
            else isLoadedEnd = true;

            trG.Children.Add(trT);
            but.Margin = new Thickness(0, 0, 0, 0);
        }

        private void Rectangle_LayoutUpdated(object sender, EventArgs e)
        {

            but.Width = -f.RenderTransform.Transform(new Point(0, 0)).X - 8 + l.RenderTransform.Transform(new Point(0, 0)).X;
            but.Height = -f.RenderTransform.Transform(new Point(0, 0)).Y - 8 + l.RenderTransform.Transform(new Point(0, 0)).Y;

            trT.X = f.RenderTransform.Transform(new Point(0, 0)).X + 8;
            trT.Y = f.RenderTransform.Transform(new Point(0, 0)).Y + 8;

            but.RenderTransform = trG;

            pq.Content = f.RenderTransform.Transform(new Point(0, 0)).X;
        }
    }

    
}



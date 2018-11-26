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
using GameHaker.Resource.control;

using GameHaker.Classes;

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
            testblock.image.Fill = HF.GIB("DevelNextIco.png");
            testblock.notif.Fill = new SolidColorBrush(Color.FromArgb(100, 255, 255, 0));

            MenuPysk.notif.Fill = new SolidColorBrush(Color.FromArgb(0, 0, 0, 0));
        }






        private void Window_Deactivated(object sender, EventArgs e)
        {
            //if (isLoadedEnd == true) WindowState = WindowState.Minimized;
            //else isLoadedEnd = true;


        }
        
        private Button createBut(int x, int y)
        {
            Button but = new Button();
            but.Content = x + " - " + y;

            but.Width = 50;
            but.Height = 30;
            but.HorizontalAlignment = HorizontalAlignment.Left;
            but.VerticalAlignment = VerticalAlignment.Top;

            TransformGroup gr = new TransformGroup();
            TranslateTransform tr = new TranslateTransform();
            tr.X = x;
            tr.Y = y;
            gr.Children.Add(tr);
            but.Click += delegate (object obj, RoutedEventArgs e)
            {
                HF.toFrontObj(but, MainPanel);
            };
            but.RenderTransform = gr;
            return but;
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            Button but;
            for (int i = 0; i < 4; i++)
            {
                but = createBut(i * 10, i * 10);
                MainPanel.Children.Add(but);
            }
        }

        private void AppForm_Loaded(object sender, RoutedEventArgs e)
        {
            AppForm s = sender as AppForm;
            s.grid = MainPanel;
        }

        
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            
            this.form.loadContent(new FormContent(this.form, new Resource.pages.Page1()));
            
        }

        private void Button_Click1(object sender, RoutedEventArgs e)
        {
            
        }
    }

    
}



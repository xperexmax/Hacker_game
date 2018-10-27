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
using System.Drawing;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Windows.Threading;

namespace GameHaker
{
    /// <summary>
    /// Логика взаимодействия для Main.xaml
    /// </summary>
    public partial class Main : Window
    {
        private List<MenuButtonsBackgroundBlur> listBut = new List<MenuButtonsBackgroundBlur>();
        public Main()
        {
            
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Window form = new MainWindow();
            form.Show();
            Hide();
            this.Close();
        }

        private void MenuButtonsBackgroundBlur_Loaded(object sender, RoutedEventArgs e)
        {
            MenuButtonsBackgroundBlur s = sender as MenuButtonsBackgroundBlur;
            listBut.Add(s);
            s.setBlurOptions(grid4, 30, this);
            s.OnBlur();
        }

        private void MenuButtonsBackgroundBlur_MouseUp(object sender, MouseButtonEventArgs e)
        {
            
            foreach (MenuButtonsBackgroundBlur s in listBut)
            {
                s.OffBlur();
            }
            
        }

        private void MenuButtonsBackgroundBlur_MouseUp_1(object sender, MouseButtonEventArgs e)
        {
            foreach (MenuButtonsBackgroundBlur s in listBut)
            {
                s.OnBlur();
            }
        }

        private void MediaElement_Loaded(object sender, RoutedEventArgs e)
        {
            MediaElement s = sender as MediaElement;
            s.Play();
        }

        

        private void window_KeyDown(object sender, KeyEventArgs e)
        {
            
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            Button s = sender as Button;
            s.Visibility = Visibility.Hidden;
        }

        private void MediaElement_MediaEnded(object sender, RoutedEventArgs e)
        {
            MediaElement s = sender as MediaElement;
            s.Position = new TimeSpan(0, 0, 0);
            s.Play();

        }
    }
}

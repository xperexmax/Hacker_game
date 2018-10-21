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

namespace GameHaker
{
    /// <summary>
    /// Логика взаимодействия для TaskPanelBlock.xaml
    /// </summary>
    public partial class TaskPanelBlock : UserControl
    {

        #region Ctor   

        public TaskPanelBlock()
        {
            InitializeComponent();
        }

        static TaskPanelBlock()
        {
            imageProperty = DependencyProperty.Register("Image", typeof(Brush), typeof(TaskPanelBlock), new FrameworkPropertyMetadata(null, new PropertyChangedCallback(ImagePropertyChange)));
            notifColorProperty = DependencyProperty.Register("NotifColor", typeof(Color), typeof(TaskPanelBlock), new FrameworkPropertyMetadata(Colors.White, new PropertyChangedCallback(NotifColorPropertyChange)));
            
        }

        #endregion

        #region Dependency Properties

        public static readonly DependencyProperty imageProperty;
        public static readonly DependencyProperty notifColorProperty;

        #endregion


        #region Propetries

        public Brush Image
        {
            get { return (Brush)GetValue(imageProperty); }
            set { SetValue(imageProperty, value); }
        }

        public Color NotifColor
        {
            get { return (Color)GetValue(notifColorProperty); }
            set { SetValue(notifColorProperty, value); }
        }

        #endregion

        private static void NotifColorPropertyChange(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            TaskPanelBlock c = obj as TaskPanelBlock;
            Color v = (Color)e.NewValue;
            c.notif.Fill = new SolidColorBrush(v);
        }

        private static void ImagePropertyChange(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            TaskPanelBlock c = obj as TaskPanelBlock;
            Brush v = (Brush)e.NewValue;
            c.image.Fill = v;
        }
    }
}

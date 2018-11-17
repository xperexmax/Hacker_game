using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Runtime.InteropServices;

namespace GameHaker.Classes
{
    class HF : HelpFunctions {}

    class HelpFunctions
    {
        static public void toFrontObj(UIElement obj, Grid parent)
        {
            parent.Children.Remove(obj);
            int i = 0;
            foreach (UIElement o in parent.Children)
            {
                if (parent.Children.IndexOf(o) != i)
                {
                    parent.Children.Remove(o);
                    parent.Children.Insert(i, o);
                }
                i++;
            }
            parent.Children.Add(obj);
        }

        static public ImageBrush GIB(string imgName)
        {
            return GetImageBrush(imgName);
        }

        static public ImageBrush GetImageBrush(string imgName)
        {
            ImageBrush imgBrush = new ImageBrush
            {
                ImageSource = new BitmapImage(new Uri(@"pack://application:,,,/GameHaker;component/Resource/img/" + imgName, UriKind.Absolute))
            };
            return imgBrush;
        }
    }
}

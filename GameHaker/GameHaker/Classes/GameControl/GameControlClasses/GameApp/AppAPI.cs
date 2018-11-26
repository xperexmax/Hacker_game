using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameHaker.Classes.GameControl.GameControlClasses.GameApp
{
    static class AppAPI
    {
    }

    abstract class Start_API
    {
        abstract public MainClass_API runApp(GameMode mode);
    }

    enum GameMode
    {
        Easy = 1,
        Medium = 2,
        Hard = 3,
        Sandbox = 0
    }

    class MainClass_API
    {
        readonly public GameMode Gamemode;

        public MainClass_API(GameMode mode)
        {
            Gamemode = mode;
        }
    }
}

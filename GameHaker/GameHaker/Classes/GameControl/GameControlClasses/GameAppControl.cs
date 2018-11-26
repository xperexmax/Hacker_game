using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameHaker.Classes.GameControl.GameControlClasses.GameAppControl
{
    static class GameAppControl
    {
        readonly static public List<GameApp> Apps;
        public static bool killApp(GameApp app)
        {
            return app.killProcess();
        }
    }
}

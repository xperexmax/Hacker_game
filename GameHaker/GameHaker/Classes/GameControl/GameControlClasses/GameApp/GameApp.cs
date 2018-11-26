using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GameHaker.Resource.control;

namespace GameHaker.Classes.GameControl.GameControlClasses.GameAppControl
{
    class GameApp
    {
        //readonly public GameTaskPanelControl TaskPanelBlock = new GameTaskPanelControl();
        readonly public List<AppTaskBlock.DataAppTaskBlock> DataApp = new List<AppTaskBlock.DataAppTaskBlock>();
        private System.Threading.Thread Process;//TODO: Make class "ControlGameProcess" and replace "System.Threading.Thread" on this class

        public GameApp (GameControlClasses.GameApp.MainClass_API main)
        {
            GameAppControl.Apps.Add(this);
            
            RunApp(main);
        }

        public bool killProcess()
        {
            foreach (AppTaskBlock.DataAppTaskBlock t in DataApp)
            {
                if(t.KillProcess() != true)
                {
                    return false;
                }
            }
            return true;
        }

        static GameApp RunApp (GameControlClasses.GameApp.MainClass_API main)
        {
            
            return ReadDllApp(main);
        }

        private static GameApp ReadDllApp (GameControlClasses.GameApp.MainClass_API main)
        {
            return new GameApp(main);
            //TODO: Make API
        }
    }
}

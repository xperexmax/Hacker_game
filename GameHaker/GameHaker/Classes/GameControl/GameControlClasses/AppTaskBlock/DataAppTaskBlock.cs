using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameHaker.Classes.GameControl.GameControlClasses.AppTaskBlock
{
    class DataAppTaskBlock
    {
        public readonly string Name = "App";
        public readonly string Path = "Path/to/dll/file/app";
        public string Title = "Program";
        public readonly GameAppControl.GameApp App;
        private TaskPanelBlock Block = new TaskPanelBlock(HF.GIB("Pysk.png"), null);
        //private AppFrom From = new AppFrom();

        private System.Threading.Thread Process;//TODO: Make class "ControlGameProcess" and replace "System.Threading.Thread" on this class

        public DataAppTaskBlock(string name, string path, string title = null, GameAppControl.GameApp app = null, TaskPanelBlock block = null)
        {
            this.Name  = name;
            this.Path  = path;
            this.Title = title;
            this.Block = block;
            this.App   = app;
        }

        public bool KillProcess()
        {
            
            return true;
        } //TODO: Make kill process

        private void SetTitle()
        {

        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameHaker.Classes
{
    class GameFile
    {
        readonly public string Path;
        public string fileName
        {
            get  { return (string)fileName; }
            set  { fileName = renameFile(Path, value); }
        }

        private string renameFile (string path, string newName)
        {
            //TODO: Make rename file
            return "Name";
        }
    }
}

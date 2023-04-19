using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaModelo
{
    public class Permisos
    {
        public int IdPermisos { get; set; }
        public string Menu { get; set; }
        public string SubMenu { get; set; }
        public bool Activo { get; set; }
    }
}

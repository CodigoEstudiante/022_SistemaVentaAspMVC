using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaModelo
{
    public class Cliente
    {
        public int IdCliente { get; set; }
        public string TipoDocumento { get; set; }
        public string Nombre { get; set; }
        public string Direccion { get; set; }
        public string NumeroDocumento { get; set; }
        public string Telefono { get; set; }
        public bool Activo { get; set; }
    }
}

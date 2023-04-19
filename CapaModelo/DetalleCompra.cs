using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaModelo
{
    public class DetalleCompra
    {
        public int IdDetalleCompra { get; set; }
        public int IdCompra { get; set; }
        public Producto oProducto { get; set; }
        public int Cantidad { get; set; }
        public decimal PrecioUnitarioCompra { get; set; }
        public string TextoPrecioUnitarioCompra { get; set; }
        public decimal PrecioUnitarioVenta { get; set; }
        public string TextoPrecioUnitarioVenta { get; set; }
        public decimal TotalCosto { get; set; }
        public string TextoTotalCosto { get; set; }
        public bool Activo { get; set; }
        public DateTime FechaRegistro { get; set; }
    }
}

using CapaModelo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Linq;

namespace CapaDatos
{
    public class CD_Venta
    {

        public static CD_Venta _instancia = null;

        private CD_Venta()
        {

        }

        public static CD_Venta Instancia
        {
            get
            {
                if (_instancia == null)
                {
                    _instancia = new CD_Venta();
                }
                return _instancia;
            }
        }

        public int RegistrarVenta(string Detalle)
        {
            int respuesta = 0;
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("usp_RegistrarVenta", oConexion);
                    cmd.Parameters.Add("Detalle", SqlDbType.Xml).Value = Detalle;
                    cmd.Parameters.Add("Resultado", SqlDbType.Int).Direction = ParameterDirection.Output;
                    cmd.CommandType = CommandType.StoredProcedure;

                    oConexion.Open();

                    cmd.ExecuteNonQuery();

                    respuesta = Convert.ToInt32(cmd.Parameters["Resultado"].Value);

                }
                catch (Exception ex)
                {
                    respuesta = 0;
                }
            }
            return respuesta;
        }




        public Venta ObtenerDetalleVenta(int IdVenta)
        {
            Venta rptDetalleVenta = new Venta();
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                SqlCommand cmd = new SqlCommand("usp_ObtenerDetalleVenta", oConexion);
                cmd.Parameters.AddWithValue("@IdVenta", IdVenta);
                cmd.CommandType = CommandType.StoredProcedure;

                var NuevaCultura = CultureInfo.GetCultureInfo("es-PE");
                try
                {
                    oConexion.Open();
                    using (XmlReader dr = cmd.ExecuteXmlReader())
                    {
                        while (dr.Read())
                        {
                            XDocument doc = XDocument.Load(dr);
                            if (doc.Element("DETALLE_VENTA") != null)
                            {
                                rptDetalleVenta = (from dato in doc.Elements("DETALLE_VENTA")
                                                   select new Venta()
                                                   {
                                                       TipoDocumento = dato.Element("TipoDocumento").Value,
                                                       Codigo = dato.Element("Codigo").Value,
                                                       TotalCosto = float.Parse(dato.Element("TotalCosto").Value, NuevaCultura),
                                                       ImporteRecibido = float.Parse(dato.Element("ImporteRecibido").Value, NuevaCultura),
                                                       ImporteCambio = float.Parse(dato.Element("ImporteCambio").Value, NuevaCultura),
                                                       FechaRegistro = dato.Element("FechaRegistro").Value
                                                   }).FirstOrDefault();
                                rptDetalleVenta.oUsuario = (from dato in doc.Element("DETALLE_VENTA").Elements("DETALLE_USUARIO")
                                                            select new Usuario()
                                                            {
                                                                Nombres = dato.Element("Nombres").Value,
                                                                Apellidos = dato.Element("Apellidos").Value,
                                                            }).FirstOrDefault();
                                rptDetalleVenta.oTienda = (from dato in doc.Element("DETALLE_VENTA").Elements("DETALLE_TIENDA")
                                                           select new Tienda()
                                                           {
                                                               RUC = dato.Element("RUC").Value,
                                                               Nombre = dato.Element("Nombre").Value,
                                                               Direccion = dato.Element("Direccion").Value
                                                           }).FirstOrDefault();
                                rptDetalleVenta.oCliente = (from dato in doc.Element("DETALLE_VENTA").Elements("DETALLE_CLIENTE")
                                                            select new Cliente()
                                                            {
                                                                Nombre = dato.Element("Nombre").Value,
                                                                Direccion = dato.Element("Direccion").Value,
                                                                NumeroDocumento = dato.Element("NumeroDocumento").Value,
                                                                Telefono = dato.Element("Telefono").Value
                                                            }).FirstOrDefault();
                                rptDetalleVenta.oListaDetalleVenta = (from producto in doc.Element("DETALLE_VENTA").Element("DETALLE_PRODUCTO").Elements("PRODUCTO")
                                                                      select new DetalleVenta()
                                                                      {
                                                                          Cantidad = int.Parse(producto.Element("Cantidad").Value),
                                                                          NombreProducto = producto.Element("NombreProducto").Value,
                                                                          PrecioUnidad = float.Parse(producto.Element("PrecioUnidad").Value, NuevaCultura),
                                                                          ImporteTotal = float.Parse(producto.Element("ImporteTotal").Value, NuevaCultura)
                                                                      }).ToList();
                            }
                            else
                            {
                                rptDetalleVenta = null;
                            }
                        }

                        dr.Close();

                    }

                    return rptDetalleVenta;
                }
                catch (Exception ex)
                {
                    rptDetalleVenta = null;
                    return rptDetalleVenta;
                }
            }
        }

        public List<Venta> ObtenerListaVenta(string Codigo, DateTime FechaInicio, DateTime FechaFin, string NumeroDocumento, string Nombre)
        {
            List<Venta> rptListaVenta = new List<Venta>();
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                SqlCommand cmd = new SqlCommand("usp_ObtenerListaVenta", oConexion);
                cmd.Parameters.AddWithValue("@Codigo", Codigo);
                cmd.Parameters.AddWithValue("@FechaInicio", FechaInicio);
                cmd.Parameters.AddWithValue("@FechaFin", FechaFin);
                cmd.Parameters.AddWithValue("@NumeroDocumento", NumeroDocumento);
                cmd.Parameters.AddWithValue("@Nombre", Nombre);
                cmd.CommandType = CommandType.StoredProcedure;

                try
                {
                    oConexion.Open();
                    SqlDataReader dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        rptListaVenta.Add(new Venta()
                        {
                            IdVenta = Convert.ToInt32(dr["IdVenta"].ToString()),
                            TipoDocumento = dr["TipoDocumento"].ToString(),
                            Codigo = dr["Codigo"].ToString(),
                            FechaRegistro = Convert.ToDateTime(dr["FechaRegistro"].ToString()).ToString("dd/MM/yyyy"),
                            VFechaRegistro = Convert.ToDateTime(dr["FechaRegistro"].ToString()),
                            oCliente = new Cliente() { NumeroDocumento = dr["NumeroDocumento"].ToString(), Nombre = dr["Nombre"].ToString() },
                            TotalCosto = float.Parse(dr["TotalCosto"].ToString())
                        });
                    }
                    dr.Close();

                    return rptListaVenta;

                }
                catch (Exception ex)
                {
                    rptListaVenta = null;
                    return rptListaVenta;
                }
            }
        }

    }
}

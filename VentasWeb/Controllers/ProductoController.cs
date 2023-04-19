using CapaDatos;
using CapaModelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace VentasWeb.Controllers
{
    public class ProductoController : Controller
    {
        // GET: Producto
        public ActionResult Crear()
        {
            return View();
        }

        // GET: Producto
        public ActionResult Asignar()
        {
            return View();
        }



        public JsonResult Obtener()
        {
            List<Producto> lista = CD_Producto.Instancia.ObtenerProducto();
            return Json(new { data = lista }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult ObtenerPorTienda(int IdTienda)
        {

            List<Producto> oListaProducto = CD_Producto.Instancia.ObtenerProducto();
            List<ProductoTienda> oListaProductoTienda = CD_ProductoTienda.Instancia.ObtenerProductoTienda();

            oListaProducto = oListaProducto.Where(x => x.Activo == true).ToList();
            if (IdTienda != 0)
            {
                oListaProductoTienda = oListaProductoTienda.Where(x => x.oTienda.IdTienda == IdTienda).ToList();
                oListaProducto = (from producto in oListaProducto
                                  join productotienda in oListaProductoTienda on producto.IdProducto equals productotienda.oProducto.IdProducto
                                  where productotienda.oTienda.IdTienda == IdTienda
                                  select producto).ToList();
            }

            return Json(new { data = oListaProducto }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult Guardar(Producto objeto)
        {
            bool respuesta = false;

            if (objeto.IdProducto == 0)
            {

                respuesta = CD_Producto.Instancia.RegistrarProducto(objeto);
            }
            else
            {
                respuesta = CD_Producto.Instancia.ModificarProducto(objeto);
            }


            return Json(new { resultado = respuesta }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult Eliminar(int id = 0)
        {
            bool respuesta = CD_Producto.Instancia.EliminarProducto(id);

            return Json(new { resultado = respuesta }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult RegistrarProductoTienda(ProductoTienda objeto)
        {
            bool respuesta = CD_ProductoTienda.Instancia.RegistrarProductoTienda(objeto);
            return Json(new { resultado = respuesta }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult ModificarProductoTienda(ProductoTienda objeto)
        {
            bool respuesta = CD_ProductoTienda.Instancia.ModificarProductoTienda(objeto);
            return Json(new { resultado = respuesta }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult EliminarProductoTienda(int id)
        {
            bool respuesta = CD_ProductoTienda.Instancia.EliminarProductoTienda(id);
            return Json(new { resultado = respuesta }, JsonRequestBehavior.AllowGet);
        }


        [HttpGet]
        public JsonResult ObtenerAsignaciones()
        {
            List<ProductoTienda> lista = CD_ProductoTienda.Instancia.ObtenerProductoTienda();
            return Json(new { data = lista }, JsonRequestBehavior.AllowGet);
        }
    }
}
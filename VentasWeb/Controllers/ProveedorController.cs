using CapaDatos;
using CapaModelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using VentasWeb.Utilidades;

namespace VentasWeb.Controllers
{
    public class ProveedorController : Controller
    {
        // GET: Proveedor
        public ActionResult Crear()
        {
            return View();
        }

        public JsonResult Obtener()
        {
            List<Proveedor> olista = CD_Proveedor.Instancia.ObtenerProveedor();
            return Json(new { data = olista }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult Guardar(Proveedor objeto)
        {
            bool respuesta = false;

            if (objeto.IdProveedor == 0)
            {

                respuesta = CD_Proveedor.Instancia.RegistrarProveedor(objeto);
            }
            else
            {
                respuesta = CD_Proveedor.Instancia.ModificarProveedor(objeto);
            }


            return Json(new { resultado = respuesta }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult Eliminar(int id = 0)
        {
            bool respuesta = CD_Proveedor.Instancia.EliminarProveedor(id);

            return Json(new { resultado = respuesta }, JsonRequestBehavior.AllowGet);
        }

    }
}
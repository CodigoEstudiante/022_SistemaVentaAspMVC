using CapaDatos;
using CapaModelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace VentasWeb.Controllers
{
    public class TiendaController : Controller
    {
        // GET: Tienda
        public ActionResult Crear()
        {
            return View();
        }

        public JsonResult Obtener()
        {
            List<Tienda> lista = CD_Tienda.Instancia.ObtenerTiendas();
            return Json(new { data = lista }, JsonRequestBehavior.AllowGet);
        }
    
        [HttpPost]
        public JsonResult Guardar(Tienda objeto)
        {
            bool respuesta = false;

            if (objeto.IdTienda == 0)
            {

                respuesta = CD_Tienda.Instancia.RegistrarTienda(objeto);
            }
            else
            {
                respuesta = CD_Tienda.Instancia.ModificarTienda(objeto);
            }


            return Json(new { resultado = respuesta }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult Eliminar(int id = 0)
        {
            bool respuesta = CD_Tienda.Instancia.EliminarTienda (id);

            return Json(new { resultado = respuesta }, JsonRequestBehavior.AllowGet);
        }
    }
}
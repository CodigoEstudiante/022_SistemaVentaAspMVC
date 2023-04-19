using CapaDatos;
using CapaModelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace VentasWeb.Controllers
{
    public class CategoriaController : Controller
    {
        // GET: Categoria
        public ActionResult Crear()
        {
            return View();
        }


        public JsonResult Obtener()
        {
            List<Categoria> lista = CD_Categoria.Instancia.ObtenerCategoria();
            return Json(new { data = lista }, JsonRequestBehavior.AllowGet);
        }


        [HttpPost]
        public JsonResult Guardar(Categoria objeto)
        {
            bool respuesta = false;

            if (objeto.IdCategoria == 0)
            {

                respuesta = CD_Categoria.Instancia.RegistrarCategoria(objeto);
            }
            else
            {
                respuesta = CD_Categoria.Instancia.ModificarCategoria(objeto);
            }


            return Json(new { resultado = respuesta }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult Eliminar(int id = 0)
        {
            bool respuesta = CD_Categoria.Instancia.EliminarCategoria(id);

            return Json(new { resultado = respuesta }, JsonRequestBehavior.AllowGet);
        }

    }
}
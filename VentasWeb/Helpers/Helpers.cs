using CapaDatos;
using CapaModelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;

namespace VentasWeb.Helpers
{
    public static class Helpers
    {
        public static MvcHtmlString ActionLinkAllow(this HtmlHelper helper)
        {

            StringBuilder sb = new StringBuilder();

            if (HttpContext.Current.Session["Usuario"] != null)
            {

                Usuario oUsuario = (Usuario)HttpContext.Current.Session["Usuario"];

                Usuario rptUsuario = CD_Usuario.Instancia.ObtenerDetalleUsuario(oUsuario.IdUsuario);


                foreach (Menu item in rptUsuario.oListaMenu)
                {
                    sb.AppendLine("<li class='nav-item dropdown'>");
                    sb.AppendLine("<a class='nav-link dropdown-toggle' href='#' data-toggle='dropdown'><i class='" + item.Icono +"'></i> " + item.Nombre + "</a>");

                    sb.AppendLine("<div class='dropdown-menu drop-menu'>");
                    foreach (SubMenu subitem in item.oSubMenu)
                    {
                        //fas fa-caret-right
                        if(subitem.Activo == true)
                            sb.AppendLine("<a class='dropdown-item' name='" + item.Nombre + "' href='/" + subitem.Controlador + "/" + subitem.Vista + "'><i class='" + subitem.Icono + "'></i> " + subitem.Nombre + "</a>");

                    }
                    sb.AppendLine("</div>");

                    sb.AppendLine("</li>");
                }


            }


            return new MvcHtmlString(sb.ToString());
        }

    }
}
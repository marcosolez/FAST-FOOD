using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SALT_PEPER.ENTIDADES;
using SALT_PEPER.ENTIDADES.DTOs;
using SALT_PEPER.NEGOCIO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SALT_PEPER.Controllers
{
    [Authorize(Roles = "Administrador,Cajero,Cocinero")]
    public class FacturaController : Controller
    {
        private readonly PlatilloBAL _context;
        private readonly OrdenBAL _contextOrden;

        public FacturaController()
        {
            _context = new PlatilloBAL();
            _contextOrden = new OrdenBAL();
        }
        public IActionResult Index()
        {
            ViewBag.Titulo = "Generar orden ";
            ViewBag.ListaPlatillos = _context.GetPlatilloPorParaSelect();


            return View(new OrdenDTO() { FECHAPEDIDO=DateTime.Now, FECHASTRING= $"{DateTime.Now.Day}/{DateTime.Now.Month}/{DateTime.Now.Year}" });
        }

        [HttpGet]
        public JsonResult ListarOrdenes(string fecha)
        {
            if (fecha==null)
            {
                fecha = $"{DateTime.Now.Day}/{DateTime.Now.Month}/{DateTime.Now.Year}";
            }           
            var ordenes = _contextOrden.GetAllOrdenes(fecha);
            return Json(ordenes);
        }

        [HttpGet]
        public JsonResult GetOrdenesByTipos(string tipo, string fecha)
        {
            if (fecha == null)
            {
                fecha = $"{DateTime.Now.Day}/{DateTime.Now.Month}/{DateTime.Now.Year}";
            }
            var ordenes = _contextOrden.GetOrderByTipo(tipo, fecha);
            return Json(ordenes);
        }

        [HttpPost]
        public IActionResult GuardarOrden([FromBody]OrdenDTO orden)
        {
            orden.USERNAME = User.Identity.Name;
            var resp = _contextOrden.GuardarOrdenesyDetalles(orden);
            return Json(new { data = resp });
        }

        public IActionResult AnularFinalizarOrden(int pk, string tipo)
        {
            var resp = _contextOrden.AnularFinalizarOrden(pk,tipo);
            return Json(new { data = resp });
        }

        public IActionResult ListadoOrdenes()
        {
            var resp = _contextOrden.ListadoOrdenesHistorial();
            return View(resp);
        }

        [HttpGet]
        public JsonResult VerificaExistenciaIngredientes(int pk, int cant)
        {   
            var exietencia = _contextOrden.VerificaExistenciaIngrediente(pk, cant);
            return Json(exietencia);
        }
    }
}

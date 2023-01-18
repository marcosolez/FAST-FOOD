using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SALT_PEPER.NEGOCIO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SALT_PEPER.Controllers
{
    [Authorize(Roles = "Administrador")]
    public class InventarioController : Controller
    {
        private readonly InventarioBAL _context;

        public InventarioController()
        {
            _context = new InventarioBAL();
        }

        public IActionResult Index()
        {
            ViewBag.Titulo = "Inventario";
            return View(_context.GetInventario()); ;
        }
    }
}

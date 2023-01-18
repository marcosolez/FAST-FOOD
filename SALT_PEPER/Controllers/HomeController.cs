using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using SALT_PEPER.ENTIDADES;
using SALT_PEPER.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace SALT_PEPER.Controllers 
{
 
    [Authorize(Roles = "Cocinero,Administrador,Cajero")]
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        RoleManager<IdentityRole> _roleManager;
        UserManager<ApplicationUser> _userManager;
      
        public HomeController(ILogger<HomeController> logger, RoleManager<IdentityRole> roleManager, UserManager<ApplicationUser> userManager)
        {
            _logger = logger;
            _roleManager = roleManager;
            _userManager = userManager;
        }

        public IActionResult Index()
        {
            var rolesApp =  _roleManager.Roles.ToList();
            ViewBag.Titulo = "Inicio";
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}

using Microsoft.AspNetCore.Mvc;
using SanaFirstTask.Models;
using System.Diagnostics;

namespace SanaFirstTask.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }
        public IActionResult Entername()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Entername(string name)
        {
            ViewData["name"] = name;    
            return View("Output");
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
using System.Diagnostics;
using API_demo.Models;
using Microsoft.AspNetCore.Mvc;

namespace API_demo.Controllers
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
            return View();     //to return different types of data- IAction result -- I- Interface
        }

        public IActionResult Privacy()
        {
            return View();     // framework determines view based on controller name and action name
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}

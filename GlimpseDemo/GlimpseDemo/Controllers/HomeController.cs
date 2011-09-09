using System.Web.Mvc;

namespace GlimpseDemo.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Other()
        {
            return View();
        }
    }
}

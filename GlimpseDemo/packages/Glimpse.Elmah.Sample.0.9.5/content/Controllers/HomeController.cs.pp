using System;
using System.Linq;
using System.Reflection;
using System.Web.Mvc;
using $rootnamespace$.Models.Home;

namespace $rootnamespace$.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
        	var exceptionType = (typeof (Exception));
        	var exceptionTypes = Assembly
				.GetAssembly(exceptionType)
        		.GetTypes()
        		.Where(t => t.IsSubclassOf(exceptionType))
				.ToList();

        	var model = new IndexModel {ExceptionTypes = exceptionTypes};
            return View(model);
        }

		[HttpPost]
		public ActionResult Index(IndexModel model)
		{
			var exceptionType = Type.GetType(model.ExceptionTypeToThrow);
			var exception = (Exception) Activator.CreateInstance(exceptionType);
			throw exception;
		}
    }
}
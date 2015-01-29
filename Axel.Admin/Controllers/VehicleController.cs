using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Axel.Admin.Models;

namespace Axel.Admin.Controllers
{
    public class VehicleController : Controller
    {
        //
        // GET: /Vehicle/

        public ActionResult Index()
        {
            return View();
        }
        public ActionResult WebPage()
        {
            return View();
        }
        [HttpPost]
        public ActionResult WebPage(VehicleModel Model)
        {
            return View();
        }

    }
}

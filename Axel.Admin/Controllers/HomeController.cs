using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Axel.Admin.Models;
using System.Xml;
using System.Data;
using System.Text;
using System.Xml.Linq;


namespace Axel.Admin.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            Session["USERID"] = null;
            return View();
        }

        [HttpPost]
        public ActionResult Index(UserModel Model)
        {
            Session["USERID"] = 1;
            return RedirectToAction("Index_Dashboard", "Admin");
        }

        public ActionResult About()
        {
            return View();
        }

        public ActionResult Contact()
        {
            return View();
        }
    }
}

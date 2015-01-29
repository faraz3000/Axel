using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Axel.Admin.Controllers
{
    public class AdminController : Controller
    {
        //
        // GET: /Admin/

        public ActionResult Index_Dashboard()
        {
            return View();
        }
        public ActionResult Index_Setup()
        {
            return View();
        }
        public ActionResult Index_Reports()
        {
            return View();
        }
        public ActionResult Index_Settings()
        {
            return View();
        }
    }
}

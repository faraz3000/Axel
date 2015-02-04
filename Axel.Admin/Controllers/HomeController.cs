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
using Brill;


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
        public ActionResult Index(UserModel Model, string ReturnUrl= null)
        {
            try
            {
                new Brill.Helper().CreateTableInDatabaseByModel(new VehicleModel());
                //new Brill.Helper().CreateTableInDatabaseByModel(new AppointmentModel());
            }
            catch { }
            
            if (string.IsNullOrEmpty(Model.USER_NAME))
            {
                return View(Model);
            }
            if (string.IsNullOrEmpty(Model.PASSWORD))
            {
                return View(Model);
            }

            Model = new Brill.Helper().SelectModelFromDatabase(Model);
            if (Model.SEQ_ID > 0)
            {
                Session["USERID"] = Model.SEQ_ID;
                if (ReturnUrl == null)
                {
                    return RedirectToAction("Dashboard", "Admin");
                }
                else
                {
                    return Redirect(ReturnUrl);
                }
            }
            else
            {
                ViewBag.Message = "Invalid username and password";
                return View(Model);
            }
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

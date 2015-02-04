using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Axel.Admin.Models;
using NIDP.Filters;

namespace Axel.Admin.Controllers
{
    public class VehicleController : Controller
    {
        //
        // GET: /Vehicle/
        [SessionExpireFilterAttribute]
        public ActionResult Index()
        {
            VehicleModel Model = new VehicleModel();
            Model.ACTIVE = true;
            List<VehicleModel> ModelList = new Brill.Helper().SelectModelListFromDatabase(Model);

            Helper();
            return View(ModelList);
        }
        [SessionExpireFilterAttribute]
        public ActionResult WebPage(string ID = null)
        {
            VehicleModel Model = new VehicleModel();

            if (!string.IsNullOrEmpty(ID))
            {
                Model.SEQ_ID = Convert.ToInt32(ID);
                Model = new Brill.Helper().SelectModelFromDatabase(Model);
            }
            Helper();
            return View(Model);
        }
        [HttpPost]
        [SessionExpireFilterAttribute]
        public ActionResult WebPage(VehicleModel Model)
        {
            Boolean New = (Request.Form).AllKeys[(Request.Form).AllKeys.GetUpperBound(0)].Trim() == "savenew" ? true : false;

            try
            {
                if (Model.SEQ_ID > 0)
                {
                    Model.MODIFIED_BY = Convert.ToInt32(Session["USERID"]);
                    Model.MODIFIED_ON = DateTime.Now;
                    new Brill.Helper().UpdateModelInDatabase(Model);
                }
                else
                {
                    Model.CREATED_BY = Convert.ToInt32(Session["USERID"]);
                    Model.CREATED_ON = DateTime.Now;
                    new Brill.Helper().InsertModelInDatabase(Model);
                }

                if (New)
                { return RedirectToAction("WebPage", "Vehicle"); }
                else
                { return RedirectToAction("Index", "Vehicle"); }
            }
            catch(Exception ex)
            {
                Helper();
                ViewBag.Message = ex.InnerException;
                return View(Model);
            }
        }
        [SessionExpireFilterAttribute]
        public ActionResult Delete(string ID)
        {
            VehicleModel Model = new VehicleModel();
            Model.SEQ_ID = Convert.ToInt32(ID);
            new Brill.Helper().DeleteModelInDatabase(Model);
            return RedirectToAction("Index", "Vehicle");
        }


        void Helper()
        {
            GetManufacturers();
            GetClasses();
        }

        void GetManufacturers()
        {
            ViewData["ManufacturerList"] = new SelectList(HelperModel.GetDropDownValues(HelperModel.MANUFACTURER), "SEQ_ID", "ATTR_NAME");
        }
        void GetClasses()
        {
            ViewData["ClassList"] = new SelectList(HelperModel.GetDropDownValues(HelperModel.CLASS_TYPE), "SEQ_ID", "ATTR_NAME");
        }
    }
}

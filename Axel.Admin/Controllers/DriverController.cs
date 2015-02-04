using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Axel.Admin.Models;
using NIDP.Filters;

namespace Axel.Admin.Controllers
{
    public class DriverController : Controller
    {
        //
        // GET: /Driver/
        [SessionExpireFilterAttribute]
        public ActionResult Index()
        {
            DriverModel Model = new DriverModel();
            Model.ACTIVE = true;
            List<DriverModel> ModelList = new Brill.Helper().SelectModelListFromDatabase(Model);

            Helper();
            return View(ModelList);
        }
        [SessionExpireFilterAttribute]
        public ActionResult WebPage(string ID = null)
        {
            DriverModel Model = new DriverModel();

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
        public ActionResult WebPage(DriverModel Model)
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
                { return RedirectToAction("WebPage", "Driver"); }
                else
                { return RedirectToAction("Index", "Driver"); }

            }
            catch (Exception ex)
            {
                Helper();
                ViewBag.Message = ex.Message;
                return View(Model);
            }
        }
        [SessionExpireFilterAttribute]
        public ActionResult Delete(string ID)
        {
            DriverModel Model = new DriverModel();
            Model.SEQ_ID = Convert.ToInt32(ID);
            new Brill.Helper().DeleteModelInDatabase(Model);
            return RedirectToAction("Index", "Driver");
        }

        void Helper()
        {
            GetCities();
            GetCounties();
            GetCarTypes();
            GetDriverTypes();
            GetVehicleTypes();
            GetCarOwners();
            GetColours();
        }

        void GetCarTypes()
        {
            ViewData["CarTypeList"] = new SelectList(HelperModel.GetDropDownValues(HelperModel.CAR_TYPE), "SEQ_ID", "ATTR_NAME");
        }
        void GetCities()
        {
            ViewData["CityList"] = new SelectList(HelperModel.GetDropDownValues(HelperModel.CITY), "SEQ_ID", "ATTR_NAME");
        }
        void GetCounties()
        {
            ViewData["CountyList"] = new SelectList(HelperModel.GetDropDownValues(HelperModel.COUNTY), "SEQ_ID", "ATTR_NAME");
        }
        void GetDriverTypes()
        {
            ViewData["DriverTypeList"] = new SelectList(HelperModel.GetDropDownValues(HelperModel.DRIVER_TYPE), "SEQ_ID", "ATTR_NAME");
        }
        void GetVehicleTypes()
        {
            ViewData["VehicleTypeList"] = new SelectList(HelperModel.GetDropDownValues(HelperModel.VEHICLE_TYPE), "SEQ_ID", "ATTR_NAME");
        }
        void GetCarOwners()
        {
            ViewData["CarOwnerList"] = new SelectList(HelperModel.GetDropDownValues(HelperModel.CAR_OWNER), "SEQ_ID", "ATTR_NAME");
        }
        void GetColours()
        {
            ViewData["ColourList"] = new SelectList(HelperModel.GetDropDownValues(HelperModel.COLOUR), "SEQ_ID", "ATTR_NAME");
        }
    }
}

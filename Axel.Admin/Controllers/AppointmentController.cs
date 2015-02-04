using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using System.Xml;
using System.Xml.Linq;
using Axel.Admin.Models;
using NIDP.Filters;

namespace Axel.Admin.Controllers
{
    public class AppointmentController : Controller
    {

        //
        // GET: /Appointment/
        [SessionExpireFilterAttribute]
        public ActionResult WebPage(string ID = null)
        {
            AppointmentModel Model = new AppointmentModel();

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
        public ActionResult WebPage(AppointmentModel Model)
        {
            Boolean New = (Request.Form).AllKeys[(Request.Form).AllKeys.GetUpperBound(0)].Trim() == "savenew" ? true : false;

            try
            {
                if (Model.CUSTOMER_SEQ_ID > 0)
                {
                    CustomerModel subModel = new CustomerModel();
                    subModel.SEQ_ID = Model.CUSTOMER_SEQ_ID;
                    subModel = new Brill.Helper().SelectModelFromDatabase(subModel);
                    Model.FIRST_NAME = subModel.FIRST_NAME;
                    Model.LAST_NAME = subModel.LAST_NAME;
                    Model.MOBILE_NO = subModel.MOBILE_NO;
                    Model.PAYMENT_MODE_SEQ_ID = subModel.PAYMENT_MODE_SEQ_ID;
                    Model.CUSTOMER_TYPE_SEQ_ID = subModel.CUSTOMER_TYPE_SEQ_ID;
                }
                else
                {
                    CustomerModel subModel = new CustomerModel();
                    subModel.FIRST_NAME = Model.FIRST_NAME;
                    subModel.LAST_NAME = Model.LAST_NAME;
                    subModel.MOBILE_NO = Model.MOBILE_NO;
                    subModel.PAYMENT_MODE_SEQ_ID = Model.PAYMENT_MODE_SEQ_ID;
                    subModel.CUSTOMER_TYPE_SEQ_ID = Model.CUSTOMER_TYPE_SEQ_ID;
                    subModel.CREATED_BY = Convert.ToInt32(Session["USERID"]);
                    subModel.CREATED_ON = DateTime.Now;

                    Model.CUSTOMER_SEQ_ID = new Brill.Helper().InsertModelInDatabase(subModel);
                }


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
                { return RedirectToAction("WebPage", "Appointment"); }
                else
                { return RedirectToAction("Dashboard", "Admin"); }

            }
            catch (Exception ex)
            {
                Helper();
                ViewBag.Message = ex.InnerException;
                return View(Model);
            }
        }

        #region Customer
        [SessionExpireFilterAttribute]
        public ActionResult Customer(string ID = null)
        {
            AppointmentModel Model = new AppointmentModel();

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
        public ActionResult Customer(AppointmentModel Model)
        {
            Boolean New = (Request.Form).AllKeys[(Request.Form).AllKeys.GetUpperBound(0)].Trim() == "savenew" ? true : false;

            try
            {
                if (Model.CUSTOMER_SEQ_ID > 0)
                {
                    CustomerModel subModel = new CustomerModel();
                    subModel.SEQ_ID = Model.CUSTOMER_SEQ_ID;
                    subModel = new Brill.Helper().SelectModelFromDatabase(subModel);
                    Model.FIRST_NAME = subModel.FIRST_NAME;
                    Model.LAST_NAME = subModel.LAST_NAME;
                    Model.MOBILE_NO = subModel.MOBILE_NO;
                    Model.PAYMENT_MODE_SEQ_ID = subModel.PAYMENT_MODE_SEQ_ID;
                    Model.CUSTOMER_TYPE_SEQ_ID = subModel.CUSTOMER_TYPE_SEQ_ID;
                }
                else
                {
                    CustomerModel subModel = new CustomerModel();
                    subModel.FIRST_NAME = Model.FIRST_NAME;
                    subModel.LAST_NAME = Model.LAST_NAME;
                    subModel.MOBILE_NO = Model.MOBILE_NO;
                    subModel.PAYMENT_MODE_SEQ_ID = Model.PAYMENT_MODE_SEQ_ID;
                    subModel.CUSTOMER_TYPE_SEQ_ID = Model.CUSTOMER_TYPE_SEQ_ID;
                    subModel.CREATED_BY = Convert.ToInt32(Session["USERID"]);
                    subModel.CREATED_ON = DateTime.Now;

                    Model.CUSTOMER_SEQ_ID = new Brill.Helper().InsertModelInDatabase(subModel);
                }


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
                { return RedirectToAction("WebPage", "Appointment"); }
                else
                { return RedirectToAction("Dashboard", "Admin"); }

            }
            catch (Exception ex)
            {
                Helper();
                ViewBag.Message = ex.InnerException;
                return View(Model);
            }
        }
        #endregion


        [SessionExpireFilterAttribute]
        public JsonResult CalculateDistance(string origin = null, string destination = null)
        {
            string distance = "";
            WebClient client = new WebClient();
            Stream stream = client.OpenRead("http://maps.googleapis.com/maps/api/distancematrix/xml?origins=" + origin + "&destinations=" + destination + "&mode=car&language=en-GB&sensor=false");
            XmlDocument doc = new XmlDocument();
            doc.Load(stream);
            try
            {
                distance = doc.SelectSingleNode("*//distance//text").InnerText;
            }
            catch { return Json(null, JsonRequestBehavior.AllowGet); }

            return Json(distance, JsonRequestBehavior.AllowGet);
        }

        [SessionExpireFilterAttribute]
        public JsonResult CalculateFare(string distance = null, string fare = null)
        {
            if (!string.IsNullOrEmpty(distance) && !string.IsNullOrEmpty(fare))
            {
                string[] dist = distance.Split(' ');
                if (dist.Length == 2)
                {
                    distance = dist[dist.GetLowerBound(0)];

                    if (dist[dist.GetUpperBound(0)] == "m") 
                    {
                        fare = Convert.ToString(Convert.ToDouble(distance) / 1000 * Convert.ToDouble(fare));
                    }
                    else if (dist[dist.GetUpperBound(0)] == "km")
                    {
                        fare = Convert.ToString(Convert.ToDouble(distance) * Convert.ToDouble(fare));
                    }

                }
            }
            return Json(fare, JsonRequestBehavior.AllowGet);
        }

        [SessionExpireFilterAttribute]
        public JsonResult FetchCustomerData(string sID = null, string sMobile = null, string sFirstName = null, string sLastName = null)
        {
            CustomerModel Model = new CustomerModel();
            if (!string.IsNullOrEmpty(sID))
            {
                Model.SEQ_ID = Convert.ToInt32(sID);
                Model = new Brill.Helper().SelectModelFromDatabase(Model);
            }
            else if (!string.IsNullOrEmpty(sMobile))
            {
                Model.MOBILE_NO = sMobile.Trim();
                Model = new Brill.Helper().SelectModelFromDatabase(Model);
            }
            else if (!string.IsNullOrEmpty(sFirstName) && !string.IsNullOrEmpty(sLastName))
            {
                Model.FIRST_NAME = sFirstName.Trim();
                Model.LAST_NAME = sLastName.Trim();
                Model = new Brill.Helper().SelectModelFromDatabase(Model);
            }
            else if (!string.IsNullOrEmpty(sFirstName))
            {
                Model.FIRST_NAME = sFirstName.Trim();
                Model = new Brill.Helper().SelectModelFromDatabase(Model);
            }
            else if (!string.IsNullOrEmpty(sLastName))
            {
                Model.LAST_NAME = sLastName.Trim();
                Model = new Brill.Helper().SelectModelFromDatabase(Model);
            }
            else
            {
                return Json(null, JsonRequestBehavior.AllowGet);
            }

            //Session["FIRST_NAME"] = Model.FIRST_NAME;
            //Session["LAST_NAME"] = Model.LAST_NAME;
            //Session["MOBILE_NO"] = Model.MOBILE_NO;
            //Session["CUSTOMER_TYPE_SEQ_ID"] = Model.CUSTOMER_TYPE_SEQ_ID;
            //Session["PAYMENT_MODE_SEQ_ID"] = Model.PAYMENT_MODE_SEQ_ID;

            return Json(Model, JsonRequestBehavior.AllowGet);
        }

        void Helper()
        {
            GetCustomerType();
            GetCities();
            GetCounties();
            GetPaymentModes();
            GetDrivers();
            GetVehicles();
            GetPaymentTerms();
            GetCustomers();
            GetCars();
            GetTimeSlots();
        }
        void GetTimeSlots()
        {
            Dictionary<string, string> List = new Dictionary<string, string>();
            TimeSpan time = new TimeSpan(0, 0, 0);
            for (int i = 0; i < 96; i++)
            {
                List.Add(time.ToString(), time.ToString());
                time = time.Add(new TimeSpan(0, 15, 0));
            }
            ViewData["TimeSlots"] = new SelectList(List, "Key", "Value");
        }
        void GetDrivers()
        {
            Dictionary<string, string> List = new Dictionary<string, string>();
            DriverModel Model = new DriverModel();
            Model.ACTIVE = true;
            List<DriverModel> ModelList = new Brill.Helper().SelectModelListFromDatabase(Model);
            foreach (DriverModel m in ModelList)
            {
                List.Add(m.SEQ_ID.ToString(), m.FIRST_NAME + " " + m.LAST_NAME);
            }
            ViewData["DriverList"] = new SelectList(List, "Key", "Value");
        }
        void GetCustomers()
        {
            Dictionary<string, string> List = new Dictionary<string, string>();
            CustomerModel Model = new CustomerModel();
            List<CustomerModel> ModelList = new Brill.Helper().SelectModelListFromDatabase(Model);
            foreach (CustomerModel m in ModelList)
            {
                List.Add(m.SEQ_ID.ToString(), m.CODE + " | " + m.FIRST_NAME + " " + m.LAST_NAME);
            }
            ViewData["CustomerList"] = new SelectList(List, "Key", "Value");
        }
        void GetCars()
        {
            Dictionary<string, string> List = new Dictionary<string, string>();
            VehicleModel Model = new VehicleModel();
            Model.ACTIVE = true;
            List<VehicleModel> ModelList = new Brill.Helper().SelectModelListFromDatabase(Model);
            foreach (VehicleModel m in ModelList)
            {
                List.Add(m.SEQ_ID.ToString(), m.DESCRIPTION);
            }
            ViewData["CarList"] = new SelectList(List, "Key", "Value");
        }
        void GetCustomerType()
        {
            ViewData["CustomerTypeList"] = new SelectList(HelperModel.GetDropDownValues(HelperModel.CUSTOMER_TYPE), "SEQ_ID", "ATTR_NAME");
        }
        void GetCities()
        {
            ViewData["CityList"] = new SelectList(HelperModel.GetDropDownValues(HelperModel.CITY), "SEQ_ID", "ATTR_NAME");
        }
        void GetCounties()
        {
            ViewData["CountyList"] = new SelectList(HelperModel.GetDropDownValues(HelperModel.COUNTY), "SEQ_ID", "ATTR_NAME");
        }
        void GetPaymentModes()
        {
            ViewData["PaymentModeList"] = new SelectList(HelperModel.GetDropDownValues(HelperModel.PAYMENT_MODE), "SEQ_ID", "ATTR_NAME");
        }
        void GetVehicles()
        {
            ViewData["VehicleList"] = new SelectList(HelperModel.GetDropDownValues(HelperModel.VEHICLE_TYPE), "SEQ_ID", "ATTR_NAME");
        }
        void GetPaymentTerms()
        {
            ViewData["PaymentTermList"] = new SelectList(HelperModel.GetDropDownValues(HelperModel.PAYMENT_TERM), "SEQ_ID", "ATTR_NAME");
        }
    }
}

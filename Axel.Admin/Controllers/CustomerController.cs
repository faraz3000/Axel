using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Axel.Admin.Models;
using NIDP.Filters;

namespace Axel.Admin.Controllers
{
    public class CustomerController : Controller
    {

        //
        // GET: /Customer/
        [SessionExpireFilterAttribute]
        public ActionResult Index()
        {
            CustomerModel Model = new CustomerModel();
            List<CustomerModel> ModelList = new Brill.Helper().SelectModelListFromDatabase(Model);

            Helper();
            return View(ModelList);
        }
        [SessionExpireFilterAttribute]
        public ActionResult WebPage(string ID = null)
        {
            CustomerModel Model = new CustomerModel();

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
        public ActionResult WebPage(CustomerModel Model)
        {
            Boolean New = (Request.Form).AllKeys[(Request.Form).AllKeys.GetUpperBound(0)].Trim() == "savenew" ? true : false;

            try
            {
                if (Model.SEQ_ID > 0)
                {
                    Model.MODIFIED_BY = Convert.ToInt32(Session["USERID"]);
                    Model.MODIFIED_ON = DateTime.Now;
                    Model.CUSTOMER_TYPE_SEQ_ID = Model.CUSTOMER_TYPE_SEQ_ID == 0 ? 12 : Model.CUSTOMER_TYPE_SEQ_ID;
                    new Brill.Helper().UpdateModelInDatabase(Model);
                }
                else
                {
                    Model.CREATED_BY = Convert.ToInt32(Session["USERID"]);
                    Model.CREATED_ON = DateTime.Now;
                    Model.CUSTOMER_TYPE_SEQ_ID = Model.CUSTOMER_TYPE_SEQ_ID == 0 ? 12 : Model.CUSTOMER_TYPE_SEQ_ID;
                    new Brill.Helper().InsertModelInDatabase(Model);
                }

                if (New)
                { return RedirectToAction("WebPage", "Customer"); }
                else
                { return RedirectToAction("Index", "Customer"); }

            }
            catch (Exception ex)
            {
                Helper();
                ViewBag.Message = ex.InnerException;
                return View(Model);
            }
        }
        [SessionExpireFilterAttribute]
        public ActionResult Delete(string ID)
        {
            CustomerModel Model = new CustomerModel();
            Model.SEQ_ID = Convert.ToInt32(ID);
            new Brill.Helper().DeleteModelInDatabase(Model);
            return RedirectToAction("Index", "Customer");
        }

        void Helper()
        {
            GetCustomerType();
            GetCities();
            GetCounties();
            GetPaymentModes();
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
    }
}

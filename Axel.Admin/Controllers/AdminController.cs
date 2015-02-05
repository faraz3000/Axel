using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Axel.Admin.Models;
using NIDP.Filters;

namespace Axel.Admin.Controllers
{
    public class AdminController : Controller
    {
        //
        // GET: /Admin/

        [SessionExpireFilterAttribute]
        public ActionResult Dashboard(string Filter = null, int D=0)
        {
            AppointmentModel Model = new AppointmentModel();
            List<AppointmentModel> ModelList = new List<AppointmentModel>();

            if (Filter == null)
            {
                ModelList = new Brill.Helper().SelectModelListFromDatabase(Model);
                ModelList = ModelList.OrderByDescending(s => s.DATE).ToList();
                Helper();
                return View(ModelList);
            }
            else if(Filter == "Unassigned")
            {
                ModelList = new Brill.Helper().SelectModelListFromDatabase(Model);
                if (D == 1)
                    ModelList = ModelList.Where(s => s.DRIVER_SEQ_ID == 0 && s.DATE == DateTime.Now.Date ).ToList();
                else
                    ModelList = ModelList.Where(s => s.DRIVER_SEQ_ID == 0).ToList();
                Helper();
                return View(ModelList);
            }

            switch (Filter)
            {
                case "TodaysAppointments":
                    Model.DATE = DateTime.Now.Date;
                    break;
                case "ReadyforDispatch":
                    Model.STATUS_SEQ_ID = 23;
                    if (D == 1) Model.DATE = DateTime.Now.Date;
                    break;
                case "Dispatched":
                    Model.STATUS_SEQ_ID = 22;
                    if (D == 1) Model.DATE = DateTime.Now.Date;
                    break;
                case "Completed":
                    Model.STATUS_SEQ_ID = 21;
                    if (D == 1) Model.DATE = DateTime.Now.Date;
                    break;
                case "Cancelled":
                    Model.STATUS_SEQ_ID = 20;
                    if (D == 1) Model.DATE = DateTime.Now.Date;
                    break;
                default:
                    break;
            }

            ModelList = new Brill.Helper().SelectModelListFromDatabase(Model);
            Helper();
            return View(ModelList);
        }
        [SessionExpireFilterAttribute]
        public ActionResult Setup()
        {
            return View();
        }
        [SessionExpireFilterAttribute]
        public ActionResult Reports()
        {
            return View();
        }
        [SessionExpireFilterAttribute]
        public ActionResult Settings()
        {
            return View();
        }

        public ActionResult CANCELLED(string ID)
        {
            AppointmentModel Model = new AppointmentModel();
            Model.SEQ_ID = Convert.ToInt32(ID);
            Model = new Brill.Helper().SelectModelFromDatabase(Model);
            Model.STATUS_SEQ_ID = 20;
            new Brill.Helper().UpdateModelInDatabase(Model);
            return Redirect(Request.UrlReferrer.AbsoluteUri.ToString());
        }
        public ActionResult READY(string ID)
        {
            AppointmentModel Model = new AppointmentModel();
            Model.SEQ_ID = Convert.ToInt32(ID);
            Model = new Brill.Helper().SelectModelFromDatabase(Model);
            Model.STATUS_SEQ_ID = 23;
            new Brill.Helper().UpdateModelInDatabase(Model);
            return Redirect(Request.UrlReferrer.AbsoluteUri.ToString());
        }
        public ActionResult DISPATCHED(string ID)
        {
            AppointmentModel Model = new AppointmentModel();
            Model.SEQ_ID = Convert.ToInt32(ID);
            Model = new Brill.Helper().SelectModelFromDatabase(Model);
            Model.STATUS_SEQ_ID = 22;
            new Brill.Helper().UpdateModelInDatabase(Model);
            return Redirect(Request.UrlReferrer.AbsoluteUri.ToString());
        }
        public ActionResult COMPLETED(string ID)
        {
            AppointmentModel Model = new AppointmentModel();
            Model.SEQ_ID = Convert.ToInt32(ID);
            Model = new Brill.Helper().SelectModelFromDatabase(Model);
            Model.STATUS_SEQ_ID = 21;
            new Brill.Helper().UpdateModelInDatabase(Model);
            return Redirect(Request.UrlReferrer.AbsoluteUri.ToString());
        }

        void Helper()
        {
            GetCars();
            GetDrivers();
            GetStatus();
            GetTimeSlots();
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
        void GetStatus()
        {
            ViewData["StatusList"] = new SelectList(HelperModel.GetDropDownValues(HelperModel.STATUS), "SEQ_ID", "ATTR_NAME");
        }
        void GetTimeSlots()
        {
            Dictionary<int, string> List = new Dictionary<int, string>();
            TimeSpan time = new TimeSpan(0, 0, 0);
            for (int i = 1; i < 97; i++)
            {
                List.Add(i, time.ToString());
                time = time.Add(new TimeSpan(0, 15, 0));
            }
            ViewData["TimeSlots"] = new SelectList(List, "Key", "Value");
        }
    }
}

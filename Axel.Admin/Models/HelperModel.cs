using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Axel.Admin.Models
{
    static class HelperModel
    {
        public const int PAYMENT_MODE = 1;
        public const int CAR_OWNER = 2;
        public const int CAR_TYPE = 3;
        public const int CLASS_TYPE=4;
        public const int CUSTOMER_TYPE=5;
        public const int DRIVER_TYPE=6;
        public const int PAYMENT_TERM=7;
        public const int STATUS = 8;
        public const int VEHICLE_TYPE = 9;
        public const int COLOUR = 10;
        public const int CITY = 11;
        public const int COUNTY = 12;
        public const int MANUFACTURER = 103;

        public static SelectList ToSelectList(this DataTable table, string valueField, string textField)
        {
            List<SelectListItem> list = new List<SelectListItem>();
            foreach (DataRow row in table.Rows)
            {
                list.Add(new SelectListItem()
                {
                    Text = row[textField].ToString(),
                    Value = row[valueField].ToString()
                });
            }

            return new SelectList(list, "Value", "Text");
        }

        public static List<DropDownModel> GetDropDownValues(int LOOKUP_ID)
        {
            DropDownModel Model = new DropDownModel();
            Model.LOOKUP_SEQ_ID = LOOKUP_ID;
            List<DropDownModel> ModelList = new Brill.Helper().SelectModelListFromDatabase(Model);

            return ModelList;
        }
    }
}
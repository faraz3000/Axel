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
        public static int PAYMENT_MODE = PAYMENT_MODE > 0? PAYMENT_MODE: GetValue("PAYMENT_MODE");
        public static int CAR_OWNER = CAR_OWNER > 0? CAR_OWNER:GetValue("CAR_OWNER");
        public static int CAR_TYPE = CAR_TYPE > 0? CAR_TYPE: GetValue("CAR_TYPE");
        public static int CLASS_TYPE = CLASS_TYPE > 0? CLASS_TYPE: GetValue("CLASS_TYPE");
        public static int CUSTOMER_TYPE = CUSTOMER_TYPE > 0? CUSTOMER_TYPE: GetValue("CUSTOMER_TYPE");
        public static int DRIVER_TYPE = DRIVER_TYPE > 0? DRIVER_TYPE: GetValue("DRIVER_TYPE");
        public static int PAYMENT_TERM = PAYMENT_TERM > 0? PAYMENT_TERM: GetValue("PAYMENT_TERM");
        public static int STATUS = STATUS > 0? STATUS: GetValue("STATUS");
        public static int VEHICLE_TYPE = VEHICLE_TYPE > 0? VEHICLE_TYPE: GetValue("VEHICLE_TYPE");
        public static int COLOUR = COLOUR > 0? COLOUR: GetValue("COLOUR");
        public static int CITY = CITY > 0? CITY: GetValue("CITY");
        public static int COUNTY = COUNTY > 0? COUNTY: GetValue("COUNTY");
        public static int MANUFACTURER = MANUFACTURER > 0? MANUFACTURER: GetValue("MANUFACTURER");

        public static int GetValue(string LookUpName)
        {
            LookupModel Model = new LookupModel();
            Model.ATTR_NAME = LookUpName;
            Model = new Brill.Helper().SelectModelFromDatabase(Model);
            return Model.SEQ_ID;
        }

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
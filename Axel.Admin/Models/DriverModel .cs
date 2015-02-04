using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Axel.Admin.Models
{
    public class DriverModel : UserAttributeModel
    {
        public int SEQ_ID { get; set; }
        public string FIRST_NAME { get; set; }
        public string LAST_NAME { get; set; }
        public DateTime? DOB { get; set; }
        public string NATIONALITY { get; set; }
        public string PHONE_NO { get; set; }
        public string EMAIL { get; set; }
        public DateTime? JOINING_DATE { get; set; }
        public DateTime? LEAVING_DATE { get; set; }
        public bool ACTIVE { get; set; }
        public string POST_CODE { get; set; }
        public string STREET_NAME { get; set; }
        public string HOUSE_NO { get; set; }
        public string DVLA_LICENSE { get; set; }
        public string PCO_LICENSE { get; set; }
        public string NI_NO { get; set; }
        public DateTime? PCO_EXPIRY_DATE { get; set; }
        public DateTime? DVLA_EXPIRY { get; set; }
        public DateTime? MOT_EXPIRY_DATE { get; set; }
        public DateTime? ROAD_TAX_EXPIRY_DATE { get; set; }
        public DateTime? INSURANCE_EXPIRY_DATE { get; set; }
        public int REGISTRATION_NO { get; set; }
        public string COMMISSION { get; set; }

        public int COLOUR_SEQ_ID { get; set; }
        public int COUNTY_SEQ_ID { get; set; }
        public int CITY_SEQ_ID { get; set; }
        public int CAR_OWNER_SEQ_ID { get; set; }
        public int VEHICLE_TYPE_SEQ_ID { get; set; }
        public int DRIVER_TYPE_SEQ_ID { get; set; }
        public int CAR_TYPE_SEQ_ID { get; set; }
    }
}
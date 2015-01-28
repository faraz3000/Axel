using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AxelSys.Models
{
    public enum DriverType
    {
        RentalDriver,CompanyDriver
    }
    public enum CarType
    {
        MercedesEClass,MercedesSClass,MercedesViano
    }
    public enum CarOwner
    {
        Driver,Company
    }
    public class DriverModel
    {
        public int SEQ_ID { get; set; }
        public int CODE { get; set; }
        public string FIRST_NAME { get; set; }
        public string LAST_NAME { get; set; }
        public DateTime DOB { get; set; }
        public string NATIONALITY { get; set; }
        public string PHONE_NO { get; set; }
        public string EMAIL { get; set; }
        public DateTime JOINING_DATE { get; set; }
        public DateTime LEAVING_DATE { get; set; }
        public bool ACTIVE { get; set; }
        public string POST_CODE { get; set; }
        public string STREET_NAME { get; set; }
        public string HOUSE_NO { get; set; }
        public string COUNTY { get; set; }
        public string CITY { get; set; }
        public string DVLA_LICENSE { get; set; }
        public string PCO_LICENSE { get; set; }
        public DriverType? DRIVER_TYPE { get; set; }
        public string NI_NO { get; set; }
        public DateTime PCO_EXPIRY_DATE { get; set; }
        public DateTime DVLA_Expiry { get; set; }
        public CarOwner? CAR_OWNER { get; set; }
        public string vEHICLE_TYPE { get; set; }
        public string COLOUR { get; set; }
        public CarType? CAR_TYPE { get; set; }
        public DateTime MOT_EXPIRY_DATE { get; set; }
        public DateTime ROAD_TAX_EXPIRY_DATE { get; set; }
        public DateTime INSURANCE_EXPIRY_DATE { get; set; }
        public int REGISTRATION_DATE { get; set; }
        public string COMMISSION { get; set; }

    }
}
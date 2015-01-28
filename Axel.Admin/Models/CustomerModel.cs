using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AxelSys.Models
{
    public enum CustomerType 
    {
        RegisteredCompany,DefaultCustomer,RegiseredIndividual
    }
    public enum PaymentMode
    {
        CashToDriver,CashToCabOffice,CardToCabOffice,ChequeToCabOffice,FlexibleToJob
    }
    public class CustomerModel
    {

        public int SEQ_ID { get; set; }
        public int CODE { get; set; }
        public string FIRST_NAME { get; set; }
        public string LAST_NAME { get; set; }
        public CustomerType? CUSTOMER_TYPE { get; set; }
        public string EMAIL { get; set; }
        public string HOME_PHONE { get; set; }
        public string MOBILE_NO { get; set; }
        public PaymentMode? PAYMENT_MODE { get; set; }
        public string POST_CODE { get; set; }
        public string STREET_NAME { get; set; }
        public string HOUSE_NO { get; set; }
        public string COUNTY { get; set; }
        public string CITY { get; set; }
    }
}
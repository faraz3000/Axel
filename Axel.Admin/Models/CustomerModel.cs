using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Axel.Admin.Models;

namespace Axel.Admin.Models
{

    public class CustomerModel : UserAttributeModel
    {
        public int SEQ_ID { get; set; }
        public string CODE { get; set; }
        public string FIRST_NAME { get; set; }
        public string LAST_NAME { get; set; }
        public int CUSTOMER_TYPE_SEQ_ID { get; set; }
        public string EMAIL { get; set; }
        public string HOME_PHONE { get; set; }
        public string MOBILE_NO { get; set; }
        public int PAYMENT_MODE_SEQ_ID { get; set; }
        public string POST_CODE { get; set; }
        public string STREET_NAME { get; set; }
        public string HOUSE_NO { get; set; }
        public string COUNTY { get; set; }
        public string CITY { get; set; }
    }
}
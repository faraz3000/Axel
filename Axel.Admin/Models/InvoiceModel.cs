using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Axel.Admin.Models
{
    public class InvoiceModel: UserAttributeModel
    {
        public int SEQ_ID { get; set; }
        public string CODE { get; set; }
        public int APPOINTMENT_SEQ_ID { get; set; }
        public int CUSTOMER_SEQ_ID { get; set; }
        public DateTime DATE { get; set; }
        public string TOTAL_AMOUNT { get; set; }
        public string RECEIVED_AMOUNT { get; set; }
        public string BALANCE_AMOUNT { get; set; }
        public bool STATUS { get; set; }
    }
}
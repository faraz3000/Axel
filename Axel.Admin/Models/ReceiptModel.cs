using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Axel.Admin;

namespace Axel.Admin.Models
{
    public class ReceiptModel
    {
        public int SEQ_ID { get; set; }
        public int CUSTOMER_SEQ_ID { get; set; }
        public DateTime? RECEIPT_DATE { get; set; }
        public string RECEIPT_AMOUNT { get; set; }
        public string CUSTOMER_BANK { get; set; }
        
    }
}
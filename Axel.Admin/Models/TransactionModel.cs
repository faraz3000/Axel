using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Axel.Admin.Models
{
   
    public class TransactionModel
    {
        public int SEQ_ID { get; set; }
        public int APPOINTMENT_SEQ_ID { get; set; }
        public string FARE_TOTAL { get; set; }
        public string TOTAL_DISTANCE { get; set; }
        
    }
}
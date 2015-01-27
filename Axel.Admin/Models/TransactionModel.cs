using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AxelSys.Models
{
   
    public class TransactionModel
    {
        public int SEQ_ID { get; set; }
        public int Appointment_SEQ_ID { get; set; }
        public string FareTotal { get; set; }
        public string TotalDistance { get; set; }
        
    }
}
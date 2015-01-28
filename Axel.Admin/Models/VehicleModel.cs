using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AxelSys.Models
{
    public enum Class
    {
        BusinessClass,EconomyClass 
    }

    public class VehicleModel
    {
        public int SEQ_ID { get; set; }
        public int CODE { get; set; }
        public string DESCRIPTION { get; set; }
        public string MANUFACTURER { get; set; }
        public Class? CLASS { get; set; }
        public bool PICTURE { get; set; }
        public bool ACTIVE { get; set; }
    }
}
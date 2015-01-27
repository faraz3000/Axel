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
        public int Code { get; set; }
        public string Description { get; set; }
        public string Manufacturer { get; set; }
        public Class? Class { get; set; }
        public bool Picture { get; set; }
        public bool Active { get; set; }
    }
}
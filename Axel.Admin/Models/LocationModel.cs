using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AxelSys.Models
{
    public class LocationModel
    {
        public int SEQ_ID { get; set; }
        public string PICK_UP_LOCATION { get; set; }
        public string DROP_OFF_LOCATION { get; set; }
    }
}
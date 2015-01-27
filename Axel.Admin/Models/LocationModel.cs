using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AxelSys.Models
{
    public class LocationModel
    {
        public int SEQ_ID { get; set; }
        public string PickUpLocation { get; set; }
        public string DropOffLocation { get; set; }
    }
}
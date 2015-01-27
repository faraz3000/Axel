using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Axel.Models
{
    public class Vehicle
    {
        public int Code { get; set; }
        public string Description { get; set; }
        public string Manufacturer { get; set; }
        public string Class { get; set; }
        public bool Picture { get; set; }
        public bool Active { get; set; }

    }
}
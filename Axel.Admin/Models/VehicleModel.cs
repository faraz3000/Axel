using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Axel.Admin.Models
{
    public class VehicleModel: UserAttributeModel
    {
        public int SEQ_ID { get; set; }
        public string MANUFACTURER_SEQ_ID { get; set; }
        public int CLASS_TYPE_SEQ_ID { get; set; }
        public string DESCRIPTION { get; set; }
        public string BASICFARE { get; set; }
        public string ADDITIONALKMFARE { get; set; }
        public string PICTURE { get; set; }
        public bool ACTIVE { get; set; }
    }
}
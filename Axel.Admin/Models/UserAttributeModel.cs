using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Axel.Admin.Models
{
    public abstract class UserAttributeModel
    {
        public int CREATED_BY { get; set; }
        public DateTime? CREATED_ON { get; set; }
        public int MODIFIED_BY { get; set; }
        public DateTime? MODIFIED_ON { get; set; }
    }
}
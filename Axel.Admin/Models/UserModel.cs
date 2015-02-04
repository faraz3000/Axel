using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Axel.Admin.Models
{
    public class UserModel: UserAttributeModel
    {
        public int  SEQ_ID { get; set; }
        public string USER_NAME { get; set; }
        public string PASSWORD { get; set; }
        public int USER_TYPE_SEQ_ID { get; set; }
    }
}
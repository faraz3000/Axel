using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AxelSys.Models
{

    public enum UserType 
    {
        Admin,Driver,Customer
    }

    public class UserModel
    {
        public int  SEQ_ID { get; set; }
        public string USER_NAME { get; set; }
        public string PASSWORD { get; set; }
        public UserType? USER_TYPE { get; set; }
    }
}
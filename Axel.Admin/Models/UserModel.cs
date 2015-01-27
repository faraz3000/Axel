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
        public string UserName { get; set; }
        public string Password { get; set; }
        public UserType? UserType { get; set; }
    }
}
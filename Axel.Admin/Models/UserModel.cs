using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Axel.Models
{
    public class User
    {
        public int id { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string UserType { get; set; }
        
    }
}
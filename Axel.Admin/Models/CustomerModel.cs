using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Axel.Models
{
    public class Customer
    {
        public int Code{get; set;}
        public string FirstName {get; set;}
        public string LastName {get; set;}
        public string CustomerType {get; set;}
        public string Email {get; set;}
        public string HomePhone {get; set;}
        public string MobileNo {get; set;}
        public string PaymentMode {get; set;}
        public string PostCode {get; set;}
        public string StreetName {get;set;}
        public string HouseNo {get;set;}
        public string County { get; set;}
        public string City { get; set;}
    }
}
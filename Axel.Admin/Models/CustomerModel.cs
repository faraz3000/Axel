using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AxelSys.Models
{
    public enum CustomerType 
    {
        RegisteredCompany,DefaultCustomer,RegiseredIndividual
    }
    public enum PaymentMode
    {
        CashToDriver,CashToCabOffice,CardToCabOffice,ChequeToCabOffice,FlexibleToJob
    }
    public class CustomerModel
    {

        public int SEQ_ID { get; set; }
        public int Code { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public CustomerType? CustomerType { get; set; }
        public string Email { get; set; }
        public string HomePhone { get; set; }
        public string MobileNo { get; set; }
        public PaymentMode? PaymentMode { get; set; }
        public string PostCode { get; set; }
        public string StreetName { get; set; }
        public string HouseNo { get; set; }
        public string County { get; set; }
        public string City { get; set; }
    }
}
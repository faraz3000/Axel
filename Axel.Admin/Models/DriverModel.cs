using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AxelSys.Models
{
    public enum DriverType
    {
        RentalDriver,CompanyDriver
    }
    public enum CarType
    {
        MercedesEClass,MercedesSClass,MercedesViano
    }
    public enum CarOwner
    {
        Driver,Company
    }
    public class DriverModel
    {
        public int SEQ_ID { get; set; }
        public int Code { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public DateTime DOB { get; set; }
        public string Nationality { get; set; }
        public string PhoneNo { get; set; }
        public string Email { get; set; }
        public DateTime JoiningDate { get; set; }
        public DateTime LeavingDate { get; set; }
        public bool Active { get; set; }
        public string PostCode { get; set; }
        public string StreetName { get; set; }
        public string HouseNo { get; set; }
        public string County { get; set; }
        public string City { get; set; }
        public string DVLALicense { get; set; }
        public string PCOLicense { get; set; }
        public DriverType? DriverType { get; set; }
        public string NINo { get; set; }
        public DateTime PCOExpiryDate { get; set; }
        public DateTime DVLAExpiry { get; set; }
        public CarOwner? CarOwner { get; set; }
        public string VehicleType { get; set; }
        public string Colour { get; set; }
        public CarType? CarType { get; set; }
        public DateTime MOTExpiryDate { get; set; }
        public DateTime RoadTaxExpiryDate { get; set; }
        public DateTime InsuranceExpiryDate { get; set; }
        public int RegistrationNo { get; set; }
        public string Commission { get; set; }

    }
}
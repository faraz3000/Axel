using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Axel.Models
{
    public class Appointment
    {
        public int RecordID { get; set; }
        
        public int Code { get; set; }
        public string Name { get; set; }
        public string Phone { get; set; }
        public string CustomerType { get; set; }
        
        public DateTime Date { get; set; }
        public DateTime StartTime { get; set; }
        public DateTime EndTime { get; set; }
        public bool blnLuggage { get; set; }
        public int nPassengers { get; set; }
        public int nChildren { get; set; }
        public int nBoosters { get; set; }
        public int nInfants { get; set; }
        public bool blnWaitAndReturn { get; set; }

        public int PickupTypeID { get; set; }
        public string PickupLocation { get; set; }
        public string PickupPostCode { get; set; }
        public string PickupStreetNo { get; set; }
        public string PickupHouseNo { get; set; }

        public int DropoffTypeID { get; set; }
        public string DropoffLocation { get; set; }
        public string DropoffPostCode { get; set; }
        public string DropoffStreetNo { get; set; }
        public string DropoffHouseNo { get; set; }

        public bool blnRegularAppointment { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public bool Monday { get; set; }
        public bool Tuesday { get; set; }
        public bool Wednesday { get; set; }
        public bool Thursday { get; set; }
        public bool Friday { get; set; }
        public bool Saturday { get; set; }
        public bool Sunday { get; set; }
        
        public string Fare { get; set; }
        public string Distance { get; set; }
        public string OtherCharges { get; set; }
        public string TotalAmount { get; set; }
        public string AdditionalComments { get; set; }
        public string DrivingDirections { get; set; }

        public int PaymentTermsID { get; set; }
        public int DriverID { get; set; }
        public int VehicleID { get; set; }

    }
}
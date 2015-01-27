using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AxelSys.Models
{
    public enum Status
    {
        Cancelled, Completed, Dispatched, ReadyForDispatch
    }
    public enum CustomerType 
    {
        DefaultCustomer,RegisteredCompany,RegisteredIndividual
    }
    public enum PaymentTerms
    {
        AdvancePayment,PaymentOnDropOff,PaymentOnMonthEnd
    }

    public class AppointmentModel
    {
        public int SEQ_ID { get; set; }
        public int Customer_SEQ_ID { get; set; }
        public int Driver_SEQ_ID { get; set; }
        public int Vehicle_SEQ_ID { get; set; }
        public int Code { get; set; }
        public string Name { get; set; }
        public string Phone { get; set; }
        public CustomerType? CustomerType { get; set; }
        public DateTime Date { get; set; }
        public DateTime Time { get; set; }
        public string Vehicle { get; set; }
        public bool Luggage { get; set; }
        public int NoOfPassengers { get; set; }
        public int NoOfChildren { get; set; }
        public int NoOfBoosters { get; set; }
        public int NoOfInfants { get; set; }
        public bool WaitAndReturn { get; set; }
        public DateTime ReturnTime { get; set; }
        public string Type { get; set; }
        public string Location { get; set; }
        public string PostCode { get; set; }
        public string StreetNo { get; set; }
        public string HouseNo { get; set; }
        public bool RegularAppointment { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public string Days { get; set; }
        public string Fare { get; set; }
        public string Distance { get; set; }
        public string OtherCharges { get; set; }
        public string TotalAmount { get; set; }
        public PaymentTerms? PaymentTerms { get; set; }
        public string AdditionalComments { get; set; }
        public string DrivingDirections { get; set; }
        public string Driver { get; set; }
        public Status? Status { get; set; }
        
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AxelSys.Models;

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
        public int CUSTOMER_SEQ_ID { get; set; }
        public int DRIVER_SEQ_ID { get; set; }
        public int VEHICLE_SEQ_ID { get; set; }
        public int CODE { get; set; }
        public string NAME { get; set; }
        public string PHONE { get; set; }
        public CustomerType? CUSTOMER_TYPE { get; set; }
        public DateTime DATE { get; set; }
        public DateTime TIME { get; set; }
        public string VEHICLE { get; set; }
        public bool LUGGAGE { get; set; }
        public int NO_OF_PASSENGERS { get; set; }
        public int NO_OF_CHILDREN { get; set; }
        public int NO_OF_BOOSTERS { get; set; }
        public int NO_OF_INFANTS { get; set; }
        public bool WAIT_AND_RETURN { get; set; }
        public DateTime RETURN_TIME { get; set; }
        public string TYPE { get; set; }
        public string LOCATION { get; set; }
        public string POST_CODE { get; set; }
        public string STREET_NO { get; set; }
        public string HOUSE_NO { get; set; }
        public bool REGULAR_APPOINTMENT { get; set; }
        public DateTime START_DATE { get; set; }
        public DateTime END_DATE { get; set; }
        public string DAYS { get; set; }
        public string FARE { get; set; }
        public string DISTANCE { get; set; }
        public string OTHER_CHARGES { get; set; }
        public string TOTAL_AMOUNT { get; set; }
        public PaymentTerms? PAYMENT_TERMS { get; set; }
        public string ADDITIONAL_COMMENTS { get; set; }
        public string DRIVING_DIRECTIONS { get; set; }
        public string DRIVER { get; set; }
        public Status? STATUS { get; set; }
        public string INVOICE_STATUS { get; set; }
        public string PAID_AMOUNT { get; set; }

        public virtual ICollection<CustomerModel> CUSTOMER { get; set; }
        public virtual DriverModel DRIVER { get; set; }
        public virtual VehicleModel Vehicle { get; set; }
      
    }
}
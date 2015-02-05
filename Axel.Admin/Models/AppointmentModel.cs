using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Axel.Admin.Models;

namespace Axel.Admin.Models
{

    public class AppointmentModel : UserAttributeModel
    {
        public int SEQ_ID { get; set; }
        public string CODE { get; set; }
        public int CUSTOMER_SEQ_ID { get; set; }
        public string FIRST_NAME { get; set; }
        public string LAST_NAME { get; set; }
        public string MOBILE_NO { get; set; }
        public int PAYMENT_MODE_SEQ_ID { get; set; }
        public int CUSTOMER_TYPE_SEQ_ID { get; set; }
        public int CAR_SEQ_ID { get; set; }

        public int STATUS_SEQ_ID { get; set; }
        public int DRIVER_SEQ_ID { get; set; }

        public int VEHICLE_SEQ_ID { get; set; }
        public DateTime? DATE { get; set; }
        public int TIME { get; set; }
        public Boolean LUGGAGE { get; set; }
        public int NO_OF_PASSENGERS { get; set; }
        public int NO_OF_CHILDREN { get; set; }
        public int NO_OF_BOOSTERS { get; set; }
        public int NO_OF_INFANTS { get; set; }
        public Boolean WAIT_AND_RETURN { get; set; }
        public int RETURN_TIME { get; set; }

        public string STOP_OVER { get; set; }

        public string PICKUP_LOCATION { get; set; }
        public string PICKUP_COUNTRY { get; set; }
        public string PICKUP_COUNTY { get; set; }
        public string PICKUP_CITY { get; set; }
        public string PICKUP_STREET_NO { get; set; }
        public string PICKUP_STREET_NAME { get; set; }
        public string PICKUP_HOUSE_NO { get; set; }
        public string PICKUP_POST_CODE { get; set; }

        public string DROPOFF_LOCATION { get; set; }
        public string DROPOFF_COUNTRY { get; set; }
        public string DROPOFF_COUNTY { get; set; }
        public string DROPOFF_CITY { get; set; }
        public string DROPOFF_STREET_NO { get; set; }
        public string DROPOFF_STREET_NAME { get; set; }
        public string DROPOFF_HOUSE_NO { get; set; }
        public string DROPOFF_POST_CODE { get; set; }

        public int PAYMENT_TERMS_SEQ_ID { get; set; }
        public string FARE { get; set; }
        public string DISTANCE { get; set; }
        public string OTHER_CHARGES { get; set; }
        public string TOTAL_AMOUNT { get; set; }
        public string ADDITIONAL_COMMENTS { get; set; }
        public string DRIVING_DIRECTIONS { get; set; }
    }
}
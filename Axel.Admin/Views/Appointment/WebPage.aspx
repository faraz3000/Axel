<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Axel.Admin.Models.AppointmentModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Book Appointment
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="inner_wrapper">
        <div class="heading" style="margin-bottom: 30px;">
            <h1>Appointment</h1>
        </div>
        <div id="enter-log-book" class="typography">
            <form action="#" method="post" class="form log-book-form">
                <% if (Request.QueryString.AllKeys.Length > 0)
                   {
                       if (Request.QueryString.GetValues("Edit")[0] == "AssignCar" || Request.QueryString.GetValues("Edit")[0] == "AssignDriver")
                       {%>

                <%=Html.Hidden("SEQ_ID",Model.SEQ_ID)%>
                <%=Html.Hidden("ADDITIONAL_COMMENTS",Model.ADDITIONAL_COMMENTS)%>
                <%=Html.Hidden("CODE",Model.CODE)%>
                <%=Html.Hidden("CREATED_BY",Model.CREATED_BY)%>
                <%=Html.Hidden("CREATED_ON",Model.CREATED_ON)%>
                <%=Html.Hidden("CUSTOMER_SEQ_ID",Model.CUSTOMER_SEQ_ID)%>
                <%=Html.Hidden("CUSTOMER_TYPE_SEQ_ID",Model.CUSTOMER_TYPE_SEQ_ID)%>
                <%=Html.Hidden("DATE",Model.DATE)%>
                <%=Html.Hidden("DISTANCE",Model.DISTANCE)%>
                <%=Html.Hidden("DRIVING_DIRECTIONS",Model.DRIVING_DIRECTIONS)%>
                <%=Html.Hidden("DROPOFF_POST_CODE",Model.DROPOFF_POST_CODE)%>
                <%=Html.Hidden("DROPOFF_COUNTRY",Model.DROPOFF_COUNTY)%>
                <%=Html.Hidden("DROPOFF_COUNTY",Model.DROPOFF_COUNTY)%>
                <%=Html.Hidden("DROPOFF_CITY",Model.DROPOFF_CITY)%>
                <%=Html.Hidden("DROPOFF_STREET_NAME",Model.PICKUP_STREET_NO)%>
                <%=Html.Hidden("DROPOFF_STREET_NO",Model.DROPOFF_STREET_NO)%>
                <%=Html.Hidden("DROPOFF_HOUSE_NO",Model.DROPOFF_HOUSE_NO)%>
                <%=Html.Hidden("DROPOFF_LOCATION",Model.DROPOFF_LOCATION)%>
                <%=Html.Hidden("FARE",Model.FARE)%>
                <%=Html.Hidden("FIRST_NAME",Model.FIRST_NAME)%>
                <%=Html.Hidden("LAST_NAME",Model.LAST_NAME)%>
                <%=Html.Hidden("LUGGAGE",Model.LUGGAGE)%>
                <%=Html.Hidden("MOBILE_NO",Model.MOBILE_NO)%>
                <%=Html.Hidden("MODIFIED_BY",Model.MODIFIED_BY)%>
                <%=Html.Hidden("MODIFIED_ON",Model.MODIFIED_ON)%>
                <%=Html.Hidden("NO_OF_BOOSTERS",Model.NO_OF_BOOSTERS)%>
                <%=Html.Hidden("NO_OF_CHILDREN",Model.NO_OF_CHILDREN)%>
                <%=Html.Hidden("NO_OF_INFANTS",Model.NO_OF_INFANTS)%>
                <%=Html.Hidden("NO_OF_PASSENGERS",Model.NO_OF_PASSENGERS)%>
                <%=Html.Hidden("OTHER_CHARGES",Model.OTHER_CHARGES)%>
                <%=Html.Hidden("PAYMENT_MODE_SEQ_ID",Model.PAYMENT_MODE_SEQ_ID)%>
                <%=Html.Hidden("PAYMENT_TERMS_SEQ_ID",Model.PAYMENT_TERMS_SEQ_ID)%>
                <%=Html.Hidden("PICKUP_POST_CODE",Model.PICKUP_POST_CODE)%>
                <%=Html.Hidden("PICKUP_COUNTRY",Model.PICKUP_COUNTY)%>
                <%=Html.Hidden("PICKUP_COUNTY",Model.PICKUP_COUNTY)%>
                <%=Html.Hidden("PICKUP_CITY",Model.PICKUP_CITY)%>
                <%=Html.Hidden("PICKUP_STREET_NAME",Model.PICKUP_STREET_NO)%>
                <%=Html.Hidden("PICKUP_STREET_NO",Model.PICKUP_STREET_NO)%>
                <%=Html.Hidden("PICKUP_HOUSE_NO",Model.PICKUP_HOUSE_NO)%>
                <%=Html.Hidden("PICKUP_LOCATION",Model.PICKUP_LOCATION)%>
                <%=Html.Hidden("RETURN_TIME",Model.RETURN_TIME)%>
                <%=Html.Hidden("STATUS_SEQ_ID",Model.STATUS_SEQ_ID)%>
                <%=Html.Hidden("TIME",Model.TIME)%>
                <%=Html.Hidden("TOTAL_AMOUNT",Model.TOTAL_AMOUNT)%>
                <%=Html.Hidden("VEHICLE_SEQ_ID",Model.VEHICLE_SEQ_ID)%>
                <%=Html.Hidden("WAIT_AND_RETURN",Model.WAIT_AND_RETURN)%>





                <%if (Request.QueryString.GetValues("Edit")[0] == "AssignCar")
                  { %>


                <h3 class="heading">Assign a car</h3>
                <div class="rows clr">
                    <div class="column">
                        <label>Car:</label>
                        <%= Html.DropDownList("CAR_SEQ_ID", ViewData["CarList"] as SelectList, "", new { @class="text_field",@style="height:40px;" })%>
                        <%=Html.Hidden("DRIVER_SEQ_ID",Model.DRIVER_SEQ_ID)%>
                    </div>
                </div>
                <% }
                  else if (Request.QueryString.GetValues("Edit")[0] == "AssignDriver")
                  {%>
                <h3 class="heading">Assign a driver</h3>
                <div class="rows clr">
                    <div class="column">
                        <label>Driver:</label>
                        <%= Html.DropDownList("DRIVER_SEQ_ID", ViewData["DriverList"] as SelectList, "", new { @class="text_field",@style="height:40px;" })%>
                        <%=Html.Hidden("CAR_SEQ_ID",Model.CAR_SEQ_ID)%>
                    </div>
                </div>
                <% } %>

                <% }
                   }
                   else
                   { %>

                <%=Html.Hidden("CREATED_BY",Model.CREATED_BY)%>
                <%=Html.Hidden("CREATED_ON",Model.CREATED_ON)%>
                <h3 class="heading">Search a customer</h3>
                <div class="rows clr">
                    <div class="column">
                        <label>Select Customer:<span>*</span></label>
                        <%= Html.DropDownList("CUSTOMER_SEQ_ID", ViewData["CustomerList"] as SelectList, "", new { @class="text_field",@style="height:40px;" })%>
                    </div>
                    <div class="column">
                        <label>Search with First Name:<span>*</span></label>
                        <% = Html.TextBox("SearchFIRST_NAME", null, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>Search with Last Name:<span>*</span></label>
                        <% = Html.TextBox("SearchLAST_NAME", null, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>Search with Mobile No:<span>*</span></label>
                        <% = Html.TextBox("SearchMOBILE_NO", null, new { @class = "text_field"})%>
                    </div>
                </div>

                <h3 class="heading">Add a new customer</h3>
                <div class="rows clr">
                    <div class="column">
                        <%=  Html.Hidden("SEQ_ID",Model.SEQ_ID) %>
                        <label>First Name:<span>*</span></label>
                        <% = Html.TextBox("FIRST_NAME", Model.FIRST_NAME, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>Last Name:<span>*</span></label>
                        <% = Html.TextBox("LAST_NAME", Model.LAST_NAME, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>Mobile No:<span>*</span></label>
                        <% = Html.TextBox("MOBILE_NO", Model.MOBILE_NO, new { @class = "text_field"})%>
                    </div>
                    <div class="column">

                        <%--<%Html.CheckBox("PAYMENT_MODE_SEQ_ID", "" %>--%>
                        <label>Payment Mode:<span>*</span></label>
                        <%= Html.DropDownList("PAYMENT_MODE_SEQ_ID", ViewData["PaymentModeList"] as SelectList, "", new { @class="text_field",@style="height:40px;", @required="required" })%>
                    </div>

                </div>
                <div class="rows clr">
                    <div class="column">
                        <label>Date:<span>*</span></label>
                        <%= Html.TextBox("DATE", Model.DATE== null ? " " : String.Format ("{0:dd/MM/yyyy}", Model.DATE), new { @class = "text_field", @id="popupDatepicker", @autocomplete="off", @required="required" })%>
                    </div>
                    <div class="column">
                        <label>Time:<span>*</span></label>
                        <%= Html.DropDownList("TIME", ViewData["TimeSlots"] as SelectList, "", new { @class="text_field",@style="height:40px;", @required="required"})%>
                    </div>
                    <div class="column">
                        <label>Customer Type:</label>
                        <%= Html.DropDownList("CUSTOMER_TYPE_SEQ_ID", ViewData["CustomerTypeList"] as SelectList, "", new { @class="text_field",@style="height:40px;" })%>
                    </div>
                </div>

                <h3 class="heading">Location Details</h3>
                <div class="rows clr">
                    <div class="column" style="width: 94%">
                        <label>Pickup:<span>*</span></label>
                        <% = Html.TextBox("PICKUP_LOCATION", Model.PICKUP_LOCATION, new { @class = "text_field", @required="required", id="autocomplete"})%>

                        <%=Html.Hidden("PICKUP_POST_CODE",Model.PICKUP_POST_CODE)%>
                        <%=Html.Hidden("PICKUP_COUNTRY",Model.PICKUP_COUNTY)%>
                        <%=Html.Hidden("PICKUP_COUNTY",Model.PICKUP_COUNTY)%>
                        <%=Html.Hidden("PICKUP_CITY",Model.PICKUP_CITY)%>
                        <%=Html.Hidden("PICKUP_STREET_NAME",Model.PICKUP_STREET_NO)%>
                        <%=Html.Hidden("PICKUP_STREET_NO",Model.PICKUP_STREET_NO)%>
                        <%=Html.Hidden("PICKUP_HOUSE_NO",Model.PICKUP_HOUSE_NO)%>
                    </div>
                </div>
                <div class="rows clr">
                    <div class="column" style="width: 94%">
                        <label>Dropoff:<span>*</span></label>
                        <% = Html.TextBox("DROPOFF_LOCATION", Model.DROPOFF_LOCATION, new { @class = "text_field", @required="required", id="dropautocomplete"})%>

                        <%=Html.Hidden("DROPOFF_POST_CODE",Model.DROPOFF_POST_CODE)%>
                        <%=Html.Hidden("DROPOFF_COUNTRY",Model.DROPOFF_COUNTY)%>
                        <%=Html.Hidden("DROPOFF_COUNTY",Model.DROPOFF_COUNTY)%>
                        <%=Html.Hidden("DROPOFF_CITY",Model.DROPOFF_CITY)%>
                        <%=Html.Hidden("DROPOFF_STREET_NAME",Model.PICKUP_STREET_NO)%>
                        <%=Html.Hidden("DROPOFF_STREET_NO",Model.DROPOFF_STREET_NO)%>
                        <%=Html.Hidden("DROPOFF_HOUSE_NO",Model.DROPOFF_HOUSE_NO)%>
                    </div>
                </div>

                <h3 class="heading">Fare Details</h3>
                <div class="rows clr">
                    <div class="column">
                        <label>Payment Term:<span>*</span></label>
                        <%= Html.DropDownList("PAYMENT_TERMS_SEQ_ID", ViewData["PaymentTermList"] as SelectList, "", new { @class="text_field",@style="height:40px;" })%>
                    </div>
                    <div class="column">
                        <label>Fare:</label>
                        <% = Html.TextBox("FARE", Model.FARE, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>Distance:</label>
                        <% = Html.TextBox("DISTANCE", Model.DISTANCE, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>Other charges:</label>
                        <% = Html.TextBox("OTHER_CHARGES", Model.OTHER_CHARGES, new { @class = "text_field"})%>
                    </div>
                </div>
                <div class="rows clr">
                    <div class="column">
                        <label>Total Amount:</label>
                        <% = Html.TextBox("TOTAL_AMOUNT", Model.TOTAL_AMOUNT, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>Additional Comments:</label>
                        <% = Html.TextBox("ADDITIONAL_COMMENTS", Model.ADDITIONAL_COMMENTS, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>Driving Directions:</label>
                        <% = Html.TextBox("DRIVING_DIRECTIONS", Model.DRIVING_DIRECTIONS, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>Driving Directions:</label>
                        <% = Html.TextBox("STOP_OVER", Model.STOP_OVER, new { @class = "text_field"})%>
                    </div>
                </div>

                <h3 class="heading">Appointment Details</h3>
                <div class="rows clr">

                    <div class="column">
                        <label>Vehicle Type:</label>
                        <%= Html.DropDownList("VEHICLE_SEQ_ID", ViewData["VehicleList"] as SelectList, "", new { @class="text_field",@style="height:40px;" , @required="required" })%>
                    </div>
                    <div class="column">
                        <label>Car:</label>
                        <%= Html.DropDownList("CAR_SEQ_ID", ViewData["CarList"] as SelectList, "", new { @class="text_field",@style="height:40px;" })%>
                    </div>
                    <div class="column" style="text-align: right;">
                        <label>&nbsp;</label>
                        <% = Html.CheckBox("LUGGAGE", Model.LUGGAGE == 1? true:false, new { @class = "checkbox"})%>Luggage
                        <% = Html.CheckBox("WAIT_AND_RETURN", Model.WAIT_AND_RETURN == 1? true:false, new { @class = "checkbox"})%>Wait & Return
                    </div>
                    <div class="column">
                        <label>Return Time:</label>
                        <%= Html.DropDownList("RETURN_TIME", ViewData["TimeSlots"] as SelectList, "", new { @class="text_field",@style="height:40px;"})%>
                    </div>

                </div>
                <div class="rows clr">
                    <div class="column">
                        <label>No of Passengers:</label>
                        <% = Html.TextBox("NO_OF_PASSENGERS", Model.NO_OF_PASSENGERS, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>No of Childrens:</label>
                        <% = Html.TextBox("NO_OF_CHILDREN", Model.NO_OF_CHILDREN, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>No of Boosters:</label>
                        <% = Html.TextBox("NO_OF_BOOSTERS", Model.NO_OF_BOOSTERS, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>No of Infants:</label>
                        <% = Html.TextBox("NO_OF_INFANTS", Model.NO_OF_INFANTS, new { @class = "text_field"})%>
                    </div>
                </div>

                <h3 class="heading">Assign a driver</h3>
                <div class="rows clr">
                    <div class="column">
                        <label>Driver:</label>
                        <%= Html.DropDownList("DRIVER_SEQ_ID", ViewData["DriverList"] as SelectList, "", new { @class="text_field",@style="height:40px;" })%>
                    </div>
                </div>

                <% } %>



                <hr style="width: 910px; margin-left: 0px;" />
                <div class="back" style="float: right; padding-right: 38px;">
                    <a href="<%= Url.Action("Dashboard", "Admin") %>" onclick="return GoBack();">Back to Dashboard</a>

                    <input type="submit" class="button small_margin" value="Save and Add New Appointment" name="savenew" />
                    <input type="submit" class="button small_margin cgreen" value="Save and Back to Dashboard" name="submit" />
                </div>
            </form>
        </div>

    </div>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <script type="text/javascript">
        $(function () {
            var placeSearch, autocomplete, dropautocomplete;
            var component_form = {
                'PICKUP_HOUSE_NO': 'subpremise',
                'PICKUP_STREET_NO': 'street_number',
                'PICKUP_STREET_NAME': 'route',
                'PICKUP_CITY': 'locality',
                'PICKUP_POST_CODE': 'postal_code',
                'PICKUP_COUNTY': 'administrative_area_level_1',
                'PICKUP_COUNTRY': 'country'
            };
            var drop_component_form = {
                'DROPOFF_HOUSE_NO': 'subpremise',
                'DROPOFF_STREET_NO': 'street_number',
                'DROPOFF_STREET_NAME': 'route',
                'DROPOFF_CITY': 'locality',
                'DROPOFF_POST_CODE': 'postal_code',
                'DROPOFF_COUNTY': 'administrative_area_level_1',
                'DROPOFF_COUNTRY': 'country'
            };

            function initialize() {
                autocomplete = new google.maps.places.Autocomplete(document.getElementById('autocomplete'), {
                    types: ['geocode']
                });
                dropautocomplete = new google.maps.places.Autocomplete(document.getElementById('dropautocomplete'), {
                    types: ['geocode']
                });
                google.maps.event.addListener(autocomplete, 'place_changed', function () {
                    fillInAddress();
                });
                google.maps.event.addListener(dropautocomplete, 'place_changed', function () {
                    dropfillInAddress();
                });

                $('table td input').attr('disabled', true);
            }

            function fillInAddress() {
                var place = autocomplete.getPlace();

                for (var component in component_form) {
                    document.getElementById(component).value = "";
                    document.getElementById(component).disabled = false;
                }

                for (var j = 0; j < place.address_components.length; j++) {
                    var att = place.address_components[j].types[0];
                    fillFormInput(att, place.address_components[j].long_name);
                }
            }
            function fillFormInput(att, val) {
                for (var c in component_form) {
                    if (component_form[c] === att) {
                        $('#' + c).val(val);
                    }
                }
            }

            function dropfillInAddress() {
                var place = dropautocomplete.getPlace();

                for (var component in drop_component_form) {
                    document.getElementById(component).value = "";
                    document.getElementById(component).disabled = false;
                }

                for (var j = 0; j < place.address_components.length; j++) {
                    var att = place.address_components[j].types[0];
                    dropfillFormInput(att, place.address_components[j].long_name);
                }
            }
            function dropfillFormInput(att, val) {
                for (var c in drop_component_form) {
                    if (drop_component_form[c] === att) {
                        $('#' + c).val(val);
                    }
                }
            }

            $(function () {
                initialize();
            });

            $('#dropautocomplete').blur(function () {
                $.ajax({
                    url: 'CalculateDistance',
                    data: JSON.stringify({ origin: $('#autocomplete').val(), destination: $('#dropautocomplete').val() }),
                    type: 'POST',
                    contentType: 'application/json; charset=utf-8',
                    success: function (data) {
                        if (data != null) {
                            $('#DISTANCE').val(data);
                            CalculateFare();
                        }
                        else {

                        }
                    }
                });
            });

            function CalculateFare() {
                $.ajax({
                    url: 'CalculateFare',
                    data: JSON.stringify({ distance: $('#DISTANCE').val(), fare: $('#FARE').val() }),
                    type: 'POST',
                    contentType: 'application/json; charset=utf-8',
                    success: function (data) {
                        if (data != null) {
                            $('#TOTAL_AMOUNT').val(data);
                        }
                        else {

                        }
                    }
                });
            }
            $('#CUSTOMER_SEQ_ID').change(function () {
                $.ajax({
                    url: 'FetchCustomerData',
                    data: JSON.stringify({ sID: $('#CUSTOMER_SEQ_ID').val() }),
                    type: 'POST',
                    contentType: 'application/json; charset=utf-8',
                    success: function (data) {

                        if (data != null) {
                            $('#FIRST_NAME').val(data.FIRST_NAME);
                            $('#LAST_NAME').val(data.LAST_NAME);
                            $('#MOBILE_NO').val(data.MOBILE_NO);
                            $('#CUSTOMER_TYPE_SEQ_ID').val(data.CUSTOMER_TYPE_SEQ_ID);
                            $('#PAYMENT_MODE_SEQ_ID').val(data.PAYMENT_MODE_SEQ_ID);
                            $('#CUSTOMER_SEQ_ID').val(data.SEQ_ID);
                            $('#SearchFIRST_NAME').val('');
                            $('#SearchLAST_NAME').val('');
                            $('#SearchMOBILE_NO').val('');
                        }
                        else {
                            $('#FIRST_NAME').val('');
                            $('#LAST_NAME').val('');
                            $('#MOBILE_NO').val('');
                            $('#CUSTOMER_TYPE_SEQ_ID').val('');
                            $('#PAYMENT_MODE_SEQ_ID').val('');
                        }
                    }
                });
            });
            $('#SearchFIRST_NAME').change(function () {
                $.ajax({
                    url: 'FetchCustomerData',
                    data: JSON.stringify({ sLastName: $('#SearchLAST_NAME').val(), sFirstName: $('#SearchFIRST_NAME').val() }),
                    type: 'POST',
                    contentType: 'application/json; charset=utf-8',
                    success: function (data) {

                        if (data != null) {
                            $('#FIRST_NAME').val(data.FIRST_NAME);
                            $('#LAST_NAME').val(data.LAST_NAME);
                            $('#MOBILE_NO').val(data.MOBILE_NO);
                            $('#CUSTOMER_TYPE_SEQ_ID').val(data.CUSTOMER_TYPE_SEQ_ID);
                            $('#PAYMENT_MODE_SEQ_ID').val(data.PAYMENT_MODE_SEQ_ID);
                            $('#CUSTOMER_SEQ_ID').val(data.SEQ_ID);
                            $('#SearchFIRST_NAME').val('');
                            $('#SearchLAST_NAME').val('');
                            $('#SearchMOBILE_NO').val('');
                        }
                        else {
                            $('#FIRST_NAME').val('');
                            $('#LAST_NAME').val('');
                            $('#MOBILE_NO').val('');
                            $('#CUSTOMER_TYPE_SEQ_ID').val('');
                            $('#PAYMENT_MODE_SEQ_ID').val('');
                        }
                    }
                });
            });
            $('#SearchLAST_NAME').change(function () {
                $.ajax({
                    url: 'FetchCustomerData',
                    data: JSON.stringify({ sLastName: $('#SearchLAST_NAME').val(), sFirstName: $('#SearchFIRST_NAME').val() }),
                    type: 'POST',
                    contentType: 'application/json; charset=utf-8',
                    success: function (data) {

                        if (data != null) {
                            $('#FIRST_NAME').val(data.FIRST_NAME);
                            $('#LAST_NAME').val(data.LAST_NAME);
                            $('#MOBILE_NO').val(data.MOBILE_NO);
                            $('#CUSTOMER_TYPE_SEQ_ID').val(data.CUSTOMER_TYPE_SEQ_ID);
                            $('#PAYMENT_MODE_SEQ_ID').val(data.PAYMENT_MODE_SEQ_ID);
                            $('#CUSTOMER_SEQ_ID').val(data.SEQ_ID);
                            $('#SearchFIRST_NAME').val('');
                            $('#SearchLAST_NAME').val('');
                            $('#SearchMOBILE_NO').val('');
                        }
                        else {
                            $('#FIRST_NAME').val('');
                            $('#LAST_NAME').val('');
                            $('#MOBILE_NO').val('');
                            $('#CUSTOMER_TYPE_SEQ_ID').val('');
                            $('#PAYMENT_MODE_SEQ_ID').val('');
                        }
                    }
                });
            });
            $('#SearchMOBILE_NO').change(function () {
                $.ajax({
                    url: 'FetchCustomerData',
                    data: JSON.stringify({ sMobile: $('#SearchMOBILE_NO').val() }),
                    type: 'POST',
                    contentType: 'application/json; charset=utf-8',
                    success: function (data) {

                        if (data != null) {
                            $('#FIRST_NAME').val(data.FIRST_NAME);
                            $('#LAST_NAME').val(data.LAST_NAME);
                            $('#MOBILE_NO').val(data.MOBILE_NO);
                            $('#CUSTOMER_TYPE_SEQ_ID').val(data.CUSTOMER_TYPE_SEQ_ID);
                            $('#PAYMENT_MODE_SEQ_ID').val(data.PAYMENT_MODE_SEQ_ID);
                            $('#CUSTOMER_SEQ_ID').val(data.SEQ_ID);
                            $('#SearchFIRST_NAME').val('');
                            $('#SearchLAST_NAME').val('');
                            $('#SearchMOBILE_NO').val('');
                        }
                        else {
                            $('#FIRST_NAME').val('');
                            $('#LAST_NAME').val('');
                            $('#MOBILE_NO').val('');
                            $('#CUSTOMER_TYPE_SEQ_ID').val('');
                            $('#PAYMENT_MODE_SEQ_ID').val('');
                        }
                    }
                });
            });
        });

    </script>
</asp:Content>

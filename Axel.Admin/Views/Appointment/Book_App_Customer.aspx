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
                <%=Html.Hidden("SEQ_ID",Model.SEQ_ID)%>
                <%=Html.Hidden("ADDITIONAL_COMMENTS",Model.ADDITIONAL_COMMENTS)%>
                <%=Html.Hidden("CODE",Model.CODE)%>
                <%=Html.Hidden("CREATED_BY",Model.CREATED_BY)%>
                <%=Html.Hidden("CREATED_ON",Model.CREATED_ON)%>
                <%=Html.Hidden("CAR_SEQ_ID",Model.CAR_SEQ_ID)%>
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
                <%=Html.Hidden("LUGGAGE",Model.LUGGAGE)%>
                <%=Html.Hidden("MODIFIED_BY",Model.MODIFIED_BY)%>
                <%=Html.Hidden("MODIFIED_ON",Model.MODIFIED_ON)%>
                <%=Html.Hidden("NO_OF_BOOSTERS",Model.NO_OF_BOOSTERS)%>
                <%=Html.Hidden("NO_OF_CHILDREN",Model.NO_OF_CHILDREN)%>
                <%=Html.Hidden("NO_OF_INFANTS",Model.NO_OF_INFANTS)%>
                <%=Html.Hidden("NO_OF_PASSENGERS",Model.NO_OF_PASSENGERS)%>
                <%=Html.Hidden("OTHER_CHARGES",Model.OTHER_CHARGES)%>
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
                <%=Html.Hidden("TOTAL_AMOUNT",Model.TOTAL_AMOUNT)%>
                <%=Html.Hidden("VEHICLE_SEQ_ID",Model.VEHICLE_SEQ_ID)%>
                <%=Html.Hidden("WAIT_AND_RETURN",Model.WAIT_AND_RETURN)%>
                <%=Html.Hidden("STOP_OVER",Model.STOP_OVER)%>

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


                <hr style="width: 910px; margin-left: 0px;" />
                <div class="back" style="float: right; padding-right: 38px;">
                    <%--<a href="<%= Url.Action("Dashboard", "Admin") %>" onclick="return GoBack();">Back to Dashboard</a>--%>

                    <input type="submit" class="button small_margin cgreen" value="Save and Next" name="savenew" />
                    <%--<input type="submit" class="button small_margin cgreen" value="Save and Back to Dashboard" name="submit" />--%>
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
            $('#CUSTOMER_SEQ_ID').change(function () {
                $.ajax({
                    url: '/Appointment/FetchCustomerData',
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
                    url: '/Appointment/FetchCustomerData',
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
                    url: '/Appointment/FetchCustomerData',
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
                    url: '/Appointment/FetchCustomerData',
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

﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Axel.Admin.Models.AppointmentModel>" %>

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
                <%=Html.Hidden("CODE",Model.CODE)%>
                <%=Html.Hidden("CREATED_BY",Model.CREATED_BY)%>
                <%=Html.Hidden("CREATED_ON",Model.CREATED_ON)%>
                <%=Html.Hidden("CUSTOMER_SEQ_ID",Model.CUSTOMER_SEQ_ID)%>
                <%=Html.Hidden("CUSTOMER_TYPE_SEQ_ID",Model.CUSTOMER_TYPE_SEQ_ID)%>
                <%=Html.Hidden("DATE",Model.DATE)%>
                <%=Html.Hidden("DISTANCE",Model.DISTANCE)%>
                <%=Html.Hidden("DROPOFF_POST_CODE",Model.DROPOFF_POST_CODE)%>
                <%=Html.Hidden("DROPOFF_COUNTRY",Model.DROPOFF_COUNTY)%>
                <%=Html.Hidden("DROPOFF_COUNTY",Model.DROPOFF_COUNTY)%>
                <%=Html.Hidden("DROPOFF_CITY",Model.DROPOFF_CITY)%>
                <%=Html.Hidden("DROPOFF_STREET_NAME",Model.PICKUP_STREET_NO)%>
                <%=Html.Hidden("DROPOFF_STREET_NO",Model.DROPOFF_STREET_NO)%>
                <%=Html.Hidden("DROPOFF_HOUSE_NO",Model.DROPOFF_HOUSE_NO)%>
                <%=Html.Hidden("DROPOFF_LOCATION",Model.DROPOFF_LOCATION)%>
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
                <%=Html.Hidden("PAYMENT_MODE_SEQ_ID",Model.PAYMENT_MODE_SEQ_ID)%>
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
                <%=Html.Hidden("VEHICLE_SEQ_ID",Model.VEHICLE_SEQ_ID)%>
                <%=Html.Hidden("WAIT_AND_RETURN",Model.WAIT_AND_RETURN)%>
                <%=Html.Hidden("CAR_SEQ_ID",Model.CAR_SEQ_ID)%>
                <%=Html.Hidden("DRIVER_SEQ_ID",Model.DRIVER_SEQ_ID)%>

                <h3 class="heading">Fare Details</h3>
                <div class="rows clr">
                    <div class="column">
                        <label>Payment Term:<span>*</span></label>
                        <%= Html.DropDownList("PAYMENT_TERMS_SEQ_ID", ViewData["PaymentTermList"] as SelectList, "", new { @class="text_field",@style="height:40px;", @required="required" })%>
                    </div>
                    <div class="column">
                        <label>Fare:</label>
                        <% = Html.TextBox("FARE", Model.FARE, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                    <div class="column">
                        <label>Other charges:</label>
                        <% = Html.TextBox("OTHER_CHARGES", Model.OTHER_CHARGES, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>Total Amount:</label>
                        <% = Html.TextBox("TOTAL_AMOUNT", Model.TOTAL_AMOUNT, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                </div>
                <div class="rows clr">
                    <div class="column">
                        <label>Additional Comments:</label>
                        <% = Html.TextBox("ADDITIONAL_COMMENTS", Model.ADDITIONAL_COMMENTS, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>Driving Directions:</label>
                        <% = Html.TextBox("DRIVING_DIRECTIONS", Model.DRIVING_DIRECTIONS, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>Stop Over:</label>
                        <% = Html.TextBox("STOP_OVER", Model.STOP_OVER, new { @class = "text_field"})%>
                    </div>
                </div>

                <hr style="width: 910px; margin-left: 0px;" />
                <div class="back" style="float: right; padding-right: 38px;">
                    <a href="<%= Url.Action("Book_App_Car", "Appointment", new { ID= Model.SEQ_ID })%>" onclick="return GoBack();">Back to Previous Page</a>

                    <input type="submit" class="button small_margin cgreen" value="Save and Add Further Details" name="savenew" />
                    <input type="submit" class="button small_margin cgreen" value="Save and Finish" name="submit" />
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
            $('#OTHER_CHARGES').change(function () {
                $('#TOTAL_AMOUNT').val(parseFloat($('#FARE').val()) + parseFloat($('#OTHER_CHARGES').val()));
            });
        });
    </script>
</asp:Content>

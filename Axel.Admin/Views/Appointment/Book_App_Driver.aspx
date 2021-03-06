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
                <%=Html.Hidden("ADDITIONAL_COMMENTS",Model.ADDITIONAL_COMMENTS)%>
                <%=Html.Hidden("CODE",Model.CODE)%>
                <%=Html.Hidden("CREATED_BY",Model.CREATED_BY)%>
                <%=Html.Hidden("CREATED_ON",Model.CREATED_ON)%>
                <%=Html.Hidden("CUSTOMER_SEQ_ID",Model.CUSTOMER_SEQ_ID)%>
                <%=Html.Hidden("CUSTOMER_TYPE_SEQ_ID",Model.CUSTOMER_TYPE_SEQ_ID)%>
                <%=Html.Hidden("DATE",Model.DATE)%>
                 <%=Html.Hidden("TIME",Model.TIME)%>
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
                <%=Html.Hidden("TOTAL_AMOUNT",Model.TOTAL_AMOUNT)%>
                <%=Html.Hidden("WAIT_AND_RETURN",Model.WAIT_AND_RETURN)%>
                <%=Html.Hidden("VEHICLE_SEQ_ID",Model.VEHICLE_SEQ_ID) %>
                <%=Html.Hidden("CAR_SEQ_ID",Model.CAR_SEQ_ID) %>
                <%=Html.Hidden("STOP_OVER",Model.STOP_OVER)%>
                <h3 class="heading">Assign a driver</h3>
                <div class="rows clr">
                    <div class="column">
                        <label>Driver:</label>
                        <%= Html.DropDownList("DRIVER_SEQ_ID", ViewData["DriverList"] as SelectList, "", new { @class="text_field",@style="height:40px;" })%>
                    </div>
                </div>

                <hr style="width: 910px; margin-left: 0px;" />
                <div class="back" style="float: right; padding-right: 38px;">
                    <a href="<%= Url.Action("Dashboard", "Admin")%>" onclick="return GoBack();">Back to Dashboard</a>

                    <input type="submit" class="button small_margin cgreen" value="Save and Back to Dashboard" name="savenew" />
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
    </script>
</asp:Content>

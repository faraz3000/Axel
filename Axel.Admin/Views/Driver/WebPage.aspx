<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Axel.Admin.Models.DriverModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Driver
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="inner_wrapper">
        <div class="heading" style="margin-bottom: 30px;">
            <h1>Driver</h1>

        </div>
        <div id="enter-log-book" class="typography">
            <form action="#" method="post" class="form log-book-form">
                <%=Html.Hidden("CREATED_BY",Model.CREATED_BY)%>
                <%=Html.Hidden("CREATED_ON",Model.CREATED_ON)%>
                <h3 style="font-size: 16px; line-height: normal; margin: 10px 0; font-weight: bold;">Driver's Personal Details</h3>
                <div class="rows clr">
                    <div class="column">
                        <%= Html.Hidden("SEQ_ID",Model.SEQ_ID) %>
                        <label>First Name:</label>
                        <% = Html.TextBox("FIRST_NAME", Model.FIRST_NAME, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>Last Name:</label>
                        <% = Html.TextBox("LAST_NAME", Model.LAST_NAME, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>DOB:</label>
                        <%= Html.TextBox("DOB", Model.DOB== null ? " " : String.Format ("{0:dd/MM/yyyy}", Model.DOB), new { @class = "text_field", @id="popupDatepicker", @autocomplete="off" })%>
                    </div>
                    <div class="column" style="text-align: right;">
                        <label>&nbsp;</label>
                        <% = Html.CheckBox("ACTIVE", Model.ACTIVE, new { @class = "checkbox"})%>Active
                    </div>
                </div>
                <div class="rows clr">

                    <div class="column">
                        <label>Nationality:</label>
                        <% = Html.TextBox("NATIONALITY", Model.NATIONALITY, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>Phone No :</label>
                        <% = Html.TextBox("PHONE_NO", Model.PHONE_NO, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>Email:</label>
                        <% = Html.TextBox("EMAIL", Model.EMAIL, new { @class = "text_field"})%>
                    </div>

                </div>

                <h3 style="font-size: 16px; line-height: normal; margin: 10px 0; font-weight: bold;">Driver's Job Details</h3>

                <div class="rows clr">
                    <div class="column">
                        <label>Joining Date:</label>
                        <%= Html.TextBox("JOINING_DATE", Model.JOINING_DATE== null ? "" : String.Format ("{0:dd/MM/yyyy}", Model.JOINING_DATE), new { @class = "text_field", @id="Datepicker1", @autocomplete="off" })%>
                    </div>
                    <div class="column">
                        <label>Leaving Date:</label>
                        <%= Html.TextBox("LEAVING_DATE", Model.LEAVING_DATE== null ? "" : String.Format ("{0:dd/MM/yyyy}", Model.LEAVING_DATE), new { @class = "text_field", @id="Datepicker2", @autocomplete="off" })%>
                    </div>
                </div>

                <h3 style="font-size: 16px; line-height: normal; margin: 10px 0; font-weight: bold;">Driver's Address Details</h3>

                <div class="rows clr">
                    <div class="column">
                        <label>County:</label>
                        <%= Html.DropDownList("COUNTY_SEQ_ID", ViewData["CountyList"] as SelectList, "", new { @class="text_field",@style="height:40px;" , @required="required" })%>
                    </div>
                    <div class="column">
                        <label>City:</label>
                        <%= Html.DropDownList("CITY_SEQ_ID", ViewData["CityList"] as SelectList, "", new { @class="text_field",@style="height:40px;" , @required="required" })%>
                    </div>

                    <div class="column">
                        <label>Street Name:</label>
                        <% = Html.TextBox("STREET_NAME", Model.STREET_NAME, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>House No:</label>
                        <% = Html.TextBox("HOUSE_NO", Model.HOUSE_NO, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>Post Code:</label>
                        <% = Html.TextBox("POST_CODE", Model.POST_CODE, new { @class = "text_field"})%>
                    </div>
                </div>

                <h3 style="font-size: 16px; line-height: normal; margin: 10px 0; font-weight: bold;">Official Details</h3>

                <div class="rows clr">
                    <div class="column">
                        <label>DVLA License:</label>
                        <% = Html.TextBox("DVLA_LICENSE", Model.DVLA_LICENSE, new { @class = "text_field"})%>
                    </div>

                    <div class="column">
                        <label>DVLA Expiry:</label>
                        <%= Html.TextBox("DVLA_EXPIRY", Model.DVLA_EXPIRY== null ? "" : String.Format ("{0:dd/MM/yyyy}", Model.DVLA_EXPIRY), new { @class = "text_field", @id="Datepicker4", @autocomplete="off" })%>
                    </div>
                    <div class="column">
                        <label>PCO License:</label>
                        <% = Html.TextBox("PCO_LICENSE", Model.PCO_LICENSE, new { @class = "text_field"})%>
                    </div>

                    <div class="column">
                        <label>PCO Expiry Date:</label>
                        <%= Html.TextBox("PCO_EXPIRY_DATE", Model.PCO_EXPIRY_DATE== null ? "" : String.Format ("{0:dd/MM/yyyy}", Model.PCO_EXPIRY_DATE), new { @class = "text_field", @id="Datepicker3", @autocomplete="off" })%>
                    </div>
                </div>

                <div class="rows clr">
                    <div class="column">
                        <label>Driver Type:</label>
                        <%= Html.DropDownList("DRIVER_TYPE_SEQ_ID", ViewData["DriverTypeList"] as SelectList, "", new { @class="text_field",@style="height:40px;" , @required="required" })%>
                    </div>
                    <div class="column">
                        <label>Car Type:</label>
                        <%= Html.DropDownList("CAR_TYPE_SEQ_ID", ViewData["CarTypeList"] as SelectList, "", new { @class="text_field",@style="height:40px;" , @required="required" })%>
                    </div>
                    <div class="column">
                        <label>Car Owner:</label>
                        <%= Html.DropDownList("CAR_OWNER_SEQ_ID", ViewData["CarOwnerList"] as SelectList, "", new { @class="text_field",@style="height:40px;" , @required="required" })%>
                    </div>
                    <div class="column">
                        <label>Vehicle Type:</label>
                        <%= Html.DropDownList("VEHICLE_TYPE_SEQ_ID", ViewData["VehicleTypeList"] as SelectList, "", new { @class="text_field",@style="height:40px;" , @required="required" })%>
                    </div>
                    <div class="column">
                        <label>Colour:</label>
                        <% = Html.DropDownList("COLOUR_SEQ_ID", ViewData["ColourList"] as SelectList, "", new { @class="text_field",@style="height:40px;" , @required="required" })%>
                    </div>
                </div>
                <hr style="width: 910px; margin-left: 0px;" />
                <div class="rows clr">

                    <div class="column">
                        <label>Ni No:</label>
                        <% = Html.TextBox("NI_NO", Model.NI_NO, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>Registration No:</label>
                        <% = Html.TextBox("REGISTRATION_NO", Model.REGISTRATION_NO, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>Road Tax Expiry Date:</label>
                        <%= Html.TextBox("ROAD_TAX_EXPIRY_DATE", Model.ROAD_TAX_EXPIRY_DATE== null ? "" : String.Format ("{0:dd/MM/yyyy}", Model.ROAD_TAX_EXPIRY_DATE), new { @class = "text_field", @id="Datepicker5", @autocomplete="off" })%>
                    </div>
                    <div class="column">
                        <label>Insurance Expiry Date:</label>
                        <%= Html.TextBox("INSURANCE_EXPIRY_DATE", Model.INSURANCE_EXPIRY_DATE== null ? "" : String.Format ("{0:dd/MM/yyyy}", Model.INSURANCE_EXPIRY_DATE), new { @class = "text_field", @id="Datepicker6", @autocomplete="off" })%>
                    </div>
                    <div class="column">
                        <label>MOT Expiry Date:</label>
                        <%= Html.TextBox("MOT_EXPIRY_DATE", Model.MOT_EXPIRY_DATE== null ? "" : String.Format ("{0:dd/MM/yyyy}", Model.MOT_EXPIRY_DATE), new { @class = "text_field", @id="Datepicker7", @autocomplete="off" })%>
                    </div>

                    <div class="column">
                        <label>Commission (%):</label>
                        <% = Html.TextBox("COMMISSION", Model.COMMISSION, new { @class = "text_field"})%>
                    </div>
                </div>

                <hr style="width: 910px; margin-left: 0px;" />
                <div class="back" style="float: right; padding-right: 38px;">
                    <a href="<%= Url.Action("Index", "Driver") %>" onclick="return GoBack();">Back to Drivers</a>

                    <input type="submit" class="button small_margin" value="Save and Enter Driver" name="savenew" />
                    <input type="submit" class="button small_margin cgreen" value="Save and Back to Index" name="submit" />
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
            $("#Attribute008").change(function () {
                $("#Attribute009").val($('option:selected', this).text());
            });
        });

    </script>
</asp:Content>

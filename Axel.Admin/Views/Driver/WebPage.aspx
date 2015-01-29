<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Axel.Admin.Models.DriverModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Driver
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="inner_wrapper">
        <div class="heading" style="margin-bottom: 30px;">
            <h1>Driver</h1>
            <h3 style="font-size: 16px; line-height: normal; margin: 10px 0; font-weight: bold;">Enter Driver Details</h3>
        </div>
        <div id="enter-log-book" class="typography">
            <form action="#" method="post" class="form log-book-form">
                <div class="rows clr">
                    <div class="column">
                        <label>First Name:</label>
                        <% = Html.TextBox("FirstName", Model.FIRST_NAME, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                    <div class="column">
                        <label>Last Name:</label>
                        <% = Html.TextBox("LastName", Model.LAST_NAME, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                    <div class="column">
                        <label>DOB:</label>
                        <%= Html.TextBox("DOB", Model.DOB== null ? "" : String.Format ("{0:dd/MM/yyyy}", Model.DOB), new { @class = "text_field", @id="popupDatepicker", @autocomplete="off" })%>
                    </div>
                    <div class="column">
                        <label>Nationality:</label>
                        <% = Html.TextBox("Nationality", Model.NATIONALITY, new { @class = "text_field_required", @readonly="readonly"})%>

                    </div>
                </div>
                <div class="rows clr">

                    <div class="column">
                        <label>Phone No :</label>
                       <% = Html.TextBox("PhoneNo", Model.PHONE_NO, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                    <div class="column">
                        <label>Email:</label>
                        <% = Html.TextBox("Email", Model.EMAIL, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                    <div class="column">
                        <label>Joining Date:</label>
                        <%= Html.TextBox("JoiningDate", Model.JOINING_DATE== null ? "" : String.Format ("{0:dd/MM/yyyy}", Model.JOINING_DATE), new { @class = "text_field", @id="popupDatepicker", @autocomplete="off" })%>
                    </div>
                    <div class="column">
                        <label>Leaving Date:</label>
                        <%= Html.TextBox("LeavingDate", Model.LEAVING_DATE== null ? "" : String.Format ("{0:dd/MM/yyyy}", Model.LEAVING_DATE), new { @class = "text_field", @id="popupDatepicker", @autocomplete="off" })%>
                    </div>
                </div>

                 <div class="rows clr">
                    <div class="column">
                        <label>Active:</label>
                        <% = Html.CheckBox("Active", Model.ACTIVE, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                    <div class="column">
                        <label>City:</label>
                       <%= Html.DropDownList("City", ViewData["CityList"] as SelectList, "", new { @class="text_field",@style="height:40px;" , @required="required" })%>
                    </div>
                    <div class="column">
                        <label>County:</label>
                        <%= Html.DropDownList("County", ViewData["CountyList"] as SelectList, "", new { @class="text_field",@style="height:40px;" , @required="required" })%>
                    </div>
                    <div class="column">
                        <label>Street Name:</label>
                       <% = Html.TextBox("StreetName", Model.STREET_NAME, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                </div>

                 <div class="rows clr">
                    <div class="column">
                        <label>House No:</label>
                        <% = Html.TextBox("HouseNo", Model.HOUSE_NO, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                    <div class="column">
                        <label>Post Code:</label>
                        <% = Html.TextBox("PostCode", Model.POST_CODE, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                    <div class="column">
                        <label>DVLA License:</label>
                        <% = Html.TextBox("DVLALicense", Model.DVLA_LICENSE, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                    <div class="column">
                        <label>PCO License:</label>
                       <% = Html.TextBox("PCOLicense", Model.PCO_LICENSE, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                </div>

                 <div class="rows clr">
                    <div class="column">
                        <label>Driver Type:</label>
                        <%= Html.DropDownList("DriverType", ViewData["DriverTypeList"] as SelectList, "", new { @class="text_field",@style="height:40px;" , @required="required" })%>
                    </div>
                    <div class="column">
                        <label>Ni No:</label>
                        <% = Html.TextBox("NINo", Model.NI_NO, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                    <div class="column">
                        <label>PCO Expiry Date:</label>
                        <%= Html.TextBox("PCOExpiryDate", Model.PCO_EXPIRY_DATE== null ? "" : String.Format ("{0:dd/MM/yyyy}", Model.PCO_EXPIRY_DATE), new { @class = "text_field", @id="popupDatepicker", @autocomplete="off" })%>
                    </div>
                    <div class="column">
                        <label>DVLA Expiry:</label>
                       <% = Html.TextBox("DVLAExpiry", Model.DVLA_Expiry, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                </div>
               
                <div class="rows clr">
                    <div class="column">
                        <label>Car Owner:</label>
                        <%= Html.DropDownList("CarOwner", ViewData["CarOwnerList"] as SelectList, "", new { @class="text_field",@style="height:40px;" , @required="required" })%>
                    </div>
                    <div class="column">
                        <label>Vehicle Type:</label>
                        <%= Html.DropDownList("VehicleType", ViewData["VehicleTypeList"] as SelectList, "", new { @class="text_field",@style="height:40px;" , @required="required" })%>
                    </div>
                    <div class="column">
                        <label>Colour:</label>
                        <% = Html.TextBox("Colour", Model.COLOUR, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                    <div class="column">
                        <label>Car Type:</label>
                       <%= Html.DropDownList("CarType", ViewData["CarTypeList"] as SelectList, "", new { @class="text_field",@style="height:40px;" , @required="required" })%>
                    </div>
                </div>

                <div class="rows clr">

                    <div class="column">
                        <label>Registration No:</label>
                       <% = Html.TextBox("RegistrationNo", Model.REGISTRATION_NO, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                    <div class="column">
                        <label>Road Tax Expiry Date:</label>
                        <%= Html.TextBox("RoadTaxExpiryDate", Model.ROAD_TAX_EXPIRY_DATE== null ? "" : String.Format ("{0:dd/MM/yyyy}", Model.ROAD_TAX_EXPIRY_DATE), new { @class = "text_field", @id="popupDatepicker", @autocomplete="off" })%>
                    </div>
                    <div class="column">
                        <label>Insurance Expiry Date:</label>
                        <%= Html.TextBox("InsuranceExpiryDate", Model.INSURANCE_EXPIRY_DATE== null ? "" : String.Format ("{0:dd/MM/yyyy}", Model.INSURANCE_EXPIRY_DATE), new { @class = "text_field", @id="popupDatepicker", @autocomplete="off" })%>
                    </div>
                    <div class="column">
                        <label>MOT Expiry Date:</label>
                        <%= Html.TextBox("MOTExpiryDate", Model.MOT_EXPIRY_DATE== null ? "" : String.Format ("{0:dd/MM/yyyy}", Model.MOT_EXPIRY_DATE), new { @class = "text_field", @id="popupDatepicker", @autocomplete="off" })%>
                    </div>
                </div>

                <div class="rows clr">

                    <div class="column">
                        <label>Commission (%):</label>
                       <% = Html.TextBox("Commission(%)", Model.COMMISSION, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                    <div class="column">
                        
                    </div>
                    <div class="column">
                        
                    </div>
                    <div class="column">
                        
                    </div>
                </div>
                    </div>
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

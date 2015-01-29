<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Axel.Admin.Models.CustomerModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Customer
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="inner_wrapper">
        <div class="heading" style="margin-bottom: 30px;">
            <h1>Customer</h1>
            <h3 style="font-size: 16px; line-height: normal; margin: 10px 0; font-weight: bold;">Enter Customer Details</h3>
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
                        <label>Email:</label>
                        <% = Html.TextBox("Email", Model.EMAIL, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                    <div class="column">
                        <label>Customer Type:</label>
                       <%= Html.DropDownList("CUSTOMER_TYPE", ViewData["CustomerTypeList"] as SelectList, "", new { @class="text_field",@style="height:40px;" , @required="required" })%>
                    </div>
                </div>
                <div class="rows clr">

                    <div class="column">
                        <label>Home Phone:</label>
                       <% = Html.TextBox("HomePhone", Model.HOME_PHONE, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                    <div class="column">
                        <label>Mobile No:</label>
                        <% = Html.TextBox("MobileNo", Model.MOBILE_NO, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                    <div class="column">
                        <label>Payment Mode:</label>
                        <%= Html.DropDownList("Payment_Mode", ViewData["PaymentModeList"] as SelectList, "", new { @class="text_field",@style="height:40px;" , @required="required" })%>
                    </div>
                    <div class="column">
                        <label>City:</label>
                        <%= Html.DropDownList("City", ViewData["CityList"] as SelectList, "", new { @class="text_field",@style="height:40px;" , @required="required" })%>
                    </div>
                    <div class="column" style="text-align: right;">
                    </div>
                </div>
                 <div class="rows clr">
                    <div class="column">
                        <label>Street Name:</label>
                        <% = Html.TextBox("StreetName", Model.STREET_NAME, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                    <div class="column">
                        <label>House No:</label>
                        <% = Html.TextBox("HouseNo", Model.HOUSE_NO, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                    <div class="column">
                        <label>County:</label>
                        <%= Html.DropDownList("County", ViewData["CountyList"] as SelectList, "", new { @class="text_field",@style="height:40px;" , @required="required" })%>
                    </div>
                    <div class="column">
                        <label>Post Code:</label>
                       <% = Html.TextBox("PostCode", Model.POST_CODE, new { @class = "text_field_required", @readonly="readonly"})%>
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

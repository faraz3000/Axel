<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Axel.Admin.Models.CustomerModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Customer
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="inner_wrapper">
        <div class="heading" style="margin-bottom: 30px;">
            <h1>Customer</h1>
        </div>
        <div id="enter-log-book" class="typography">
            <form action="#" method="post" class="form log-book-form">
                <%=Html.Hidden("CREATED_BY",Model.CREATED_BY)%>
                <%=Html.Hidden("CREATED_ON",Model.CREATED_ON)%>
                <h3 style="font-size: 16px; line-height: normal; margin: 10px 0; font-weight: bold;">Customer Details</h3>
                <div class="rows clr">
                    <div class="column">
                        <label>Code:<span>*</span></label>
                        <% = Html.TextBox("CODE", Model.CODE, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                    <div class="column">
                        <%=  Html.Hidden("SEQ_ID",Model.SEQ_ID) %>
                        <label>First Name:<span>*</span></label>
                        <% = Html.TextBox("FIRST_NAME", Model.FIRST_NAME, new { @class = "text_field", @required="required"})%>
                    </div>
                    <div class="column">
                        <label>Last Name:<span>*</span></label>

                        <% = Html.TextBox("LAST_NAME", Model.LAST_NAME, new { @class = "text_field", @required="required"})%>
                    </div>

                    <div class="column">
                        <label>Mobile No:<span>*</span></label>
                        <% = Html.TextBox("MOBILE_NO", Model.MOBILE_NO, new { @class = "text_field", @required="required"})%>
                    </div>
                </div>
                <div class="rows clr">

                    <div class="column">
                        <label>Customer Type:</label>
                        <%= Html.DropDownList("CUSTOMER_TYPE_SEQ_ID", ViewData["CustomerTypeList"] as SelectList, "", new { @class="text_field",@style="height:40px;" })%>
                    </div>
                    <div class="column">
                        <label>Payment Mode:</label>
                        <%= Html.DropDownList("PAYMENT_MODE_SEQ_ID", ViewData["PaymentModeList"] as SelectList, "", new { @class="text_field",@style="height:40px;" })%>
                    </div>

                    <div class="column">
                        <label>Email:</label>
                        <% = Html.TextBox("EMAIL", Model.EMAIL, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>Home Phone:</label>
                        <% = Html.TextBox("HOME_PHONE", Model.HOME_PHONE, new { @class = "text_field"})%>
                    </div>
                    <div class="column" style="text-align: right;">
                    </div>
                </div>
                <h3 style="font-size: 16px; line-height: normal; margin: 10px 0; font-weight: bold;">Address Details</h3>
                <hr style="width: 910px; margin-left: 0px;" />
                <div class="rows clr">
                    <div class="column">
                        <label>Street Name:</label>
                        <% = Html.TextBox("STREET_NAME", Model.STREET_NAME, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>House No:</label>
                        <% = Html.TextBox("HOUSE_NO", Model.HOUSE_NO, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        <label>City:</label>
                        <%= Html.DropDownList("CITY", ViewData["CityList"] as SelectList, "", new { @class="text_field",@style="height:40px;" })%>
                    </div>
                    <div class="column">
                        <label>County:</label>
                        <%= Html.DropDownList("COUNTY", ViewData["CountyList"] as SelectList, "", new { @class="text_field",@style="height:40px;" })%>
                    </div>
                </div>
                <div class="rows clr">
                    <div class="column">
                        <label>Post Code:</label>
                        <% = Html.TextBox("POST_CODE", Model.POST_CODE, new { @class = "text_field"})%>
                    </div>

                </div>
                <hr style="width: 910px; margin-left: 0px;" />
                <div class="back" style="float: right; padding-right: 38px;">
                    <a href="<%= Url.Action("Index", "Customer") %>" onclick="return GoBack();">Back to Customers</a>

                    <input type="submit" class="button small_margin" value="Save and Enter Customer" name="savenew" />
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

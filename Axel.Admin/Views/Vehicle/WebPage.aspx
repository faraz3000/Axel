<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Axel.Admin.Models.VehicleModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Vehicle
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="inner_wrapper">
        <div class="heading" style="margin-bottom: 30px;">
            <h1>Vehicle</h1>
            <h3 style="font-size: 16px; line-height: normal; margin: 10px 0; font-weight: bold;">Enter Vehicle Details</h3>
        </div>
        <div id="enter-log-book" class="typography">
            <form action="#" method="post" class="form log-book-form">
                <%=Html.Hidden("CREATED_BY",Model.CREATED_BY)%>
                <%=Html.Hidden("CREATED_ON",Model.CREATED_ON)%>
                <div class="rows clr">
                    <div class="column">
                        <label>Description:</label>
                        <% = Html.TextBox("DESCRIPTION", Model.DESCRIPTION, new { @class = "text_field"})%>
                        <%= Html.Hidden("SEQ_ID", Model.SEQ_ID) %>
                    </div>
                    <div class="column">
                        <label>Manufacturer:</label>
                        <%= Html.DropDownList("MANUFACTURER_SEQ_ID", ViewData["ManufacturerList"] as SelectList, "", new { @class="text_field",@style="height:40px;" , @required="required" })%>
                    </div>
                    <div class="column">
                        <label>Class:</label>
                        <%= Html.DropDownList("CLASS_TYPE_SEQ_ID", ViewData["ClassList"] as SelectList, "", new { @class="text_field",@style="height:40px;" , @required="required" })%>
                    </div>
                    <div class="column" style="text-align: right;">
                        <label>&nbsp;</label>
                        <%= Html.CheckBox("ACTIVE", Model.ACTIVE, new { @class = "checkbox"})%>Active
                    </div>
                </div>
                <div class="rows clr">
                    <div class="column">
                        <label>Basic Charge for Upto 10 Km:</label>
                        <% = Html.TextBox("BASICFARE", Model.BASICFARE, new { @class = "text_field", @required = "required" })%>
                    </div>
                    <div class="column">
                        <label>Additional Fare per Km:</label>
                        <% = Html.TextBox("ADDITIONALKMFARE", Model.ADDITIONALKMFARE, new { @class = "text_field", @required = "required" })%>
                    </div>
                </div>
        <hr style="width: 910px; margin-left: 0px;" />
        <div class="back" style="float: right; padding-right: 38px;">
            <a href="<%= Url.Action("Index", "Vehicle") %>" onclick="return GoBack();">Back to Vehicles</a>

            <input type="submit" class="button small_margin" value="Save and Enter Vehicle" name="savenew" />
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

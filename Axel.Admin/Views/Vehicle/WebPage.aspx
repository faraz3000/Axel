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
                <div class="rows clr">
                    <div class="column">
                        <label>Description:</label>
                        <% = Html.TextBox("FirstName", Model.DESCRIPTION, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                    <div class="column">
                        <label>Manufacturer:</label>
                        <%= Html.DropDownList("Manufacturer", ViewData["ManufacturerList"] as SelectList, "", new { @class="text_field",@style="height:40px;" , @required="required" })%>
                    </div>
                    <div class="column">
                        <label>Class:</label>
                        <%= Html.DropDownList("Class", ViewData["ClassList"] as SelectList, "", new { @class="text_field",@style="height:40px;" , @required="required" })%>
                    </div>
                    <div class="column">
                        <label>Active:</label>
                       <%= Html.CheckBox("Active", Model.ACTIVE, new { @class = "text_field_required", @readonly="readonly"})%>
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

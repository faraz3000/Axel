<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Axel.Admin.Models.DriverModel>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index - Driver
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="heading" style="margin-bottom: 30px;">
        <h1>Driver</h1>
    </div>

    <div id="Div1" class="typography fivecolumn">

        <h3>List Of Drivers</h3>
        <a href="<%= Url.Action("WebPage", "Driver")%>" class="tab_link">
            <img src="../../Images/NoteBook.png" style="height: 20px; margin: -6px 5px;" />Add a Driver</a>
        <div class="table">
            <div class="row clr">
                <div class="column heading_column">
                    <strong>Action</strong>
                </div>
                <div class="column heading_column">
                    <strong>Full Name</strong>
                </div>
                <div class="column heading_column">
                    <strong>Phone No.</strong>
                </div>
                <div class="column heading_column">
                    <strong>Email</strong>
                </div>
                <div class="column heading_column">
                    <strong>Customer Type</strong>
                </div>

            </div>
            <% foreach (var m in Model)
               { %>
            <div class="row clr">
                <div class="column">
                    <a href="<%= Url.Action("WebPage", "Driver", new { ID = m.SEQ_ID })%>">
                        <img alt="Edit" style="margin: 0px 10px -4px 10px;" src="../../Images/edit_inline.gif" /></a>
                    | <a href="<%= Url.Action("Delete", "Driver", new { ID = m.SEQ_ID })%>">
                        <img alt="Delete" style="margin: 0px 10px -4px 10px;" src="../../Images/delete_inline.gif" /></a>
                </div>
                <div class="column">
                    <%= Html.Encode(string.IsNullOrEmpty(m.FIRST_NAME)?"-":m.FIRST_NAME +" "+ m.LAST_NAME)%>
                </div>
                <div class="column">
                    <%= Html.Encode(string.IsNullOrEmpty(m.PHONE_NO)?"-":m.PHONE_NO)%>
                </div>
                <div class="column">
                    <%= Html.Encode(string.IsNullOrEmpty(m.EMAIL)?"-":m.EMAIL)%>
                </div>
                <div class="column">
                    <%= Html.Encode(((SelectList)ViewData["DriverTypeList"]).Where(i => i.Value == Convert.ToString(m.DRIVER_TYPE_SEQ_ID)).SingleOrDefault().Text) %>
                </div>
            </div>
            <% } %>
        </div>
        <%-- <div class="back" style="float: right;margin-right:-9px;">
            <a href="<%= Url.Action("OSO_LogBook", "LogBook") %>">Back to Logbook Overview</a>
        </div>--%>
    </div>

</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="LeftSideMenu" runat="server">
    <ul>
        <li><a href="<%=Url.Action("Index","Customer") %>">Customer</a></li>
        <li><a href="<%=Url.Action("Index","Driver") %>">Driver</a></li>
        <li><a href="<%=Url.Action("Index","Vehicle") %>">Vehicle</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>

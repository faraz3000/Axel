<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Axel.Admin.Models.CustomerModel>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index - Customer
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
            <div class="heading" style="margin-bottom: 30px;">
                    <h1>Customer</h1>
        </div>

    <div id="Div1" class="typography fivecolumn">

        <%--<h3>List Of Induction Courses</h3>
        <a href="<%= Url.Action("Black_OSO_WebPage", "InductionCourse")%>" class="tab_link"><img src="../../Images/NoteBook.png" style="height: 20px; margin: -6px 5px;" />Add more Induction Courses</a>--%>
        <div class="table">
            <div class="row clr">
                <div class="column heading_column">
                    <strong>First Name</strong>
                </div>
                <div class="column heading_column">
                    <strong>Last Name</strong>
                </div>
                <div class="column heading_column">
                    <strong>Email</strong>
                </div>
                <div class="column heading_column">
                    <strong>Mobile No</strong>
                </div>
                <div class="column heading_column">
                    <strong>Customer Type</strong>
                </div>

            </div>
            <% foreach (var IndCor in Model)
               { %>
            <div class="row clr">
                <div class="column">
                   <%= Html.Encode(string.IsNullOrEmpty(IndCor.FIRST_NAME)?"-":IndCor.FIRST_NAME)%>
                </div>
                <div class="column">
                    <%= Html.Encode(string.IsNullOrEmpty(IndCor.LAST_NAME)?"-":IndCor.LAST_NAME)%>
                    </div>
                <div class="column"> 
                    <%= Html.Encode(string.IsNullOrEmpty(IndCor.EMAIL)?"-":IndCor.EMAIL)%>
                </div>
                <div class="column">
                    <%= Html.Encode(string.IsNullOrEmpty(IndCor.MOBILE_NO)?"-":IndCor.MOBILE_NO)%>
                </div>
                <div class="column">
                    <%= Html.DropDownList("CUSTOMER_TYPE", ViewData["CustomerTypeList"] as SelectList, "", new { @class="text_field",@style="height:40px;" , @required="required" })%>
                </div>
            </div>
            <% } %>
        </div>
               <%-- <div class="back" style="float: right;margin-right:-9px;">
            <a href="<%= Url.Action("OSO_LogBook", "LogBook") %>">Back to Logbook Overview</a>
        </div>--%>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>

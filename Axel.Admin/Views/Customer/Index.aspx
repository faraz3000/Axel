<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Axel.Admin.Models.CustomerModel>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index - Dynamic Positioning
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
            <div class="heading" style="margin-bottom: 30px;">
                    <h1>Induction Courses</h1>
        </div>

    <div id="Div1" class="typography fivecolumn">

        <h3>List Of Induction Courses</h3>
        <a href="<%= Url.Action("Black_OSO_WebPage", "InductionCourse")%>" class="tab_link"><img src="../../Images/NoteBook.png" style="height: 20px; margin: -6px 5px;" />Add more Induction Courses</a>
        <div class="table">
            <div class="row clr">
                <div class="column heading_column">
                    <strong>Action</strong>
                </div>
                <div class="column heading_column">
                    <strong>Centre</strong>
                </div>
                <div class="column heading_column">
                    <strong>Certificate No.</strong>
                </div>
                <div class="column heading_column">
                    <strong>Signed</strong>
                </div>
                <div class="column heading_column">
                    <strong>Instructor Name</strong>
                </div>

            </div>
<%--            <% foreach (var IndCor in Model)
               { %>--%>
            <div class="row clr">
                <div class="column">
                    <%--<a title="Edit" href="<%= Url.Action("Black_OSO_WebPage", "InductionCourse", new { strInductionCourseId = IndCor.RecordId })%>">--%>
                        <%--<img alt="Edit" style="margin: 0px 10px -4px 10px;" src="../../Images/edit_inline.gif" /></a>--%>
                     <%--| <a title="Delete" href="<%= Url.Action("Black_OSO_DeleteCourse", "InductionCourse", new { strInductionCourseId = IndCor.RecordId })%>"><img alt="Delete" style="margin: 0px 10px -4px 10px;" src="../../Images/delete_inline.gif" /></a>--%>
                </div>
                <div class="column">
                        <%--<%= Html.Encode(IndCor.Attribute003 !=null?  IndCor.Attribute003.Length > 20? IndCor.Attribute003.Substring(0,20) + "...": IndCor.Attribute003 : "-")%>--%>
                    </div>
                <div class="column"> 
                    <%--<%= Html.Encode(string.IsNullOrEmpty(IndCor.Attribute014)?"-":IndCor.Attribute014)%>--%>
                </div>
                <div class="column">
                    <%--<%= Html.Encode(string.IsNullOrEmpty(IndCor.Attribute005)?"-":IndCor.Attribute005)%>--%>
                </div>
                <div class="column">
                    <%--<%= Html.Encode(string.IsNullOrEmpty(IndCor.Attribute021)?"-":IndCor.Attribute021)%>--%>
                </div>
            </div>
<%--            <% } %>--%>
        </div>
                <div class="back" style="float: right;margin-right:-9px;">
            <a href="<%= Url.Action("OSO_LogBook", "LogBook") %>">Back to Logbook Overview</a>
        </div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
        Please click on “Add more Induction Courses” to add the details of the Induction course. <br /><br />
If your Induction course is over five years old, the retaken course should also be added on this page.
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>

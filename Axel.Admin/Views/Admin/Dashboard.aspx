<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<List<Axel.Admin.Models.AppointmentModel>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Dashboard
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="heading" style="margin-bottom: 30px;">
        <h1>Appointments</h1>
    </div>

    <div id="Div1" class="typography tencolumn">

        <h3>List Of Appointments</h3>
        <% if (Request.QueryString.AllKeys.Length > 0)
           {
               if (Request.QueryString.GetValues("Filter")[0] != "TodaysAppointments")
               {%>
        <div style="float: right; margin-bottom: 10px; margin-top: -27px;">
            <a style="font-size:14px" href="<%=Request.Url.AbsoluteUri.ToString()%>&D=1">Today</a>  | <a style="font-size:14px" href="<%=Request.Url.AbsoluteUri.ToString()%>">All</a>
        </div>
        <% }
               else
               {%>
        <div style="float: right; margin-bottom: 10px; margin-top: -27px;">
            <a style="font-size:14px" href="<%=Request.Url.AbsoluteUri.ToString()%>&D=1">Today</a>  | <a style="font-size:14px" href="<%=Request.FilePath.ToString()%>">All</a>
        </div>
        <%}
           } %>
        <table class="fa-table">
            <thead style="background: #d9edf7">
                <tr>
                    <% if (Request.QueryString.AllKeys.Length == 0 || Request.QueryString.GetValues("Filter")[0] == "TodaysAppointments")
                       {%>
                    <th>
                        <strong>Edit</strong>
                    </th>
                    <%}%>
                    <th>
                        <strong>Date/Time</strong>
                    </th>
                    <th>
                        <strong>Full Name</strong>
                    </th>
                    <th>
                        <strong>Mobile No</strong>
                    </th>
                    <th>
                        <strong>Car</strong>
                    </th>
                    <th>
                        <strong>Driver</strong>
                    </th>
                    <th>
                        <strong>Pickup</strong>
                    </th>
                    <th>
                        <strong>Dropoff</strong>
                    </th>
                    <th>
                        <strong>Set Status</strong>
                    </th>
                </tr>
            </thead>
            <tbody style="background: #f6fefd; border-right: 1px solid #d3d3d3;">
                <%if (Model.Count > 0)
                  {
                      foreach (var m in Model)
                      { %>
                <tr>
                    <% if (Request.QueryString.AllKeys.Length == 0 || Request.QueryString.GetValues("Filter")[0] == "TodaysAppointments")
                       {%>
                    <td>
                        <a href="<%= Url.Action("WebPage", "Appointment", new { ID = m.SEQ_ID })%>">
                            <img alt="Edit" style="margin: 0px 10px -4px 10px;" src="../../Images/edit_inline.gif" /></a>
                        <%--                        | <a href="<%= Url.Action("Delete", "Appointment", new { ID = m.SEQ_ID })%>">
                            <img alt="Delete" style="margin: 0px 10px -4px 10px;" src="../../Images/delete_inline.gif" /></a>--%>

                    </td>
                    <% } %>

                    <td><%= Html.Encode(string.Format("{0:yyyy/MM/dd}", m.DATE) + " " + string.Format("{0:hh:mm}", m.TIME))%></td>
                    <td><%= Html.Encode(string.IsNullOrEmpty(m.FIRST_NAME) ? "-" : m.FIRST_NAME + " " + m.LAST_NAME)%></td>
                    <td><%= Html.Encode(string.IsNullOrEmpty(m.MOBILE_NO) ? "-" : m.MOBILE_NO)%></td>
                    <td><% if (m.CAR_SEQ_ID > 0)
                           { %>
                        <%= Html.Encode(((SelectList)ViewData["CarList"]).Where(i => i.Value == Convert.ToString(m.CAR_SEQ_ID)).SingleOrDefault().Text)%>
                        <% }
                           else
                           { %>
                        <a style="color: red;" href="<%= Url.Action("WebPage", "Appointment", new { ID = m.SEQ_ID, Edit="AssignCar" })%>">Assign</a>
                        <% } %></td>
                    <td><% if (m.DRIVER_SEQ_ID > 0)
                           { %>
                        <%= Html.Encode(((SelectList)ViewData["DriverList"]).Where(i => i.Value == Convert.ToString(m.DRIVER_SEQ_ID)).SingleOrDefault().Text)%>
                        <% }
                           else
                           { %>
                        <a style="color: red;" href="<%= Url.Action("WebPage", "Appointment", new { ID = m.SEQ_ID, Edit="AssignDriver" })%>">Assign</a>
                        <% } %>
                        
                        
                    </td>
                    <td><%= Html.Encode(string.IsNullOrEmpty(m.PICKUP_LOCATION) ? "-" : m.PICKUP_LOCATION)%></td>
                    <td><%= Html.Encode(string.IsNullOrEmpty(m.DROPOFF_LOCATION) ? "-" : m.DROPOFF_LOCATION)%></td>
                    <td>
                        <% if (m.STATUS_SEQ_ID == 0)
                           { %>
                        <a href="<%= Url.Action("CANCELLED", "Admin", new { ID = m.SEQ_ID })%>">CANCEL</a>
                        <% if (m.DRIVER_SEQ_ID > 0 && m.CAR_SEQ_ID > 0)
                           { %>| 
                        <a href="<%= Url.Action("READY", "Admin", new { ID = m.SEQ_ID })%>">READY</a>
                        <%} %>
                        <%}
                           else if (m.STATUS_SEQ_ID == 23)
                           { %>
                        <a href="<%= Url.Action("DISPATCHED", "Admin", new { ID = m.SEQ_ID })%>">DISPATCH</a>
                        <%}
                           else if (m.STATUS_SEQ_ID == 22)
                           { %>
                        <a href="<%= Url.Action("COMPLETED", "Admin", new { ID = m.SEQ_ID })%>">COMPLETE</a>
                        <% }
                           else
                           { %>
                        <%=Html.Encode("-")%>
                        <% } %>
                    </td>
                </tr>
                <%}
                  }
                  else
                  { %>
                <tr>
                    <td colspan="9" style="text-align: left">No Results found!</td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="LeftSideMenu" runat="server">
    <ul>
        <li><a href="?Filter=TodaysAppointments" style="font-size: 14px">Today's Appointment</a></li>
        <li><a href="?Filter=Unassigned" style="font-size: 14px">Unassigned</a></li>
        <li><a href="?Filter=ReadyforDispatch" style="font-size: 14px">Ready for Dispatch</a></li>
        <li><a href="?Filter=Dispatched" style="font-size: 14px">Dispatched</a></li>
        <li><a href="?Filter=Completed" style="font-size: 14px">Completed</a></li>
        <li><a href="?Filter=Cancelled" style="font-size: 14px">Cancelled</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>

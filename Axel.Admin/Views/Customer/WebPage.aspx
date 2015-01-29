<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Axel.Admin.Models.CustomerModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Induction Course - Dynamic Positioning
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="inner_wrapper">
        <div class="heading" style="margin-bottom: 30px;">
            <h1>Induction Course</h1>
            <h3 style="font-size: 16px; line-height: normal; margin: 10px 0; font-weight: bold;">Enter Induction Course Details</h3>
        </div>




        <div id="enter-log-book" class="typography">
            <form action="#" method="post" class="form log-book-form">
                <div class="rows clr">
                    <div class="column">
                        <label>Name:</label>
                        <% = Html.TextBox("Attribute017", Model.Attribute017, new { @class = "text_field_required", @readonly="readonly"})%>
                        <%= Html.Hidden("Attribute010", Model.Attribute010) %>
                        <%= Html.Hidden("Attribute011", Model.Attribute011) %>
                        <%= Html.Hidden("Attribute016", Model.Attribute016) %>
                        <%= Html.Hidden("Attribute008", Model.Attribute008) %>
                        <%= Html.Hidden("RecordId", Model.RecordId) %>
                    </div>
                    <div class="column">
                        <label>Application ID:</label>

                        <% = Html.TextBox("Attribute009", Model.Attribute009, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                    <div class="column">
                        <label>Logbook Type:</label>
                        <% = Html.TextBox("Attribute019", Model.Attribute019, new { @class = "text_field_required", @readonly="readonly"})%>
                        <%= Html.Hidden("Attribute018", Model.Attribute018) %>
                        <%= Html.Hidden("Attribute020", Model.Attribute020) %>
                    </div>
                    <div class="column">
                        <label>Logbook Number:</label>
                        <% = Html.TextBox("Attribute011", Model.Attribute011, new { @class = "text_field_required", @readonly="readonly"})%>
                    </div>
                </div>
                <div class="rows clr">

                    <div class="column">
                        <label>Date:</label>
                        <%= Html.TextBox("Attribute004", Model.Attribute004== null ? "" : String.Format("{0:dd/MM/yyyy}",Model.Attribute004), new { @class = "text_field", @id="popupDatepicker", @autocomplete="off" })%>
                    </div>
                    <div class="column">
                        <label>Centre:<span>*</span></label>
                        <%= Html.DropDownList("Attribute002", ViewData["AccountList"] as SelectList, "", new { @class="text_field",@style="height:40px;" , @required="required" })%>
                        <%=Html.Hidden("Attribute003", Model.Attribute003) %>
                    </div>
                    <div class="column">
                        <label>Certificate Number:</label>
                        <% = Html.TextBox("Attribute014", Model.Attribute014, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                    </div>
                    <div class="column" style="text-align: right;">
                    </div>
                </div>
                <hr style="width: 984px; margin-left: 0px;" />
                <div class="rows clr" style="width: 984px;">
                    <div class="column">
                        <label>Name of the Instructor:</label>
                        <% = Html.TextBox("Attribute021", Model.Attribute021, new { @class = "text_field"})%>
                    </div>
                    <div class="column">
                        &nbsp;
                    </div>
                    <div class="column">
                        &nbsp;
                    </div>
                    <div class="column" style="float: right; text-align: right; width: 70%;">
                        <%= Html.CheckBox("Attribute005", Model.Attribute005 == null ? false : Model.Attribute005 == "N" ? false : true, new Dictionary<string, object> { { "required data-errormessage-value-missing", "The course must be signed by the training centre instructor. If the entry is missing this signature please return to the training centre where your logbook was issued to have this rectified." }, { "class" , "checkbox" }, {"required" , "required" }})%>Signed<span>*</span>
                        <%= Html.CheckBox("Attribute006",Model.Attribute006 == null ? false : Model.Attribute006 == "N" ? false:true, new Dictionary<string, object> { { "required data-errormessage-value-missing", "The course must be stamped in your logbook. If the entry is missing this stamp, please return to the training centre where your logbook was issued to have this rectified" }, { "class" , "checkbox" }, {"required" , "required" }})%>I have this course stamped<span>*</span>
                        <%--<%= Html.CheckBox("Attribute020",Model.Attribute020 == null ? false : Model.Attribute020 == "N" ? false:true,  new { @class = "checkbox" })%>Exam Passed--%>
                    </div>
                </div>
                <hr style="width: 984px; margin-left: 0px;" />
                <div class="back" style="float: right; padding-right: 38px;">
                    <a href="<%= Url.Action("OSO_LogBook", "LogBook") %>" onclick="return GoBack();">Back to Logbook Overview</a>
                    <% if (Model.Attribute015 != "Y")
                       { %>
                    <input type="submit" class="button small_margin" value="Save and Enter New Phase" name="savenew" />
                    <input type="submit" class="button small_margin cgreen" value="Save and Back to Phase" name="submit" />
                    <%} %>
                </div>
            </form>
        </div>

    </div>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
    Please enter your Induction course details on this page. You will  need to enter:<br /><br />
-The course date<br />
-The course centre where your Induction course was completed<br />
-The certificate number<br />
-Name of the course instructor<br />
<br />
The course must be signed and stamped by the training centre. It the course is not, please return to the training centre where the course was taken for this information to be filled in.

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

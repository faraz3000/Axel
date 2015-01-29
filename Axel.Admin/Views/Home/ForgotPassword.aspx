<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<NIDP.Models.ContactModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Forgot Password - Dynamic Positioning
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div id="intro_login_register">
        <h1>Forgot Password</h1>
        <img src="/Images/login_dots.png" width="7" height="64" alt="dots" />
        <div class="box login" style="padding-top: 25px;">
            <h5 style="margin-bottom: 10px;">Enter your email address or user name. Your<br>
                password will be reset and new password will be sent to you in the email.</h5>
            <form action="#" method="post" class="form">
                <input type="text" class="text_field" value="" name="Attribute020" placeholder="- Username or Email -" />


                <div class="back" style="float: right;margin-top: -1px; margin-right: -10px;">
                    <input type="submit" class="button loginbtn" style="margin-right: 95px;margin-top: 10px!important" value="Reset" />
                    <a href="<%= Url.Action("Index", "Home") %>">Cancel and go back</a>
                </div>
            </form>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
    Help text for Forgot password
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <script type="text/javascript">

        $(document).ready(function () {
            //alert("start");
            $('#logout').hide();  // show Loading Div
        });

        </script>
    </asp:Content>

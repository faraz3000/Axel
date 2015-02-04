<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Axel.Admin.Models.UserModel>" %>

<asp:Content ID="loginTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Login - Excellence Chauffeurs
</asp:Content>

<asp:Content ID="loginContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="intro_login_register">
        <h1>Login Now</h1>
        `
        <img src="/Images/login_dots.png" width="7" height="64" alt="dots" />
        <div class="box login">
            <form action="#" method="post" class="form">
                <input type="text" class="text_field" value="" name="USER_NAME" placeholder="- User Name -" />
                <input type="password" class="text_field" value="" name="PASSWORD" placeholder="- Password -" />
                <a href="<%= Url.Action("ForgotPassword", "Home") %>" class="forpassword">Forgot Password</a>
                <div class="back" style="float: right;">
                    <input type="submit" id="submit" class="button loginbtn" value="Login" style="bottom: 0px; right: 0px; position: static;" />
                    
                </div>
            </form>
        </div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
    Please login using your username and password. On the new Alexis Platform, you username will be the email address that you used when registering with The Nautical Institute. If you are revalidating and you do not know your login details, please contact the NI with the following details:
    <br />
    <br />
    -Name
    <br />
    -Date of birth
    <br />
    -Certificate
    <br />
    -Number
    <br />
    -Certificate issue date
    <br />
    -Personal email address

    <br />
    <br />
    The Nautical Institute will then be able to update your details so that you are able to log into the new system.

    <br />
    <br />
    Please note that the forgotten password option will only work if you have an email address registered on your account. 
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <script type="text/javascript">

        $(document).ready(function () {
            //alert("start");
            $('#logout').hide();  // show Loading Div
        });

    </script>
</asp:Content>

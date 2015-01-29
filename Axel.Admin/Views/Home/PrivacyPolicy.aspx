<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<List<string>>" %>


<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Privacy Policy - Dynamic Positioning
</asp:Content>

<asp:Content ID="indexFeatured" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="inner_wrapper">
        <div class="heading" style="margin-bottom: 30px;">
            <h1>PRIVACY POLICY</h1>
        </div>
        <p>The Nautical Institute takes your privacy extremely seriously. We are committed to treating any information we may collect from you in a sensitive and respectful manner. From time to time the Institute runs advertising programs that allow third parties such as Google and Twitter to use cookies and other data to serve adverts based on an individual's past visit to the NI Alexis Platform. You can find out more about Google's use of cookies (including how to opt-out) by visiting <a href="https://support.google.com/ads/?hl=en#topic=2971788" target="_blank">Google's Ads Help Page</a>. You may also wish to view the <a href="https://support.twitter.com/articles/20169693-twitter-ads-policies" target="_blank">Twitter Ads policies page.</a></p>

        <div class="back" style="float: right;margin-right: -10px;margin-top:10px;">
        <a href="<%= Request.UrlReferrer.AbsoluteUri %>">Back</a>
    </div>
    </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <script type="text/javascript">

        $(document).ready(function () {
            //alert("start");
            $('#logout').hide();  // show Loading Div
        });
    </script>
</asp:Content>

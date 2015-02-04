<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Setup
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
Please select a form.

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="LeftSideMenu" runat="server">
    <ul>
        <li><a href="<%=Url.Action("Index","Customer") %>">Customer</a></li>
        <li><a href="<%=Url.Action("Index","Driver") %>">Driver</a></li>
        <li><a href="<%=Url.Action("Index","Vehicle") %>">Vehicle</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>

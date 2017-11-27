<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PlaceSuggestionPage.aspx.cs" Inherits="PlaceSuggestionPage" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label13" runat="server" Font-Size="X-Large" Text="Place Suggestion Service"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Place Suggestion Service: Given a keyword (eg: 'Tempe Lake') this service suggests at most 5 places that the user might be looking for with suggested places' google maps URL"></asp:Label>
        <br />
        &nbsp;<br />
        <asp:Label ID="Label6" runat="server" Text="URL: https://webstrar7.fulton.asu.edu/page7/"></asp:Label>
        GetPlace?place=<br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Method description: string GetPlace(string keyword);"></asp:Label>
        </strong>
    </div>
    <br />
    <asp:Label ID="Label15" runat="server" Text="Enter Place Name:"></asp:Label>
    &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="20px"></asp:TextBox>
    &nbsp;
    <asp:Button ID="Button1" runat="server" Text="Suggest Places" OnClick="Button1_Click" BorderStyle="Solid" BorderWidth="2px" />
    <p>
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </p>
</asp:Content>


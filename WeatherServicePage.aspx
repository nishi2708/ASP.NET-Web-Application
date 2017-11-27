<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WeatherServicePage.aspx.cs" Inherits="WeatherServicePage" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <strong>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label13" runat="server" Font-Size="Large" Text="Weather Service"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Weather Service: Given a Zipcode of any place in United States, it displays daily minimum and maximum temperature for next 5 days"></asp:Label>
    <br />
    &nbsp;<br />
    <asp:Label ID="Label6" runat="server" Text="URL: http://webstrar7.fulton.asu.edu/page5/"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" Text="Method description: ArrayList Weather5day(String Zipcode);"></asp:Label>
    <br />
    <br />
    &nbsp;<asp:Label ID="Label8" runat="server" Text="Enter Zipcode: "></asp:Label>
    </strong>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    &nbsp;
    <asp:Button ID="Button1" runat="server"  Text="check weather" OnClick="Button1_Click" BorderStyle="Solid" BorderWidth="2px" />
    <p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label14" runat="server"></asp:Label>
    </p>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CrimeDataPage.aspx.cs" Inherits="CrimeDataPage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <p>
        &nbsp;<asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Large" Text="Crime Data Service"></asp:Label>
    </p>
    <p>
        <strong>
        <asp:Label ID="Label9" runat="server" Text="Crime Data Service: Given latitude and longitude (comma seperated e.g. 33.419362,-111.937525) of any place in United States, it displays crime report of that place."></asp:Label>
        </strong>
    </p>
    <p>
        <strong>
        <asp:Label ID="Label10" runat="server" Text="URL: http://webstrar7.fulton.asu.edu/page5/"></asp:Label>
        </strong>
    </p>
    <p>
        <strong>
        <asp:Label ID="Label11" runat="server" Text="Method description: int Crimedata(decimal lat, decimal lon);"></asp:Label>
        </strong>
    </p>
    &nbsp;<asp:Label ID="Label12" runat="server" Font-Bold="True" Text="Enter latitude,longitude: "></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    &nbsp;
    <asp:Button ID="Button2" runat="server" Text="Get Crime Data" OnClick="Button2_Click" BorderStyle="Solid" BorderWidth="2px" />
    <p>
        &nbsp;<asp:Label ID="Label15" runat="server" Text="Number of violent crimes:  "></asp:Label>
        <asp:Label ID="Label4" runat="server"></asp:Label>
    </p>

</asp:Content>


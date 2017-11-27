<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MovieTrend.aspx.cs" Inherits="MovieTrend" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <center><h3>MOVIE TRENDS</h3>
            <p>Method Description : List<string> GetData(string genre), string[] GetMoreDetails(string name); (List popular movies for the selected genre and list their details)</p>
            <p>Uri : 1)&nbsp; <a href="http://webstrar7.fulton.asu.edu/page10/Service1.svc/GetMoreDetails?name=">http://webstrar7.fulton.asu.edu/page10/Service1.svc/GetMoreDetails?name=</a> 2)http://webstrar7.fulton.asu.edu/page10/Service1.svc/GetData?genre=Action</p></center><br />
&nbsp;Please choose the genre of Movie&nbsp;&nbsp; :<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Family</asp:ListItem>
            <asp:ListItem>Action</asp:ListItem>
            <asp:ListItem>Adventure</asp:ListItem>
            <asp:ListItem>Comedy</asp:ListItem>
            <asp:ListItem>Science Fiction</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Find Most Popular Movies" />
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Enter any of the above exact movie name and click OK  for more details"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="148px"></asp:TextBox>
&nbsp;<asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="OK" />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Details will be displayed here" BorderStyle="Ridge"></asp:Label>
</asp:Content>


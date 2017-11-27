<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MemberRegistration.aspx.cs" Inherits="MemberRegistration" %>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Member Registration Form"></asp:Label>
        </div>
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Enter Your Details to Register!"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Text="First Name:  *"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Last Name:  *"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="City: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="State: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Zipcode: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Email Id:  *"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="Black" Text="Password: *"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Password1" type="password" runat="server"/><br />
        <br />
        <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Confirm Password: *"></asp:Label>
&nbsp;
        <asp:TextBox ID="Password2" type="password" runat="server"/><br />
        <br />
        <asp:Image ID="Image1" runat="server" Width="89px" ImageUrl ="C:\Users\Kshama\source\WebSites\FinalApplication\images\verifier.jpg" />
&nbsp;
&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Reload" BorderStyle="Solid" BorderWidth="2px" />
&nbsp;
        <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="Enter String in Image: "></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server" Width="100px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" Width="250px" BorderStyle="Solid" BorderWidth="2px" Height="32px" />
&nbsp;&nbsp;&nbsp;
</asp:Content>


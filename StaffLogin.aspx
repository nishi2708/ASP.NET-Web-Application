<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StaffLogin.aspx.cs" Inherits="StaffLogin" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <div>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Text="Staff Login Form"></asp:Label>
        <br />
        <br />
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Username:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
        <br />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Password:"></asp:Label>:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Password1" type="password" runat="server"/><br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 26px" Text="Login" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
</asp:Content>

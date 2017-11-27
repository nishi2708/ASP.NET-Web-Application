<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MemberLogin.aspx.cs" Inherits="MemberLogin" %>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Text="Member Login Form"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Email Id:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Password: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="Password1" type="password" runat="server"/><br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" Width="167px" />
    
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
</asp:Content>

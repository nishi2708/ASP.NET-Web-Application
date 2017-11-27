<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddStaff.aspx.cs" Inherits="AddStaff" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        ADD STAFF MEMBER</p>
    <div>
    
        Username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    
        <br />
        <br />
        Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" type="password" runat="server"/><br />
        <br />
        Confirm Password:&nbsp;
        <asp:TextBox ID="TextBox4" type="password" runat="server"/><br />
        <br />
    
    </div>
        <asp:Button ID="Button2" runat="server" BorderStyle="Solid" OnClick="Button1_Click" Text="ADD" Width="177px" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
</asp:Content>
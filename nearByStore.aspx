<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="nearByStore.aspx.cs" Inherits="nearByStore" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
   
    <div>
    
        </div>
        <p>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        FIND NEARBY STORE (Gives the address of nearby store)<br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        Search History :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
        <br />
        <br />
        <br />
        Please enter your Name&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        Zipcode&nbsp;(String type) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <p>
            &nbsp;Store Name(String type)
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" CssClass="auto-style1" OnClick="Button2_Click" Text="Find Address(String type)" Width="216px" />
        </p>
        &nbsp;&nbsp;&nbsp;&nbsp; Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server"></asp:Label>
    
</asp:Content>


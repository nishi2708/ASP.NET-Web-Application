<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TestKnowledge.aspx.cs" Inherits="TestKnowledge" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
     <p >
           <center><h3>QUIZ</h3></center> 1) Linear Equation solving service. For any linear equation, calculate the value of x. 2)User can take GK quiz the answer will be checked for correctness.</p>
        <p>
            method Description: 1) string SolveEquation(string equation)&nbsp;&nbsp;&nbsp; 2)&nbsp;&nbsp; string[] GetGKQuestion()</p>
        <p>
            URL :
            1) <a href="http://webstrar7.fulton.asu.edu/page10/Service1.svc/SolveEquation">http://webstrar7.fulton.asu.edu/page10/Service1.svc/SolveEquation</a>&nbsp;&nbsp; 2)&nbsp; http://webstrar7.fulton.asu.edu/page10/Service1.svc/GetGKQuestion</p>
        <p>
            Please click on one of the given options&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Mathematics" style="width: 113px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="General Knowledge" OnClick="Button2_Click" />
        </p>
        <asp:Label ID="Label4" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        Enter your answer:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Check Answer" style="height: 26px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LyricsServicePage.aspx.cs" Inherits="LyricsServicePage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Lyrics Service"></asp:Label>
    </p>
    <p>
        <strong>
        <asp:Label ID="Label9" runat="server" Text="Lyrics Service: Given title of a song, this service returns lyrics for song (eg: 'pull me closer')."></asp:Label>
        </strong>
    </p>
    <p>
        <strong>
        <asp:Label ID="Label10" runat="server" Text="URL:  https://webstrar7.fulton.asu.edu/page7/GetLyrics?title="></asp:Label>
        </strong>
    </p>
    <p>
        <strong>
        <asp:Label ID="Label11" runat="server" Text="Method description: string GetLyrics(string title);"></asp:Label>
        </strong>
    </p>
    <asp:Label ID="Label17" runat="server" Text="Enter Song Title: "></asp:Label>
    &nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    &nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server"  Text="Show Lyrics" OnClick="Button2_Click" BorderStyle="Solid" BorderWidth="2px" />
    <p>
        <asp:Label ID="Label3" runat="server"></asp:Label>
    </p>
</asp:Content>


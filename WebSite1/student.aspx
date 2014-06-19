<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="student"
    MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    
        <br />
        Welcome
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        Student&#39;s page<br />
        <br />
        Please select your option<br />
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>Update Bio</asp:ListItem>
            <asp:ListItem>Form Teams</asp:ListItem>
            <asp:ListItem>Choose Project</asp:ListItem>
            <asp:ListItem>Promote Completed Project</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
        <br />
    </div>
</asp:Content>

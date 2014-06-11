<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="student" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
    </form>
</body>
</html>

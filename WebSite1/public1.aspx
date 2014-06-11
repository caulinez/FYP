<%@ Page Language="C#" AutoEventWireup="true" CodeFile="public1.aspx.cs" Inherits="public1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 26px;
        }
        .style3
        {
            height: 26px;
            width: 228px;
        }
        .style4
        {
            width: 228px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Public Portal<br />
        Hi
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        You can submit a project idea now. Please fill in the form below to continue.<br />
        <br />
        <table class="style1">
            <tr>
                <td class="style3">
                    Project Name</td>
                <td class="style2">
                    <asp:TextBox ID="ProjName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Project Description</td>
                <td>
                    <asp:TextBox ID="ProjDesc" runat="server" Height="96px" Width="497px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Button ID="Submit" runat="server" onclick="Submit_Click" Text="Submit" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>

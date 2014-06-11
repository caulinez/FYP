<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateBio.aspx.cs" Inherits="UpdateBio" %>

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
            width: 107px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Update Bios<br />
        <br />
        Welcome
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="375px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Class</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Writeup</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="68px" Width="524px"></asp:TextBox>
                </td>
            </tr>
        </table>
    
    </div>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" />
    </form>
</body>
</html>

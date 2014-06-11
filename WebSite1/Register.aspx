<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="RegisterHead" ContentPlaceHolderID="Head" runat="server">
    <!--custom styles and hacks here-->
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 119px;
        }
    </style>
</asp:Content>

<asp:Content ID="RegisterScripts" ContentPlaceHolderID="Scripts" runat="server">
<script runat="server">

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
</script>
</asp:Content>

<asp:Content ID="RegisterContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    
        Registration<br />
        <table class="style1">
            <tr>
                <td class="style2">
                    User Id</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Password</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Email</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Role</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Public</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <p>
                    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
                </p>
</asp:Content>
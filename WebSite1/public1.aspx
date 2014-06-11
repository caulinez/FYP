<%@ Page Language="C#" AutoEventWireup="true" CodeFile="public1.aspx.cs" Inherits="public1" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="PublicHead" ContentPlaceHolderID="Head" runat="server">
    <!--custom styles and hacks here-->
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
</asp:Content>

<asp:Content ID="PublicContent" ContentPlaceHolderID="MainContent" runat="server">
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
</asp:Content>

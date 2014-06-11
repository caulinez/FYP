<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FileUpload.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="FileUploadHead" ContentPlaceHolderID="Head" runat="server">
    <!--custom styles and hacks here-->
</asp:Content>

<asp:Content ID="FileUploadContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:FileUpload ID="FileUpload1" runat="server" /><br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" 
         Text="Upload File" />&nbsp;<br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
</asp:Content>
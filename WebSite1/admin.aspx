<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" DataKeyNames="ProjectID">
            <Columns>
                <asp:TemplateField HeaderText="ProjectID" InsertVisible="False" 
                    SortExpression="ProjectID">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProjectID") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProjectID") %>'></asp:Label>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Username" HeaderText="Username" 
                    SortExpression="Username" />
                <asp:BoundField DataField="ProjectName" HeaderText="ProjectName" 
                    SortExpression="ProjectName" />
                <asp:BoundField DataField="ProjectDesc" HeaderText="ProjectDesc" 
                    SortExpression="ProjectDesc" />
                <asp:BoundField DataField="Status" HeaderText="Status" 
                    SortExpression="Status" />
                <asp:TemplateField AccessibleHeaderText="To Approve" HeaderText="To Approve">
                    <ItemTemplate>
                        <asp:CheckBox ID="Approve" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <asp:CheckBox ID="CheckBox1" runat="server" />
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Project] WHERE ([Status] = @Status)">
            <SelectParameters>
                <asp:Parameter DefaultValue="created" Name="Status" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Approve" />
    </p>
    </form>
</body>
</html>

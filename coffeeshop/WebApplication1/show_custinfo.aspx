<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="show_custinfo.aspx.cs" Inherits="WebApplication1.show_custinfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Login<br />
        username:<asp:TextBox ID="txtnme" runat="server"></asp:TextBox>
        <br />
        password:<asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;<asp:Button ID="btn" runat="server" onclick="btn_Click" Text="submit" />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [userinfo]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>

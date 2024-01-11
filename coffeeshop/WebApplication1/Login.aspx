<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" Trace="false" MasterPageFile="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-decoration: underline;
            text-align: center;
        }
        .style2
        {
            font-size: large;
        }
        .style3
        {
            font-size: large;
            font-weight: bold;
        }
        .style4
        {
            color: #800000;
        }
        .style5
        {
            text-align: justify;
        }
        .body
        {
            background-repeat:no-repeat;
        }
        .style6
        {
            text-align: center;
        }
    </style>
</head>
<body background="pics/coffeeeshop.jpg">
    <form id="form1" runat="server">
    <div class="style5">
    
        <div class="style6">
    
        <br />
            name of Customer :<asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
                ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" 
                ErrorMessage="enter name"></asp:RequiredFieldValidator>
            &nbsp;
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [custinfo]"></asp:SqlDataSource>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            Phone number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;<asp:TextBox 
                ID="txtnum" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
                ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnum" 
                ErrorMessage="enter valid phone number"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        Coffee&nbsp; needed&nbsp; :<asp:ListBox ID="lbstore" runat="server" 
            Height="86px" onselectedindexchanged="lbstore_SelectedIndexChanged" 
            Width="131px">
            <asp:ListItem>Cappuccino</asp:ListItem>
            <asp:ListItem>iced coffee</asp:ListItem>
            <asp:ListItem>cold brew</asp:ListItem>
            <asp:ListItem>turkish coffee</asp:ListItem>
        </asp:ListBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="img" runat="server" Height="84px" Width="85px" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="lbstore" ErrorMessage="select item"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="btnfind" runat="server" onclick="btnfind_Click" Text="cost" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtcost" runat="server" Height="35px" Width="468px"> </asp:TextBox>
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" 
                NavigateUrl="~/show_custinfo.aspx">Admin access</asp:HyperLink>
        <br />
        </div>
        <h1 class="style1">
            <em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            Coffee shop </em></h1>
        <h3 class="style4">
            <em>central perk coffee shop</em></h3>
        <span class="style3"><em>coffee equates happiness,comfort,good mood,clear 
        thinking and something warm that comes from heart..</em></span><b><em><br 
            class="style2" />
        </em></b><span class="style2"><b><em>It energies you and puts smile on your face 
        and when it happens you can share your good energy with everyone around you.<br />
        <br />
        </em></b><br />
        </span>
            <br />
            <span style="color: rgb(68, 68, 68); font-family: Roboto, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
        </h3>
        .</span><br />
    
    </div>
    </form>
</body>
</html>

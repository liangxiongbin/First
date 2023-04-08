
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="test1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="style.css">


</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="用户名"></asp:Label>
            
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="密码&nbsp;&nbsp; "></asp:Label>  
            <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="请输入用户名和密码"></asp:Label>
        </div>
        <asp:Button CssClass="btn" ID="btnLogin" runat="server" Text="登录"  OnClick="btnLogin_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button CssClass="btn" ID="btnReset" runat="server" Text="重写"  OnClick="btnReset_Click" />
    </form>
</body>
</html>

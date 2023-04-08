<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myhome.aspx.cs" Inherits="test1.myhome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>我的空间</title>
 <link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label2" runat="server" Text="当前用户名、密码:"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="当前系统时间:"></asp:Label>
        <br />
        <br />
        <asp:ListBox ID="ListBox1"  runat="server" Width="250px"></asp:ListBox>
&nbsp;<asp:Button CssClass="btn" ID="bynSearchMyclass" runat="server" Text="查询" OnClick="bynSearchMyclass_Click" />
        <div>
            <asp:Label ID="Label1" runat="server" Text="欢迎您来到您的空间！"></asp:Label>
        </div>
        <asp:Button CssClass="btn" ID="btnLogout" runat="server" Text="退出" OnClick="btnLogout_Click" />

        <br />
        <br />

</body>
<asp:gridview runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="USERID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="Unnamed1_SelectedIndexChanged">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="USERID" HeaderText="学号" ReadOnly="True" SortExpression="USERID" />
        <asp:BoundField DataField="USERNAME" HeaderText="名字" SortExpression="USERNAME" />
        <asp:BoundField DataField="PASSWORD" HeaderText="密码" SortExpression="PASSWORD" />
        <asp:BoundField DataField="SEX" HeaderText="性别" SortExpression="SEX" />
        <asp:BoundField DataField="BIRTHDAY" HeaderText="出生日期" SortExpression="BIRTHDAY" />
        <asp:BoundField DataField="REGTIME" HeaderText="注册时间" SortExpression="REGTIME" />
        <asp:BoundField DataField="SPECIALTY" HeaderText="专业" SortExpression="SPECIALTY" />
        <asp:BoundField DataField="REMARK" HeaderText="REMARK" SortExpression="REMARK" />
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:gridview>


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NetSchoolConnectionString %>" SelectCommand="SELECT * FROM [STUDENT]" DeleteCommand="DELETE FROM [STUDENT] WHERE [USERID] = @USERID" InsertCommand="INSERT INTO [STUDENT] ([USERID], [USERNAME], [PASSWORD], [SEX], [BIRTHDAY], [REGTIME], [SPECIALTY], [REMARK]) VALUES (@USERID, @USERNAME, @PASSWORD, @SEX, @BIRTHDAY, @REGTIME, @SPECIALTY, @REMARK)" UpdateCommand="UPDATE [STUDENT] SET [USERNAME] = @USERNAME, [PASSWORD] = @PASSWORD, [SEX] = @SEX, [BIRTHDAY] = @BIRTHDAY, [REGTIME] = @REGTIME, [SPECIALTY] = @SPECIALTY, [REMARK] = @REMARK WHERE [USERID] = @USERID">
        <DeleteParameters>
            <asp:Parameter Name="USERID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="USERID" Type="String" />
            <asp:Parameter Name="USERNAME" Type="String" />
            <asp:Parameter Name="PASSWORD" Type="String" />
            <asp:Parameter Name="SEX" Type="String" />
            <asp:Parameter Name="BIRTHDAY" Type="DateTime" />
            <asp:Parameter Name="REGTIME" Type="DateTime" />
            <asp:Parameter Name="SPECIALTY" Type="String" />
            <asp:Parameter Name="REMARK" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="USERNAME" Type="String" />
            <asp:Parameter Name="PASSWORD" Type="String" />
            <asp:Parameter Name="SEX" Type="String" />
            <asp:Parameter Name="BIRTHDAY" Type="DateTime" />
            <asp:Parameter Name="REGTIME" Type="DateTime" />
            <asp:Parameter Name="SPECIALTY" Type="String" />
            <asp:Parameter Name="REMARK" Type="String" />
            <asp:Parameter Name="USERID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

    </form>




</html>

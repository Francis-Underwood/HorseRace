<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="BackGround_Login" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>管理员登录</title>
    <link href="../race.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" border="0" height="60%" width="100%">
            <tr>
                <th>
                    <table align="center" border="1" bordercolor="#000099" cellpadding="4">
                        <tr>
                            <th colspan="2">
                                管理员登录
                            </th>
                        </tr>
                        <tr>
                            <td width="30%">
                                用户名：
                            </td>
                            <td width="70%">
                                <asp:TextBox ID="txtAdminName" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                密　码：
                            </td>
                            <td>
                                <asp:TextBox ID="txtAdminPass" runat="server" TextMode="Password" />
                            </td>
                        </tr>
                        <tr>
                            <th colspan="2" style="height: 24px">
                                <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" />
                            </th>
                        </tr>
                    </table>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAdminName"
                        Display="None" ErrorMessage="用户名不能为空"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAdminPass"
                        Display="None" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtAdminPass"
                        Display="None" ErrorMessage="密码中含有非法字符" ValidationExpression="[^\'\&quot;=<>]{1,}"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtAdminName"
                        Display="None" ErrorMessage="用户名中含有非法字符" ValidationExpression="[^\'\&quot;=<>]{1,}"></asp:RegularExpressionValidator>
                    <asp:Label ID="labelMessage" runat="server" Text="登录失败，请重新登录" Visible="false" />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                        ShowSummary="False" />
                </th>
            </tr>
        </table>
    </form>
</body>
</html>
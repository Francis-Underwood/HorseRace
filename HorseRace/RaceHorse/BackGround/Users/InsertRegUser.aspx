<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsertRegUser.aspx.cs" Inherits="BackGround_Users_InsertRegUser" %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <link href="../../race.css" rel="stylesheet" type="text/css" />
    <script src="../../race.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" border="1" cellpadding="4" width="75%">
            <tr>
                <th colspan="2">添加新用户</th>
            </tr>
            <tr>
                <td width="40%">
                    户口账号
                </td>
                <td width="60%">
                    <asp:TextBox Columns="40" ID="txtAccount" runat="server" />
                </td>
            </tr>
              <tr>
                <td width="40%">
                    户口密码
                </td>
                <td width="60%">
                    <asp:TextBox Columns="40" ID="txtPwd" runat="server" />
                </td>
            </tr>
            <tr><td colspan="2"  align="center">
                <asp:Button ID="BtnSubmit" runat="server" Text="提交" OnClick="BtnSubmit_Click" /></td></tr>
        </table>
    </form>
</body>
</html>

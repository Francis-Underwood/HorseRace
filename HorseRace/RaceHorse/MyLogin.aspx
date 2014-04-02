<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyLogin.aspx.cs" Inherits="MyLogin" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>用户登录</title>
    <style>
body        { margin:3px }
table       { font:13px tahoma }
.TT         { text-align:center; color:#ff6600; font:bold 50pt trebuchet ms;
              height:120px; width:100% }
.TT span    { font:27px century gothic; color:#bb3300 }
.Login      { background:#e8ffe8; border:1px solid black;}
.Login td   { font:14pt verdana }
.Login th   { background:#c8dfc8 }
.input       { font:14pt verdana; border:1px solid gray }
.CBx   { border:0px }
.Btn        { background:#c0c0c0; border:3px solid; border-color:#f0f0f0 #909090 #909090 #f0f0f0;font:14pt verdana;}
</style>

    <script src="race.js"></script>
</head>
<body style="background: url(images/loginbg.jpg) no-repeat 0% 100%">
    <center>
        <br />
        <br />
        <br />
        <form id="form1" runat="server">
            <marquee behavior="slide" direction="up" class="TT">深圳赛马<br><span>Horse Racing International</span></marquee>
            <table class="Login" cellspacing="1" cellpadding="15">
                <tr>
                    <td>
                        <table cellspacing="0" cellpadding="5">
                            <col width="110">
                            <col width="185">
                            <tr>
                                <td class="FD">
                                    Login ID<td>
                                        <asp:TextBox Columns="15" CssClass="input" ID="txtUserName" MaxLength="20" runat="server" />
                                        <tr>
                                            <td class="FD">
                                                Password<td>
                                                    <asp:TextBox Columns="15" CssClass="input" ID="txtPassword" MaxLength="30" runat="server"
                                                        TextMode="password" />
                                                    <tr>
                                                        <td class="FD" valign="top">
                                                            Language<td>
                                                                <asp:RadioButtonList CssClass="CBx" Font-Size="14pt" ID="radioLanguage" runat="server">
                                                                    <asp:ListItem Selected="true" Value="en-US">English</asp:ListItem>
                                                                    <asp:ListItem Value="zh-Cn">中文</asp:ListItem>
                                                                </asp:RadioButtonList>
                        </table>
                        <tr>
                            <th>
                                <input class="Btn" type="reset" value=" Clear ">
                                <asp:Button class="Btn" ID="btnLogin" OnClick="btnLogin_Click" runat="server" Text="Login" />
            </table>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName"
        Display="None" ErrorMessage="用户名不能为空"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
        Display="None" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUserName"
        Display="None" ErrorMessage="用户名含有非法字符" ValidationExpression="\w{0,20}"></asp:RegularExpressionValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPassword"
        Display="None" ErrorMessage="密码中含有非法字符" ValidationExpression="\w{0,30}"></asp:RegularExpressionValidator>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
        ShowSummary="False" />
    </form>
    </center>
</body>
</html>

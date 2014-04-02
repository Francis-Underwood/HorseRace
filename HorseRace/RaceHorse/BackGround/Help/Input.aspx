<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Input.aspx.cs" Inherits="BackGround_Help_Input"
    ValidateRequest="false" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>深圳赛马网站帮助管理</title>
    <link href="../../race.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <table border="1" cellpadding="5" width="100%">
            <tr>
                <th colspan="2">
                    <asp:Literal ID="literalGeneral" runat="server" Text="管理帮助" />
                    <asp:TextBox ID="txtURL" runat="server" Style="display: none" />
                </th>
            </tr>
            <tr>
                <td width="20%">
                    <asp:Literal ID="literalTitle" runat="server" Text="帮助标题" />
                </td>
                <td width="80%">
                    <asp:TextBox ID="txtTitle" runat="server" Width="610" MaxLength="150" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Literal ID="literalIsIndex" runat="server" Text="是否在首页显示" />
                </td>
                <td>
                    <asp:CheckBox ID="checkboxIsIndex" runat="server" Text="是/否显示" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Literal ID="literalContent" runat="server" Text="帮助内容" />
                </td>
                <td>
                    <FTB:FreeTextBox HelperFilesPath="/RaceHelp/" ID="FreeTextBox1" runat="server" ButtonSet="OfficeMac"
                        EnableHtmlMode="False" />
                </td>
            </tr>
            <tr>
                <th colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="提交" />
                </th>
            </tr>
        </table>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="帮助标题不能为空"
            ControlToValidate="txtTitle" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FreeTextBox1"
            Display="None" ErrorMessage="帮助内容不能为空"></asp:RequiredFieldValidator>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
            ShowSummary="False" />
    </form>
</body>
</html>

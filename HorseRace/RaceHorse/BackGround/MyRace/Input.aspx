<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Input.aspx.cs" Inherits="BackGround_MyRace_Input"
    ValidateRequest="false" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>比赛</title>
    <link href="../../race.css" rel="stylesheet" type="text/css" />

    <script src="../calendar.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
        <table border="1" cellpadding="5" width="100%">
            <tr>
                <th colspan="2">
                    <asp:Literal ID="literalGeneral" runat="server" Text="管理比赛" />
                    <asp:TextBox ID="txtURL" runat="server" Style="display: none" />
                </th>
            </tr>
            <tr>
                <td>
                    <asp:Literal ID="literalPlace" runat="server" Text="比赛地点" />
                </td>
                <td>
                    <asp:TextBox ID="txtPlace" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Literal ID="literalRaceTime" runat="server" Text="比赛时间" />
                </td>
                <td>
                    <asp:TextBox ID="txtRaceTime" onclick="show_cele_date('', '', this)"
                        runat="server" />
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
                    <asp:Literal ID="literalRate" runat="server" Text="赔率" />
                </td>
                <td>
                    <asp:TextBox ID="txtRate" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Literal ID="literalContent" runat="server" Text="详细信息" />
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
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="比赛日期不能为空"
            ControlToValidate="txtRaceTime" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FreeTextBox1"
            Display="None" ErrorMessage="比赛详细信息不能为空"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="比赛日期格式错误"
            ControlToValidate="txtRaceTime" Display="None" ValidationExpression="\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}"></asp:RegularExpressionValidator>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
            ShowSummary="False" />
    </form>
</body>
</html>

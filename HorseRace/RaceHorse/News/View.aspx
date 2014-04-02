<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="News_View" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>阅读新闻</title>
    <link href="../race.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" border="1" cellpadding="4" width="778">
            <tr>
                <td align="center">
                        <asp:Label ID="labelTitle" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="labelAddTime" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="labelContent" runat="server"></asp:Label></td>
            </tr>
        </table>
    </form>
</body>
</html>

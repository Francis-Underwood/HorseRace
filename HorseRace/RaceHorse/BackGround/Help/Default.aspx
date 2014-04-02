<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="BackGround_Help_Default" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>深圳赛马网站帮助管理</title>

    <script src="../js.js" type="text/javascript"></script>

    <link href="../../race.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" border="0" width="100%">
            <tr>
                <td align="right">
                    <asp:LinkButton ID="lnkAdd" runat="server" Text="添加帮助" OnClick="lnkAdd_Click" /></td>
            </tr>
        </table>
        <asp:GridView AllowPaging="true" AutoGenerateColumns="false" DataKeyNames="HelpID"
            HorizontalAlign="center" ID="GridView1" PageSize="20" PagerStyle-HorizontalAlign="right"
            runat="server" Width="100%" OnPageIndexChanging="GridView1_PageIndexChanging">
            <Columns>
                <asp:TemplateField HeaderText="序号" ItemStyle-HorizontalAlign="center">
                    <ItemTemplate>
                        <b>
                            <%# Container.DataItemIndex + 1%>
                        </b>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:HyperLinkField DataNavigateUrlFields="HelpID" DataTextField="Title" DataNavigateUrlFormatString="../../Help/View.aspx?helpid={0}"
                    HeaderText="标题" ItemStyle-Width="62%" Target="_blank" />
                <asp:CheckBoxField DataField="IsIndex" HeaderText="首页显示" ItemStyle-HorizontalAlign="center"
                    ItemStyle-Width="8%" />
                <asp:BoundField DataField="AddTime" HeaderText="添加时间" ItemStyle-HorizontalAlign="center"
                    ItemStyle-Width="15%" />
                <asp:TemplateField HeaderText="删除" ItemStyle-Width="5%">
                    <ItemTemplate>
                        <div align="center">
                            <a href="input.aspx?action=delete&helpid=<%# Eval("HelpID") %>" onclick="return DeleteHelp()">
                                删除</a>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="编辑" ItemStyle-Width="5%">
                    <ItemTemplate>
                        <div align="center">
                            <a href="input.aspx?action=edit&helpid=<%# Eval("HelpID") %>">编辑</a></div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerStyle HorizontalAlign="Right" />
        </asp:GridView>
    </form>
</body>
</html>

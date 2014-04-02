<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="BackGround_News_Default"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>深圳赛马网站新闻管理</title>

    <script src="../js.js" type="text/javascript"></script>

    <link href="../../race.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" border="0" width="100%">
            <tr>
                <td align="right">
                    <asp:LinkButton ID="lnkAdd" runat="server" Text="添加新闻" OnClick="lnkAdd_Click" /></td>
            </tr>
        </table>
        <asp:GridView AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="NewsID"
            HorizontalAlign="Center" ID="GridView1" PageSize="20" PagerStyle-HorizontalAlign="right"
            runat="server" Width="100%" OnPageIndexChanging="GridView1_PageIndexChanging">
            <Columns>
                <asp:TemplateField HeaderText="序号">
                    <ItemTemplate>
                        <b>
                            <%# Container.DataItemIndex + 1 %>
                        </b>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:HyperLinkField DataNavigateUrlFields="NewsID" DataTextField="Title" DataNavigateUrlFormatString="../../News/View.aspx?newsid={0}"
                    HeaderText="标题" Target="_blank">
                    <ItemStyle Width="62%" />
                </asp:HyperLinkField>
                <asp:CheckBoxField DataField="IsIndex" HeaderText="首页显示">
                    <ItemStyle HorizontalAlign="Center" Width="8%" />
                </asp:CheckBoxField>
                <asp:BoundField DataField="AddTime" HeaderText="添加时间">
                    <ItemStyle HorizontalAlign="Center" Width="15%" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="删除">
                    <ItemTemplate>
                        <div align="center">
                            <a href="input.aspx?action=delete&newsid=<%# Eval("NewsID") %>" onclick="return DeleteNews()">
                                删除</a>
                        </div>
                    </ItemTemplate>
                    <ItemStyle Width="5%" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="编辑">
                    <ItemTemplate>
                        <div align="center">
                            <a href="input.aspx?action=edit&newsid=<%# Eval("NewsID") %>">编辑</a></div>
                    </ItemTemplate>
                    <ItemStyle Width="5%" />
                </asp:TemplateField>
            </Columns>
            <PagerStyle HorizontalAlign="Right" />
        </asp:GridView>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="BackGround_MyRace_Default" %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>比赛列表</title>
    <script src="../js.js" type="text/javascript"></script>

    <link href="../../race.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" border="0" width="100%">
            <tr>
                <td align="right">
                    <asp:LinkButton ID="lnkAdd" runat="server" Text="添加比赛" OnClick="lnkAdd_Click" /></td>
            </tr>
        </table>
        <asp:GridView AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="RaceID"
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
                <asp:HyperLinkField DataNavigateUrlFields="RaceID" DataTextField="RaceTime" DataNavigateUrlFormatString="../../MyRace/View.aspx?raceid={0}"
                    HeaderText="比赛时间" Target="_blank">
                    <ItemStyle Width="20%" />
                </asp:HyperLinkField>
                <asp:BoundField DataField="Place" HeaderText="比赛地点" ItemStyle-Width="20%" />
                <asp:BoundField DataField="Rate" HeaderText="赔率" ItemStyle-Width="20%" />
                <asp:CheckBoxField DataField="IsIndex" HeaderText="首页显示">
                    <ItemStyle HorizontalAlign="Center" Width="13%" />
                </asp:CheckBoxField>
                <asp:TemplateField HeaderText="删除" ItemStyle-Width="10%">
                    <ItemTemplate>
                        <div align="center">
                            <a href="input.aspx?action=delete&raceid=<%# Eval("RaceID") %>" onclick="return DeleteRace()">
                                删除</a>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="编辑" ItemStyle-Width="10%">
                    <ItemTemplate>
                        <div align="center">
                            <a href="input.aspx?action=edit&raceid=<%# Eval("RaceID") %>">编辑</a></div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerStyle HorizontalAlign="Right" />
        </asp:GridView>
    </form>
</body>
</html>

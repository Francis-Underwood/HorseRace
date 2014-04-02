<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="BackGround_Note_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>深圳赛马网站公告管理</title>

    <script src="../js.js" type="text/javascript"></script>

    <link href="../../race.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" border="0" width="100%">
            <tr>
                <td align="right">
                    <asp:LinkButton ID="lnkAdd" runat="server" Text="添加公告" OnClick="lnkAdd_Click" /></td>
            </tr>
        </table>
        <asp:GridView AllowPaging="true" AutoGenerateColumns="false" DataKeyNames="NoteID"
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
                <asp:HyperLinkField DataNavigateUrlFields="NoteID" DataTextField="Title" DataNavigateUrlFormatString="../../Note/View.aspx?noteid={0}"
                    HeaderText="标题" ItemStyle-Width="62%" Target="_blank" />
                <asp:CheckBoxField DataField="IsIndex" HeaderText="首页显示" ItemStyle-HorizontalAlign="center"
                    ItemStyle-Width="8%" />
                <asp:BoundField DataField="AddTime" HeaderText="添加时间" ItemStyle-HorizontalAlign="center"
                    ItemStyle-Width="15%" />
                <asp:TemplateField HeaderText="删除" ItemStyle-Width="5%">
                    <ItemTemplate>
                        <div align="center">
                            <a href="input.aspx?action=delete&noteid=<%# Eval("NoteID") %>" onclick="return DeleteNote()">
                                删除</a>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="编辑" ItemStyle-Width="5%">
                    <ItemTemplate>
                        <div align="center">
                            <a href="input.aspx?action=edit&noteid=<%# Eval("NoteID") %>">编辑</a></div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerStyle HorizontalAlign="Right" />
        </asp:GridView>
    </form>
</body>
</html>

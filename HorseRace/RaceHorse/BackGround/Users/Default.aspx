<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="BackGround_Users_Default" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户列表</title>
    <link href="../../race.css" rel="stylesheet" type="text/css" />

    <script src="../js.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <table align="center" border="0" width="100%">
            <tr>
                <td align="right">
                    <asp:HyperLink ID="HyperLink1" NavigateUrl="InsertRegUser.aspx" runat="server" Text="新建注册用户" /></td>
            </tr>
        </table>
        <asp:GridView AllowPaging="true" AutoGenerateColumns="false" DataKeyNames="UserID"
            HorizontalAlign="center" ID="GridView1" PageSize="20" PagerStyle-HorizontalAlign="right"
            runat="server" Width="100%" OnPageIndexChanging="GridView1_PageIndexChanging"
            OnRowDeleting="GridView1_RowDeleting" OnRowDataBound="GridView1_RowDataBound">
            <Columns>
                <asp:TemplateField HeaderText="序号" ItemStyle-HorizontalAlign="center">
                    <ItemTemplate>
                        <b>
                            <%# Container.DataItemIndex + 1%>
                        </b>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="UserNumber" HeaderText="户口账号" ItemStyle-Width="16%" />
                <asp:BoundField DataField="UserName" HeaderText="用户名" ItemStyle-Width="16%" />
                <asp:BoundField DataField="UserPass" HeaderText="密码" ItemStyle-Width="16%" />
                <asp:BoundField DataField="Account" HeaderText="信用额度" ItemStyle-Width="16%" />
                <asp:BoundField DataField="RegTime" HeaderText="注册时间" ItemStyle-HorizontalAlign="center"
                    ItemStyle-Width="15%" ReadOnly="true" />
                <asp:CommandField DeleteText="删除" HeaderText="删除" ItemStyle-HorizontalAlign="center"
                    ItemStyle-Width="9%" ShowDeleteButton="true" />
            </Columns>
            <PagerStyle HorizontalAlign="Right" />
        </asp:GridView>
    </form>
</body>
</html>

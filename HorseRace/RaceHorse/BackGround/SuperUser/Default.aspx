<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="BackGround_SuperUser_Default" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>管理员管理</title>
    <link href="../../race.css" rel="stylesheet" type="text/css" />

    <script src="../js.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <table align="center" border="0" width="100%">
            <tr>
                <td align="right">
                    <asp:LinkButton ID="lnkNewSuperUser" runat="server" Text="新建管理员" OnClick="lnkNewSuperUser_Click" /></td>
            </tr>
        </table>
        <asp:GridView AllowPaging="true" AutoGenerateColumns="false" DataKeyNames="SuperUserID"
            HorizontalAlign="center" ID="GridView1" PageSize="20" PagerStyle-HorizontalAlign="right"
            runat="server" Width="100%" OnPageIndexChanging="GridView1_PageIndexChanging"
            OnRowDeleting="GridView1_RowDeleting" OnRowCancelingEdit="GridView1_RowCancelingEdit"
            OnRowDataBound="GridView1_RowDataBound" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
            <Columns>
                <asp:TemplateField HeaderText="序号" ItemStyle-HorizontalAlign="center">
                    <ItemTemplate>
                        <b>
                            <%# Container.DataItemIndex + 1%>
                        </b>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="AdminName" HeaderText="管理员用户名" ItemStyle-Width="20%" />
                <asp:BoundField DataField="AdminPass" HeaderText="管理员密码" ItemStyle-Width="20%" />
                <asp:BoundField DataField="LoginNumber" HeaderText="登录次数" ItemStyle-HorizontalAlign="right"
                    ItemStyle-Width="10%" ReadOnly="true" />
                <asp:CheckBoxField DataField="IsLock" HeaderText="锁定" ItemStyle-HorizontalAlign="center"
                    ItemStyle-Width="10%" />
                <asp:BoundField DataField="RegTime" HeaderText="注册时间" ItemStyle-HorizontalAlign="center"
                    ItemStyle-Width="15%" ReadOnly="true" />
                <asp:CommandField DeleteText="删除" HeaderText="删除" ItemStyle-HorizontalAlign="center"
                    ItemStyle-Width="9%" ShowDeleteButton="true" />
                <asp:CommandField EditText="编辑" HeaderText="编辑" ItemStyle-HorizontalAlign="center"
                    ItemStyle-Width="9%" ShowEditButton="true" />
            </Columns>
            <PagerStyle HorizontalAlign="Right" />
        </asp:GridView>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="BackGround_RaceInfo_Default" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>比赛详细信息列表</title>

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
        <asp:GridView AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="RaceInfoID"
            HorizontalAlign="Center" ID="GridView1" PageSize="20" PagerStyle-HorizontalAlign="right"
            runat="server" Width="100%" OnPageIndexChanging="GridView1_PageIndexChanging"
            OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDataBound="GridView1_RowDataBound"
            OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GV_Select">
            <Columns>
                <asp:TemplateField HeaderText="序号">
                    <ItemTemplate>
                        <b>
                            <%# Container.DataItemIndex + 1 %>
                        </b>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:BoundField DataField="SN" HeaderText="场次" >
                    <ControlStyle Width="90%" />
                    <ItemStyle Width="8%" />
                </asp:BoundField>
                <asp:BoundField DataField="HorseNo" HeaderText="马编号">
                    <ControlStyle Width="60px" />
                    <ItemStyle Width="8%" />
                </asp:BoundField>
                <asp:BoundField DataField="UP" HeaderText="赔率上限">
                    <ControlStyle Width="60px" />
                    <ItemStyle Width="12%" />
                </asp:BoundField>
                <asp:BoundField DataField="Down" HeaderText="赔率下限">
                    <ControlStyle Width="60px" />
                    <ItemStyle Width="12%" />
                </asp:BoundField>
                <asp:BoundField DataField="Cess" HeaderText="网站税率">
                    <ControlStyle Width="60px" />
                    <ItemStyle Width="12%" />
                </asp:BoundField>
                <asp:BoundField DataField="Result" HeaderText="比赛结果">
                    <ControlStyle Width="60px" />
                    <ItemStyle Width="12%" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="所属比赛">
                    <ItemTemplate>
                        <%# Eval("RaceTime") %>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:DropDownList DataSourceID="ObjectDataSource1" DataTextField="RaceTime" DataValueField="RaceID"
                            ID="dropdownlistRaceTime" runat="server" SelectedValue='<%# Eval("RaceID")%>' Width="100%" />
                    </EditItemTemplate>
                    <ItemStyle Width="14%" />
                </asp:TemplateField>
                <asp:CommandField HeaderText="删除" ShowDeleteButton="True">
                    <ItemStyle HorizontalAlign="Center" Width="8%" />
                </asp:CommandField>
                <asp:CommandField HeaderText="编辑" ShowEditButton="True">
                    <ItemStyle HorizontalAlign="Center" Width="8%" />
                </asp:CommandField>
                <asp:CommandField SelectText="show" />
            </Columns>
            <PagerStyle HorizontalAlign="Right" />
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="ShowRaceList"
            TypeName="Race.LogicLayer.Race" />
    </form>
</body>
</html>

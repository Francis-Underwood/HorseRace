<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Note_Default" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>网站公告</title>
    <link href="../race.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView AllowPaging="true" AutoGenerateColumns="false" HorizontalAlign="center"
            ID="GridView1" PageSize="20" PagerStyle-HorizontalAlign="right" runat="server"
            Width="100%" OnPageIndexChanging="GridView1_PageIndexChanging">
            <Columns>
                <asp:TemplateField HeaderText="序号" ItemStyle-HorizontalAlign="center" ItemStyle-Width="5%">
                    <ItemTemplate>
                        <b><%# Container.DataItemIndex + 1%></b>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:HyperLinkField DataNavigateUrlFields="NoteID" DataTextField="Title" DataNavigateUrlFormatString="View.aspx?noteid={0}"
                    HeaderText="标题" ItemStyle-Width="80%" Target="_blank" />
                <asp:BoundField DataField="AddTime" HeaderText="添加时间" ItemStyle-HorizontalAlign="center"
                    ItemStyle-Width="15%" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>

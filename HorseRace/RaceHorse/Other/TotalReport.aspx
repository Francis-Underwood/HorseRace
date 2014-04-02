<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TotalReport.aspx.cs" Inherits="Other_TotalReport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="../Images/bg_bknd.jpg">
    <form id="form1" runat="server">
    <div>
    <table>
    <tr><td>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </td></tr>
    <tr><td>
        <asp:GridView ID="GridViewOnLine" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridViewOnLine_RowDateBound">
            <Columns>
                <asp:BoundField HeaderText="用户名" DataField="UserName" />
                <asp:TemplateField HeaderText="下注交易">
                  <ItemTemplate>
                  <asp:GridView ID="GridViewBetOnLine" runat="server" AutoGenerateColumns="false">
                  <Columns>
                  <asp:BoundField HeaderText="票" DataField="Totalbeteat"/>
                  <asp:BoundField HeaderText="税" />
                  <asp:BoundField HeaderText="总价" DataField="Totalprice"/>
                  <asp:BoundField HeaderText="赔率" />
                  </Columns>
                    </asp:GridView>
                  </ItemTemplate>
                    
                </asp:TemplateField>
                <asp:TemplateField HeaderText="吃票交易">
                <ItemTemplate><asp:GridView ID="GridViewEatOnLine" runat="server" AutoGenerateColumns="false" >
                <Columns>
                  <asp:BoundField HeaderText="票" DataField="Totalbeteat"/>
                  <asp:BoundField HeaderText="税" />
                  <asp:BoundField HeaderText="总价" DataField="Totalprice"/>
                  <asp:BoundField HeaderText="赔率" />
                  </Columns>
                    </asp:GridView>
                  </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="余额" DataField="Remain"/>
            </Columns>
        </asp:GridView>
    </td></tr>
    
    <tr><td>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </td></tr>
    <tr><td>
        <asp:GridView ID="GridViewOutLine" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridViewOutLine_RowDateBound">
            <Columns>
                <asp:BoundField HeaderText="用户名" DataField="UserName"/>
                <asp:TemplateField HeaderText="下注交易">
                  <ItemTemplate>
                  <asp:GridView ID="GridViewBetOutLine" runat="server" AutoGenerateColumns="false">
                  <Columns>
                  <asp:BoundField HeaderText="票" DataField="Totalbeteat"/>
                  <asp:BoundField HeaderText="税" />
                  <asp:BoundField HeaderText="总价" DataField="Totalprice"/>
                  <asp:BoundField HeaderText="赔率" />
                  </Columns>
                    </asp:GridView>
                  </ItemTemplate>
                    
                </asp:TemplateField>
                <asp:TemplateField HeaderText="吃票交易">
                <ItemTemplate><asp:GridView ID="GridViewEatOutLine" runat="server" AutoGenerateColumns="false">
                <Columns>
                  <asp:BoundField HeaderText="票" DataField="Totalbeteat"/>
                  <asp:BoundField HeaderText="税" />
                  <asp:BoundField HeaderText="总价" DataField="Totalprice"/>
                  <asp:BoundField HeaderText="赔率" />
                  </Columns>
                    </asp:GridView>
                  </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="余额" DataField="Remain"/>
            </Columns>
        </asp:GridView>
    </td></tr>
    
    </table>
    </div>
    
    
    </form>
</body>
</html>

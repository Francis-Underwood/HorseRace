<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MyAnte.ascx.cs" Inherits="ASCX_MyAnte" %>
<%--<%@ Register TagPrefix="mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile" %>
--%>

<table width="102">
<tr>
     <td style="background-color: #669933; font-weight: bold; height: 20px;" >
         我的交易</td>
</tr>

<tr>
<td>
<asp:GridView ID="GridViewMyAnteList" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84"
    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3"
    PageSize="40" CellSpacing="2" Width="100px">
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <Columns>
        <asp:BoundField DataField="SN" HeaderText="场">
            <ItemStyle HorizontalAlign="Center" Width="8%" />
        </asp:BoundField>
        <asp:BoundField DataField="HorseNo" HeaderText="马">
            <ItemStyle HorizontalAlign="Center" Width="12%" />
        </asp:BoundField>
        <asp:BoundField DataField="HeadAmount" HeaderText="独赢">
            <ItemStyle HorizontalAlign="Center" Width="18%" />
        </asp:BoundField>
        <asp:BoundField DataField="FootAmount" HeaderText="位置">
            <ItemStyle HorizontalAlign="Center" Width="18%" />
        </asp:BoundField>
        <asp:BoundField DataField="Price" HeaderText="$">
            <ItemStyle HorizontalAlign="Center" Width="20%" />
        </asp:BoundField>
        <asp:BoundField DataField="Up" HeaderText="上限">
            <ItemStyle HorizontalAlign="Center" Width="12%" />
        </asp:BoundField>
        <asp:BoundField DataField="Down" HeaderText="下限">
            <ItemStyle HorizontalAlign="Center" Width="12%" />
        </asp:BoundField>
    </Columns>
</asp:GridView>
</td>
</tr>
</table>
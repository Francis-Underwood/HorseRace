﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MyGamble.ascx.cs" Inherits="ASCX_MyGamble" %>
<%--<%@ Register TagPrefix="mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile" %>
--%><table width="102">


<tr>
<td>
<asp:GridView ID="GridViewMyAnteList" runat="server" AutoGenerateColumns="False" BackColor="#7E56E4"
    BorderColor="#DC6F24" BorderStyle="None" BorderWidth="1px" CellPadding="3"
    PageSize="40" CellSpacing="2" Width="100px">
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#7D5E10" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <HeaderStyle BackColor="#AFE129" Font-Bold="True" ForeColor="Black" />
    <Columns>
        <asp:BoundField DataField="SN" HeaderText="<%$ Resources:HeaderTextResource1.Text %>">
            <ItemStyle HorizontalAlign="Center" Width="8%" />
        </asp:BoundField>
        <asp:BoundField DataField="HorseNo" HeaderText="<%$ Resources:HeaderTextResource2.Text %>">
            <ItemStyle HorizontalAlign="Center" Width="12%" />
        </asp:BoundField>
        <asp:BoundField DataField="HeadAmount" HeaderText="<%$ Resources:HeaderTextResource3.Text %>">
            <ItemStyle HorizontalAlign="Center" Width="18%" />
        </asp:BoundField>
        <asp:BoundField DataField="FootAmount" HeaderText="<%$ Resources:HeaderTextResource4.Text %>">
            <ItemStyle HorizontalAlign="Center" Width="18%" />
        </asp:BoundField>
        <asp:BoundField DataField="Price" HeaderText="$">
            <ItemStyle HorizontalAlign="Center" Width="20%" />
        </asp:BoundField>
        <asp:BoundField DataField="Up" HeaderText="<%$ Resources:HeaderTextResource5.Text %>">
            <ItemStyle HorizontalAlign="Center" Width="12%" />
        </asp:BoundField>
        <asp:BoundField DataField="Down" HeaderText="<%$ Resources:HeaderTextResource6.Text %>">
            <ItemStyle HorizontalAlign="Center" Width="12%" />
        </asp:BoundField>
    </Columns>
</asp:GridView>
</td>
</tr>
</table>
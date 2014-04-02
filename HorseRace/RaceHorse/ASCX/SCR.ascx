<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SCR.ascx.cs" Inherits="ASCX_SCR" %>
<%--<%@ Register TagPrefix="mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile" %>
--%>
<Table><Tr><Td>
<asp:repeater ID="RepeaterSCR" runat="server">
<ItemTemplate>
<table>
<tr><td>SCR</td><td><%# Eval("SN") %></td><td><%# Eval("HorseNo") %></td></tr>

</table>
</ItemTemplate>
<HeaderTemplate><font color="navy" size="5"><b>Scratched Horse</b></font><hr size="3" color="navy" />
        </HeaderTemplate>
</asp:repeater>
</Td></Tr></Table>


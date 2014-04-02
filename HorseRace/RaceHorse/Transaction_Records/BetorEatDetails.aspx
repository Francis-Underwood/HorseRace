<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BetorEatDetails.aspx.cs" Inherits="Transaction_Records_BetorEatDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="../Images/bg_bknd.jpg">
    <form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Transaction Detials" style="font-weight: bold; font-size: 15pt; font-family: 'Arial Black'; left: 0px; position: absolute; top: 0px;"></asp:Label>
        <br /><br />
    <div>
    <table>
        <tr><td align="center">
        <asp:Repeater ID="RepeaterUser" runat="server">
        <ItemTemplate>
            <tr><td><%# Eval("UserNumber") %>&nbsp;-&nbsp;<%# Eval("UserName")%>&nbsp;-&nbsp;<%# Eval("QianBi")%></td></tr>
        </ItemTemplate>              
        <HeaderTemplate><font color="olive"size="5"><b>交易记录</b></font><hr size="3" color="olive" />
        </HeaderTemplate>
        </asp:Repeater>
        </td></tr>
        <tr><td align="center">
                <asp:Repeater ID="RepeaterRace" runat="server">
        <ItemTemplate>
            <tr><td><%# Eval("RaceTime") %>&nbsp;-&nbsp;<%# Eval("Place")%>&nbsp;-&nbsp;<%# Eval("Rate")%></td></tr>
        </ItemTemplate>              
     
        </asp:Repeater>
        
        
    </td></tr>
    <tr><td align="center">
    <asp:Repeater ID="RepeaterTransaction" runat="server">
        <ItemTemplate>
            <tr><td>项：<%# Eval("type") %>&nbsp;场次：&nbsp;<%# Eval("SN")%>&nbsp;马号：&nbsp;<%# Eval("HorseNo")%></td></tr>
        </ItemTemplate>              
     
        </asp:Repeater>
    
    </td></tr>
    <tr><td>
        <asp:GridView ID="GridViewTransaction" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField HeaderText="交易时间" />
                <asp:BoundField DataField="Up" HeaderText="独赢" />
                <asp:BoundField DataField="Down" HeaderText="位置" />
                <asp:BoundField DataField="Price" HeaderText="票价" />
                <asp:BoundField HeaderText="极限" />
            </Columns>
            <EmptyDataTemplate>
                <table><tr>t</tr></table>
            </EmptyDataTemplate>
        </asp:GridView>
    </td></tr>
    
    </table>
    </div>
    </form>
</body>
</html>

<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Head.ascx.cs" Inherits="ASCX_Head" %>
<table align="right" background="images/menu_bg.gif" border="1" bordercolor="#999999"
    id="menu" width="80%">
    <tr>
        <th width="12%" onclick="MenuGoUrl('Race_Result/RaceResult.aspx')" onmouseout="MenuMouseOut(this)" onmouseover="MenuMouseOver(this)">
        <asp:Label ID="Label8" runat="server" Text="赛果" />
        </th>
        <th onclick="location.reload()" onmouseout="MenuMouseOut(this)" onmouseover="MenuMouseOver(this)"
            width="13%">
            <asp:Label ID="Label1" runat="server" Text="刷新" />
        </th>
        <th onmouseout="MenuMouseOut(this)" onmouseover="MenuMouseOver(this)" width="12%">
            <asp:Label ID="Label2" onclick="MenuGoUrl('Transaction_Records/TractionRecords.aspx')" runat="server" Text="交易记录" />
        </th>
        <th onmouseout="MenuMouseOut(this)" onmouseover="MenuMouseOver(this)" width="12%">
            <asp:Label ID="Label3" onclick="MenuGoUrl('Race_Chart/View_Card.aspx')" runat="server" Text="赛事表" />
        </th>
        <th onmouseout="MenuMouseOut(this)" onmouseover="MenuMouseOver(this)" width="12%">
            <asp:Label ID="Label4" runat="server" onclick="openDialog('Guide/Help.aspx','help','dialogWidth:786px;dialogHeight:565px;help:No;resizable:No')"
                Text="帮助指南" />
        </th>
        <th onmouseout="MenuMouseOut(this)" onmouseover="MenuMouseOver(this)" width="12%">
            <asp:Label ID="Label5" onclick="MenuGoUrl('RegUser.aspx')" runat="server" Text="其它" />
        </th>
        <th onmouseout="MenuMouseOut(this)" onmouseover="MenuMouseOver(this)" width="12%">
            <asp:Label ID="Label6" onclick="MenuGoUrl('exit.aspx')" runat="server" Text="退出" />
        </th>
        <th onmouseout="MenuMouseOut(this)" onmouseover="MenuMouseOver(this)" width="12%">
            <asp:Label ID="Label7" onclick="MenuGoUrl('English/English_MY.aspx')" runat="server" Text="English" />
        </th>
    </tr>
</table>
<br />
<br />
<br />

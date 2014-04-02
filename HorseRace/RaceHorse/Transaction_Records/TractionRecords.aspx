<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TractionRecords.aspx.cs" Inherits="Transaction_Records_TractionRecords" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="../Images/bg_bknd.jpg">
    <form id="form1" runat="server">
    <div><asp:Label ID="Label1" runat="server" Text="Transaction Records" style="font-weight: bold; font-size: 15pt; font-family: 'Arial Black'; left: 0px; position: absolute; top: 0px;"></asp:Label>
        <br /><br />
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
        <tr><td>
             <table>
             <tr><td><font color="maroon" size="3"><b>当前赛事</b></font></td></tr>
             <tr><td>
            <asp:GridView ID="GridViewCurrentRace" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                <Columns>
                    <asp:BoundField DataField="RaceTime" HeaderText="日期" />
                    <asp:BoundField HeaderText="赛事地点" DataField="Place" />
                    <asp:BoundField HeaderText="赔率" DataField="Rate" />
                    <asp:BoundField HeaderText="票数" DataField="TotalCount" />
                    <asp:BoundField HeaderText="我的输赢" DataField="Totalshuying" />
                    <asp:HyperLinkField HeaderText="细节" Text="展开" DataNavigateUrlFields="RaceID" DataNavigateUrlFormatString="RaceDetials.aspx?RaceID={0}" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
            </asp:GridView>
            </td></tr>
            </table>
        </td></tr>
     <tr><td>
     <table>
             <tr><td><font color="maroon" size="3"><b>过去赛事</b></font></td></tr>
             <tr><td>
         <asp:GridView ID="GridViewPostRace" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
         <Columns>
                    <asp:BoundField DataField="RaceTime" HeaderText="日期" />
                    <asp:BoundField HeaderText="赛事地点" DataField="Place" />
                    <asp:BoundField HeaderText="赔率" DataField="Rate" />
                    <asp:BoundField HeaderText="票数" DataField="TotalCount" />
                    <asp:BoundField HeaderText="我的输赢" DataField="Totalshuying" />
                    <asp:HyperLinkField HeaderText="细节" Text="展开" DataNavigateUrlFields="RaceID" DataNavigateUrlFormatString="RaceDetials.aspx?RaceID={0}" />
                </Columns>
             <FooterStyle BackColor="Tan" />
             <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
             <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
             <HeaderStyle BackColor="Tan" Font-Bold="True" />
             <AlternatingRowStyle BackColor="PaleGoldenrod" />
         </asp:GridView>
          </td></tr>
            </table>
     </td></tr>
    </table>
    </div>
    </form>
</body>
</html>

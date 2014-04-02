<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RaceDetials.aspx.cs" Inherits="Transaction_Records_RaceDetials" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="../Images/bg_bknd.jpg">
    <form id="form1" runat="server">
    
    <div>
    <asp:Label ID="Label1" runat="server" Text="Transaction Detials" style="font-weight: bold; font-size: 15pt; font-family: 'Arial Black'; left: 0px; position: absolute; top: 0px;"></asp:Label>
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
        <tr><td align="center">
                <asp:Repeater ID="RepeaterRace" runat="server">
        <ItemTemplate>
            <tr><td><%# Eval("RaceTime") %>&nbsp;-&nbsp;<%# Eval("Place")%>&nbsp;-&nbsp;<%# Eval("Rate")%></td></tr>
        </ItemTemplate>              
     
        </asp:Repeater>
        </td></tr>
        <tr><td>
        
            <table>
             <tr><td style="height: 21px"><font color="purple"><p>吃票/下注总结</p></font></td></tr>
             <tr><td><asp:GridView ID="GridViewBetEat" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
             <Columns>
                    <asp:BoundField HeaderText="项" DataField="type" />
                    <asp:BoundField HeaderText="票数" DataField="total" />
                    <asp:BoundField HeaderText="总价" DataField="totalprice" />
                    <asp:BoundField HeaderText="输赢" DataField="shuying" />
                    <asp:BoundField HeaderText="余额" DataField="remain" />
                </Columns>
                 <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                 <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                 <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                 <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            </asp:GridView></td></tr>
            </table>
        
       </td></tr>
        <tr><td> 
            
        
           <table>
             <tr><td><font color="purple"><p>赛事总结</p></font></td></tr>
             <tr><td><asp:GridView ID="GridViewSN" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
             <Columns>
                    <asp:BoundField HeaderText="场次" DataField="SN" />
                    <asp:BoundField HeaderText="票数" DataField="total" />
                    <asp:BoundField HeaderText="总价" DataField="totalprice" />
                    <asp:BoundField HeaderText="输赢" DataField="shuying" />
                    <asp:BoundField HeaderText="余额" DataField="remain" />
                </Columns>
                 <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                 <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                 <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                 <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            </asp:GridView></td></tr>
            </table>
        
        </td></tr>
        <tr><td>
               <table>
             <tr><td><font color="purple"><p>交易细节</p></font></td></tr>
             <tr><td><asp:GridView ID="GridViewRaceDetials" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
             <Columns>
                    <asp:BoundField HeaderText="项" DataField="type" />
                    <asp:BoundField HeaderText="场" DataField="SN" />
                    <asp:BoundField HeaderText="马" DataField="HorseNo" />
                    <asp:BoundField HeaderText="独赢" DataField="HeadAmount" />
                    <asp:BoundField HeaderText="位置" DataField="FootAmount" />
                    <asp:BoundField HeaderText="票价" DataField="Price" />
                    
                    <asp:BoundField HeaderText="总价" DataField="totalprice" />
                    <asp:BoundField HeaderText="名次" DataField="Result" />
                   <asp:BoundField HeaderText="赔率" DataField="Cess" />
                   
                    <asp:BoundField HeaderText="输赢" DataField="shuying" />
                    
                     <asp:HyperLinkField HeaderText="细节" Text="展示" DataNavigateUrlFields="AnteID,type,RaceID" DataNavigateUrlFormatString="BetorEatDetails.aspx?AnteGambleID={0}&type={1}&RaceID={2}" />
                </Columns>
                 <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                 <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                 <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                 <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            </asp:GridView></td></tr>
            </table>
        
        </td></tr>
        <tr><td>
           
            <asp:Literal ID="LiteralToTalshuying" runat="server" Text="输赢总结" ></asp:Literal>
            
             <asp:Label ID="LabelToTalshuying" runat="server" ></asp:Label>
           </td></tr>
            
        </table>
    
    
    
    </div>
    </form>
</body>
</html>

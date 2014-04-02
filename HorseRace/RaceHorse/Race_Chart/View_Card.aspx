<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_Card.aspx.cs" Inherits="Race_Chart_View_Card" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
        <script src="../race.js" type="text/javascript"></script>
        <script language="javascript">
        function MenuGoUrl(url) {
           location.href = url;
          }
        </script>

    <link href="../race.css" rel="stylesheet" type="text/css" />
</head>
<body background="../Images/bg_bknd.jpg" >
    
    <form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="View Card" style="font-weight: bold; font-size: 15pt; font-family: 'Arial Black'"></asp:Label>
        <br /><br /><br />
    
    <div>
    <table><tr><td>
        <asp:Repeater ID="RepeaterSG" runat="server" OnItemDataBound="RepSG_ItemDataBound">
        <ItemTemplate>
            <tr>
                <td><%# Eval("RaceTime") %>
                    
                </td>
                    <td>场次<%# Eval("SN") %>
                    
                </td>
                <td>
                    <asp:Button ID="ButtonSG" runat="server" Text="展开" />
                </td>
            </tr>
        </ItemTemplate>
        <SeparatorTemplate>
        <hr size="1" color="black">
        </SeparatorTemplate>
        <HeaderTemplate><font color="navy" size="5"><b>新加坡赔率</b></font><hr size="3" color="navy" />
        </HeaderTemplate>
        </asp:Repeater>
        
        </td></tr></table>
        
        <br /><br />
      <table><tr><td>
        <asp:Repeater ID="RepeaterMY" runat="server" OnItemDataBound="RepMY_ItemDataBound">
        <ItemTemplate>
            <tr>
                <td><%# Eval("RaceTime") %>
                    
                </td>
                    <td>场次<%# Eval("SN") %>
                    
                </td>
                <td>
                    <asp:Button ID="ButtonMY" runat="server" Text="展开" />
                </td>
            </tr>
        </ItemTemplate>
        <SeparatorTemplate>
        <hr size="1" color="black">
        </SeparatorTemplate>
        <HeaderTemplate><font color="navy" size="5"><b>马来西亚赔率</b></font><hr size="3" color="navy" />
        </HeaderTemplate>
        </asp:Repeater>
        
        </td></tr></table>
    </div>
    </form>
</body>
</html>

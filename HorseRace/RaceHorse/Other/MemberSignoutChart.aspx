<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberSignoutChart.aspx.cs" Inherits="Other_MemberSignoutChart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="../Images/bg_bknd.jpg">
    <form id="form1" runat="server">
    <div>
    <asp:Repeater ID="Repeater1" runat="server">

    <ItemTemplate>
    <table cellspacing="0" border="1" style="border-collapse:collapse;">
         <tr>

         <th rowspan='2'>姓名</th>
         <th rowspan='2'>户口帐号</th>
          <th rowspan='2'>状态</th>
        <th rowspan='2'>钱币</th>
       <th rowspan='2'>信用额度</th>
        <th colspan='2'>税（分）</th>

       <th rowspan='2'>我的输赢</th>
       <th rowspan='2'>Last Login</th>

       </tr>

        <tr><th>下注</th>
         <th>吃票</th></tr>
    <tr>

<td align="center" style="width:10%;"><%#Eval("UserName") %></td>
<td align="center" style="width:15%;"><%#Eval("UserNumber") %></td>
<td align="center" style="width:10%;"><%#GetState(Eval("PasswordTime"))%></td>
<td align="center" style="width:10%;"><%#Eval("QianBi") %></td>
<td align="center" style="width:15%;"><%#Eval("Account")%></td>
<td align="center" style="width:10%;"><%#Eval("Tax1") %></td>
<td align="center" style="width:10%;"><%#Eval("Tax2") %></td>
<td align="center" style="width:10%;"><%#Eval("ShuYing") %></td>
<td align="center" style="width:10%;"><%#Eval("LastLogTime") %></td>

</tr>
</table>
    </ItemTemplate>
    </asp:Repeater>
    </div>
    </form>
</body>
</html>

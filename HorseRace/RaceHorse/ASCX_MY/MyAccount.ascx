<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MyAccount.ascx.cs" Inherits="ASCX_MyAccount" %>
<%--<%@ Register TagPrefix="mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile" %>
--%><table>
        <tr><td align="center">
        <asp:Repeater ID="RepeaterUser" runat="server">
        <ItemTemplate>
        <table>
            <tr><td>应用的钱币：<%# Eval("QianBi")%></td></tr>
            <tr><td>信用额度：<%# Eval("Account")%></td></tr>
            <tr><td>我的输赢：<%# Eval("shuying")%></td></tr>
            
            </table>
        </ItemTemplate>              
        <HeaderTemplate><font color="olive"size="5"><b>户口&nbsp; -&nbsp; <%# Eval("UserName")%></b></font><hr size="3" color="olive" />
        </HeaderTemplate>
        </asp:Repeater>
        </td></tr>
        
    </table>
&nbsp;
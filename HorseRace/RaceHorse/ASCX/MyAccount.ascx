<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MyAccount.ascx.cs" Inherits="ASCX_MyAccount" %>
<%--<%@ Register TagPrefix="mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile" %>
--%><table>
        <tr><td align="center">
        <asp:Repeater ID="RepeaterUser" runat="server">
        <ItemTemplate>
        <table>
            <tr><td>
                <asp:Label ID="Label1" runat="server" Text="<%$ Resources:LabelResource1.Text %>"></asp:Label><%# Eval("QianBi")%></td></tr>
            <tr><td><asp:Label ID="Label2" runat="server" Text="<%$ Resources:LabelResource2.Text %>"></asp:Label><%# Eval("Account")%></td></tr>
            <tr><td><asp:Label ID="Label3" runat="server" Text="<%$ Resources:LabelResource3.Text %>"></asp:Label><%# Eval("shuying")%></td></tr>
            
            </table>
        </ItemTemplate>              
        <HeaderTemplate><font color="olive"size="5"><b>
            <asp:Label ID="Label4" runat="server" Text="<%$ Resources:LabelResource4.Text %>"></asp:Label><%# Eval("UserName")%></b></font><hr size="3" color="olive" />
        </HeaderTemplate>
        </asp:Repeater>
        </td></tr>
        
    </table>
&nbsp;
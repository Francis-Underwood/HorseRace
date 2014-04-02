<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Ante_bet.ascx.cs" Inherits="ASCX_Ante_bet" %>
<!--<%@ Register TagPrefix="mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile" %> -->
    <%--<form id="form1" runat="server">--%>
        <table style="width: 280px; height: 131px; border-top-style: ridge; border-right-style: ridge; border-left-style: ridge; border-bottom-style: ridge;">
            <tr>
                <td colspan="6" align="left" style="border-top-style: ridge; border-right-style: ridge; border-left-style: ridge; background-color: #3399ff; border-bottom-style: ridge">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial Black" Text="要求下注"
                        Width="75px"></asp:Label></td>
                
            </tr>
            <tr>
                <td width ="10%" height="5%" align="center" style="width: 14%; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-bottom-style: solid">
                    <asp:Literal ID="Literal1" runat="server" Text="场"></asp:Literal></td>
                <td width ="10%" height="5%" align="center" style="width: 14%; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-bottom-style: solid">
                    <asp:Literal ID="Literal2" runat="server" Text="马"></asp:Literal></td>
                <td width ="20%" height="5%" align="center" style="width: 14%; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-bottom-style: solid">
                    <asp:Literal ID="Literal3" runat="server" Text="独赢"></asp:Literal></td>
                 <td width ="20%" height="5%" align="center" style="width: 14%; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-bottom-style: solid">
                    <asp:Literal ID="Literal4" runat="server" Text="位置"></asp:Literal></td>
                <td height="5%" align="center" style="width: 14%; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-bottom-style: solid;">
                     <asp:Literal ID="Literal5" runat="server" Text="$"></asp:Literal></td>
                <td height="5%" align="center" style="width: 14%; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-bottom-style: solid;">
                     <asp:Literal ID="Literal6" runat="server" Text="赔率极限"></asp:Literal></td>
            </tr>
            <tr>
                <td width ="10%" align="center" style="height: 5%; width: 14%; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-bottom-style: solid;">
                    <asp:TextBox ID="tbSN" runat="server" Width="20" Columns="20"></asp:TextBox></td>
                <td width ="10%" align="center" style="height: 5%; width: 14%; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-bottom-style: solid;">
                    <asp:TextBox ID="tbHorseNo" runat="server" Width="20" Columns="20"></asp:TextBox></td>
                <td width ="20%" align="center" style="height: 5%; width: 14%; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-bottom-style: solid;">
                    <asp:TextBox ID="tbHeadAmount" runat="server" Width="30" Columns="20"></asp:TextBox></td>
                 <td width ="20%" align="center" style="height: 5%; width: 14%; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-bottom-style: solid;">
                    <asp:TextBox ID="tbFootAmount" runat="server" Width="30" Columns="20"></asp:TextBox></td>
                <td align="center" style="height: 5%; width: 14%; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-bottom-style: solid;">
                    <asp:Label ID="lbPrice" runat="server" Text="Label" Width="10px"></asp:Label></td>
                <td align="center" style="height: 5%; width: 14%; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-bottom-style: solid;">
                    <asp:Label ID="lbRate" runat="server" Text="Label"></asp:Label></td>               
            </tr>
            <tr>
                <td colspan="4" width = "60%" style="height: 7px" align="right">
                    <asp:Button ID="btnConceal" runat="server" Text="取消" OnClick="btnConceal_Click" /></td>
                <td colspan="2" width ="40%" style="height: 7px">
                    <asp:Button ID="btnSubmin" runat="server" Text="进行交易" Width="90px" OnClick="btnSubmit_Click" ValidationGroup="va_Ante" /></td>
                            
            </tr>           
        </table>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbHeadAmount"
            ControlToValidate="tbFootAmount" ErrorMessage="脚不能大于头" Operator="LessThanEqual"
            Type="Integer" Display="None" ValidationGroup="va_Ante"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorSN" runat="server" ErrorMessage="场次不能为空" ControlToValidate="tbSN" Display="None" ValidationGroup="va_Ante"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorHorseNo" runat="server" ErrorMessage="马的编号不能为空" ControlToValidate="tbHorseNo" Height="19px" Width="107px" Display="None" ValidationGroup="va_Ante"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorHeadAmount" runat="server" ErrorMessage="独赢不能为空" ControlToValidate="tbHeadAmount" Width="108px" Display="None" ValidationGroup="va_Ante"></asp:RequiredFieldValidator>&nbsp;
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
            ShowSummary="False" ValidationGroup="va_Ante"/>
    
   <%-- </form>--%>

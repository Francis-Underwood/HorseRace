<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Bet.ascx.cs" Inherits="ASCX_Bet" %>
<%--<%@ Register TagPrefix="mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile" %>
--%>
<table style="left: 0px; position: absolute; top: 0px; width: 300px; height: 85px;" border="0">
    <tr style=" background-color: #0066ff;">
        <td align="center" style="font-size: x-small; height: 32px; width: 12%;"><asp:Literal ID="LtSN" runat="server"></asp:Literal>
        </td>
        <td width="12%" align="center" style="font-size: x-small; height: 32px;"><asp:Literal ID="LtHorseNo" runat="server"></asp:Literal>
        </td>
        <td align="center" style="font-size: x-small; height: 32px; width: 105px;"><asp:Literal ID="LtHeadAmount" runat="server"></asp:Literal>
        </td>
         <td width="20%" align="center" style="font-size: x-small; height: 32px;"><asp:Literal ID="LtFootAmount" runat="server"></asp:Literal>
        </td>
        <td width="12%" align="center" style="font-size: x-small; height: 32px;"><asp:Literal ID="LtPrice" runat="server"></asp:Literal>
        </td>
        <td width="12%" align="center" style="font-size: x-small; height: 32px;"><asp:Literal ID="LtUp" runat="server"></asp:Literal>
        </td>
             <td align="center" style="font-size: x-small; width: 12%; height: 32px;"><asp:Literal ID="LtDown" runat="server"></asp:Literal>
        </td>
    </tr>
    <tr style=" background-color: #ffbecc;">
        <td colspan = 2 align="center">
            <asp:Label ID="Label1" runat="server" Text="下注" Width="48px" style="font-size: small"></asp:Label></td>
        <td align="center" style="width: 105px">
<asp:TextBox ID="TbHeadAmount" runat="server" Height="15px" Width="24px"></asp:TextBox></td>
        <td align="center">
<asp:TextBox ID="TbFootAmount" runat="server" Height="15px" Width="24px"></asp:TextBox></td>
        <td colspan=3 align="center">
            <asp:Label ID="Label2" runat="server" Style="font-size: small" Text="已上的票数" Width="84px"></asp:Label></td>
    </tr>
    <tr style=" background-color: #66ffcc;">
        <td colspan = "2" style="height: 25px">
            
        </td>
        <td colspan = "2" style="height: 25px">
        </td>
        <td colspan = "3" align="center" style="height: 25px">
            <asp:Button ID="BtnSubmit" runat="server" Text="进行交易" OnClick="BtnSubmit_Click"  ValidationGroup="VdG_bet"/></td>
    </tr>
</table>
<asp:RequiredFieldValidator ID="RequiredFieldValidatorHeadAmount" runat="server" ErrorMessage="独赢不能为空" ValidationGroup="VdG_bet" ControlToValidate="TbHeadAmount" Display="None"></asp:RequiredFieldValidator>

<asp:CompareValidator ID="CompareValidatorHeadtoFoot" runat="server" ErrorMessage="位置不能大于独赢" ControlToCompare="TbFootAmount" ControlToValidate="TbHeadAmount" Display="None" Operator="GreaterThanEqual" ValidationGroup="VdG_bet"></asp:CompareValidator>

<asp:ValidationSummary ID="ValidationSummarybet" runat="server" ShowMessageBox="True"
            ShowSummary="False" ValidationGroup="VdG_bet"/>

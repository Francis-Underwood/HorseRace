<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Eat.ascx.cs" Inherits="ASCX_Eat" %>
<%--<%@ Register TagPrefix="mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile" %>
--%>
<table style="left: 0px; position: absolute; top: 0px; width: 300px; height: 85px;" border="0">
    <tr style=" background-color: #449f10;">
        <td width="12%" align="center" style="font-size: x-small; height: 32px;"><asp:Literal ID="LtSN" runat="server"></asp:Literal>
        </td>
        <td width="12%" align="center" style="font-size: x-small; height: 32px;"><asp:Literal ID="LtHorseNo" runat="server"></asp:Literal>
        </td>
        <td width="20%" align="center" style="font-size: x-small; height: 32px;"><asp:Literal ID="LtHeadAmount" runat="server"></asp:Literal>
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
    <tr style=" background-color: #f0e68c;">
        <td colspan = 2 align="center">
            <asp:Label ID="Label1" runat="server" Text="<%$ Resources:LabelResource1.Text %>" Width="48px" style="font-size: small"></asp:Label></td>
        <td align="center">
<asp:TextBox ID="TbHeadAmount" runat="server" Height="15px" Width="24px"></asp:TextBox></td>
        <td align="center">
<asp:TextBox ID="TbFootAmount" runat="server" Height="15px" Width="24px"></asp:TextBox></td>
        <td colspan="3" align="center">
            <asp:Label ID="Label2" runat="server" Style="font-size: small" Text="<%$ Resources:LabelResource2.Text %>" Width="84px"></asp:Label></td>
    </tr>
    <tr style=" background-color: #8af62f;">
        <td colspan = "2" style="height: 25px">
            
        </td>
        <td colspan = "2" style="height: 25px">
        </td>
        <td colspan = "3" align="center" style="height: 25px">
            <asp:Button ID="BtnSubmit" runat="server" Text="<%$ Resources:BtnSubmitResource.Text %>" OnClick="BtnSubmit_Click" ValidationGroup="VdG_eat" /></td>
    </tr>
</table>

<asp:RequiredFieldValidator ID="RequiredFieldValidatorHeadAmount" runat="server" ErrorMessage="独赢不能为空" ValidationGroup="VdG_eat" ControlToValidate="TbHeadAmount" Display="None"></asp:RequiredFieldValidator>

<asp:CompareValidator ID="CompareValidatorHeadtoFoot" runat="server" ErrorMessage="位置不能大于独赢" ControlToCompare="TbFootAmount" ControlToValidate="TbHeadAmount" Display="None" Operator="GreaterThanEqual" ValidationGroup="VdG_eat"></asp:CompareValidator>

<asp:ValidationSummary ID="ValidationSummaryeat" runat="server" ShowMessageBox="True"
            ShowSummary="False" ValidationGroup="VdG_eat"/>

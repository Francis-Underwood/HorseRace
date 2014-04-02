<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Gamble_eat.ascx.cs" Inherits="ASCX_Gamble_eat" %>
<!-- <%@ Register TagPrefix="mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile" %> -->
        <table style="width: 280px; height: 131px; border-top-style: ridge; border-right-style: ridge; border-left-style: ridge; border-bottom-style: ridge;">
            <tr>
                <td colspan="6" align="left" style="border-top-style: ridge; border-right-style: ridge; border-left-style: ridge; background-color: #ffcc33; border-bottom-style: ridge">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial Black" Text="要求吃票"
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
                    <asp:TextBox ID="tbSN_Gam" runat="server" Width="20" Columns="20"></asp:TextBox></td>
                <td width ="10%" align="center" style="height: 5%; width: 14%; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-bottom-style: solid;">
                    <asp:TextBox ID="tbHorseNo_Gam" runat="server" Width="20" Columns="20"></asp:TextBox></td>
                <td width ="20%" align="center" style="height: 5%; width: 14%; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-bottom-style: solid;">
                    <asp:TextBox ID="tbHeadAmount_Gam" runat="server" Width="30" Columns="20"></asp:TextBox></td>
                 <td width ="20%" align="center" style="height: 5%; width: 14%; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-bottom-style: solid;">
                    <asp:TextBox ID="tbFootAmount_Gam" runat="server" Width="30" Columns="20"></asp:TextBox></td>
                <td align="center" style="height: 5%; width: 14%; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-bottom-style: solid;">
                    <asp:Label ID="lbPrice" runat="server" Text="Label" Width="10px"></asp:Label></td>
                <td align="center" style="height: 5%; width: 14%; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-bottom-style: solid;">
                    <asp:Label ID="lbRate" runat="server" Text="Label"></asp:Label></td>               
            </tr>
            <tr>
                <td colspan="4" width = "60%" style="height: 7px" align="right">
                    <asp:Button ID="btnConceal_Gam" runat="server" Text="取消" OnClick="btnConceal_Gam_Click" /></td>
                <td colspan="2" width ="40%" style="height: 7px">
                    <asp:Button ID="btnSubmit_Gam" runat="server" Text="进行交易" Width="90px" OnClick="btnSubmit_Gam_Click" ValidationGroup="va_Gam"/></td>
                            
            </tr>           
        </table>
        <asp:CompareValidator ID="CompareValidator1_Gam" runat="server" ControlToCompare="tbHeadAmount_Gam"
            ControlToValidate="tbFootAmount_Gam" ErrorMessage="脚不能大于头" Operator="LessThanEqual"
            Type="Integer" Display="None" ValidationGroup="va_Gam"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorSN_Gam" runat="server" ErrorMessage="场次不能为空" ControlToValidate="tbSN_Gam" Display="None" ValidationGroup="va_Gam"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorHorseNo_Gam" runat="server" ErrorMessage="马的编号不能为空" ControlToValidate="tbHorseNo_Gam" Height="19px" Width="107px" Display="None" ValidationGroup="va_Gam"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorHeadAmount_Gam" runat="server" ErrorMessage="独赢不能为空" ControlToValidate="tbHeadAmount_Gam" Width="108px" Display="None" ValidationGroup="va_Gam"></asp:RequiredFieldValidator>&nbsp;
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
            ShowSummary="False"  ValidationGroup="va_Gam"/>
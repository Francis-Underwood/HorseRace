<%@ Control Language="C#" AutoEventWireup="true" CodeFile="OtherAgentHead.ascx.cs" Inherits="ASCX_OtherAgentHead" %>
<script>
function goURL(url) {
    location.href = url;
}
</script>

<table cellspacing="0" cellpadding="0" border="0" width="100%">
    <tr>
        <td height="59" width="220" rowspan="2">
            <img src="images/logo.jpg"></td>
        <td style="height: 23px">
            <table class="FLD" cellspacing="0" width="100%" height="100%">
                <tr>
                    <th onmouseover="this.className='HVR'" onmousedown="this.className='CLK'" onmouseout="this.className=''"
                        onclick="goURL('reguser.aspx');">
                        <asp:Label ID="Label1" runat="server" Text="<%$ Resources:LableResource1.Text %>"></asp:Label></th>
                    <th onmouseover="this.className='HVR'" onmousedown="this.className='CLK'" onmouseout="this.className=''"
                    onclick="goURL('Other/Result.aspx');">
                        <asp:Label ID="Label2" runat="server" Text="<%$ Resources:LableResource2.Text %>"></asp:Label></th>
                     
                     <th onmouseover="this.className='HVR'" onmousedown="this.className='CLK'" onmouseout="this.className=''"
                    onclick="goURL('Other/MyMember.aspx');">
                        <asp:Label ID="Label6" runat="server" Text="<%$ Resources:LableResource5.Text %>"></asp:Label></th>
                        
                     <th onmouseover="this.className='HVR'" onmousedown="this.className='CLK'" onmouseout="this.className=''"
                    onclick="goURL('Other/MemberSignoutChart.aspx');">
                        <asp:Label ID="Label5" runat="server" Text="<%$ Resources:LableResource6.Text %>"></asp:Label></th>
                        
                              
                    <th onmouseover="this.className='HVR'" onmousedown="this.className='CLK'" onmouseout="this.className=''"
                    onclick="goURL('Other/TotalReport.aspx');">
                        <asp:Label ID="Label3" runat="server" Text="<%$ Resources:LableResource3.Text %>"></asp:Label></th>
                        
                        
                     <th onmouseover="this.className='HVR'" onmousedown="this.className='CLK'" onmouseout="this.className=''"
                    onclick="goURL('Other/Service Center.aspx');">
                        <asp:Label ID="Label7" runat="server" Text="Service Center"></asp:Label></th>
                        
                           
                    <th onmouseover="this.className='HVR'" onmousedown="this.className='CLK'" onmouseout="this.className=''"
                        onclick="goURL('default_SG.aspx');">
                        <asp:Label ID="Label4" runat="server" Text="<%$ Resources:LableResource4.Text %>"></asp:Label> 
                    </th>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td bgcolor="#bb0000" background="images/bg_menu.jpg" height="36">
            <div id="Title" class="Title">
                户口管理
            </div>
            <div id="Time" style="color:white;font:15px century gothic;position:absolute;
                top:27px;right:5px;filter:shadow(strength=2,direction=135)">
                <%=DateTime.Now.ToString() %>
            </div>
        </td>
    </tr>
</table>

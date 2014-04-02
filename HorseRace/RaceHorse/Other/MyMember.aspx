<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyMember.aspx.cs" Inherits="Other_MyMember"  EnableViewState="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="../Images/bg_bknd_expand.jpg">
    
    <form id="form1" runat="server">
    <div style="background-image: url(Images/bg_bknd_expand.JPG)">
        <asp:Panel ID="PanelMember" runat="server" Height="350px" Width="175px" style="left: 10px; position: absolute; top: 10px">
        <table width="100%" height="100%" ><tr><td colspan="2" height="280" align="left" cellpadding="1px" style="clip: rect(1px auto auto 0px)">
        
        <asp:ListBox ID="LBMember" runat="server" DataTextField="UserName" DataValueField="UserID" AutoPostBack="True" OnSelectedIndexChanged="LBMember_SelectedIndexChanged" Rows="18" Width="150px"></asp:ListBox>
        
        
        </td></tr>
        
        <tr>
        <td><asp:Button ID="BtnAdd" runat="server" Text="Add" OnClick="BtnAdd_Click" /></td>
        <td style="width: 72px"><asp:Button ID="BtnRemove" runat="server" Text="Remove" OnClick="BtnRemove_Click"  OnClientClick="return confirm('是否确认删除！')" /></td>
        </tr>
        
        </table>
            
            
            
            
            
        </asp:Panel>
        
    <asp:Panel ID="PanelInfoAdd" runat="server" Height="50px" Width="675px"  style="left: 200px; position: absolute; top: 10px" OnLoad="PanelInfoAdd_Load">
         
      
      
        <table style="width: 100%">
            <tr>
                <td colspan="3">
        <asp:Label ID="LblMemberDetial" runat="server" Text="Member Details"  Font-Bold="true" Font-Size="15" ForeColor="Brown"></asp:Label></td>
                
            </tr>
            <tr>
                <td style="width: 30%; height: 26px;">
        
        
        <asp:Label ID="LblLastLogin" runat="server" Text="LastLogin" Font-Size="11pt"></asp:Label></td>
                <td  colspan="2" style="width: 70%; height: 26px;">
        
        <asp:TextBox ID="TxtBoxLastLogin" runat="server" Text="N.A" ReadOnly="true"></asp:TextBox></td>
                
            </tr>
            <tr>
               <td style="width: 30%; height: 21px;">
        
        <asp:Label ID="LblAccountPrefix" runat="server" Text="Account Prefix" Font-Size="11pt"></asp:Label></td>
                <td  colspan="2" style="width: 70%; height: 21px;">
                
                
                <table>
                <tr>
                <td><asp:TextBox ID="TxtBoxAccountPrefix" runat="server" Text="HH" ReadOnly="true" Width="20px"></asp:TextBox></td>
                <td>\</td>
                <td><asp:TextBox ID="TextBox1" runat="server" Text="010" ReadOnly="true" Width="20px"></asp:TextBox></td>
                </tr>
                </table>
                
                
                
                
                
                
        
        </td>
       
            </tr>
                 <tr>
                <td style="height: 21px; width: 30%;">
       
        <asp:Label ID="LblAccountNo" runat="server" Text="Account No." Font-Size="11pt"></asp:Label></td>
                <td  colspan="2" style="width: 70%; height: 21px;">
        
        <asp:TextBox ID="TxtBoxAccountNo" runat="server"></asp:TextBox></td>
            </tr>
                 <tr>
                <td style="width: 30%">
         <asp:Label ID="LblFullName" runat="server" Text="Full Name" Font-Size="11pt"></asp:Label></td>
                <td  colspan="2" style="width: 70%">
        
        <asp:TextBox ID="TxtBoxFullName" runat="server"></asp:TextBox></td>
               
            </tr>
                 <tr>
                <td style="width: 30%; height: 26px;">
         <asp:Label ID="LblLoginID" runat="server" Text="Login ID" Font-Size="11pt"></asp:Label></td>
                <td  colspan="2" style="width: 70%; height: 26px;">
        
        <asp:TextBox ID="TxtBoxLoginID" runat="server"></asp:TextBox></td>
            </tr>
                 <tr>
                <td style="width: 30%">
        
        <asp:Label ID="LblPassword" runat="server" Text="Password" Font-Size="11pt"></asp:Label></td>
                <td  colspan="2" style="width: 70%">
                
                <table width="100%">
                <tr><td><asp:TextBox ID="TxtBoxPassword" runat="server" Width="70px"></asp:TextBox></td>
                <td style="width: 70%"><em>(case sensitive alohabet)</em></td></tr></table>
                
        
        </td>
            </tr>
                 <tr>
                <td style="width: 30%">
      
        
        <asp:Label ID="LblGroup" runat="server" Text="Group" Font-Size="11pt"></asp:Label></td>
                <td  colspan="2" style="width: 70%">
        
        <asp:DropDownList ID="DDListGroup2" runat="server">
        <asp:ListItem>player</asp:ListItem>
        
        </asp:DropDownList>
        <asp:DropDownList ID="DDListGroup3" runat="server">
        <asp:ListItem>player</asp:ListItem>
        <asp:ListItem>agent</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DDListGroup4" runat="server">
        <asp:ListItem>player</asp:ListItem>
        <asp:ListItem>agent</asp:ListItem>
        <asp:ListItem>main agent</asp:ListItem>
        </asp:DropDownList>
        
        </td>
            </tr>
                 <tr>
                <td style="width: 30%">
        
        
        <asp:Label ID="LblStatus" runat="server" Text="Status" Font-Size="11pt"></asp:Label></td>
                <td  colspan="2" style="width: 70%">
        
       <asp:CheckBox ID="CheckBox1" runat="server" Width="113px"  Text="Active"/></td>
            </tr>
                 <tr>
                <td colspan="3">
        
        <asp:Label ID="LblNote" runat="server" ForeColor="Red" Font-Size="10" Text="Note:        Inactivingating"></asp:Label></td>
               
            </tr>
                 <tr>
                <td colspan="3" style="height: 5px">
        
        <asp:Label ID="LblCreditDetial" runat="server" Text="Credit Detial" Font-Size="15"  Font-Bold="true" ForeColor="Brown"></asp:Label></td>
                
            </tr>
            
            <tr>
                <td style="width: 30%">
               
        <asp:Label ID="LblCurrency" runat="server" Text="Currency" Font-Size="11pt" ></asp:Label></td>
                <td  colspan="2" style="width: 70%">
        
        <asp:TextBox ID="TxtBoxCurrency" runat="server"></asp:TextBox></td>
                
            </tr>
            
            <tr>
                <td style="width: 30%">
        
        <asp:Label ID="LblCreditLimit" runat="server" Text="Credit Limit" Font-Size="11pt"></asp:Label>
        
        <asp:TextBox ID="TxtBoxCreditLimit" runat="server" Width="75px"></asp:TextBox></td>
                <td style="width: 35%">
        <asp:Label ID="LblDownLine" runat="server" Text="DownLine" Font-Size="11pt"></asp:Label><asp:TextBox ID="TxtBoxDownLine" runat="server" Width="70px"></asp:TextBox></td>
                <td style="width: 35%">
        <asp:Label ID="LblBalance" runat="server" Text="Balance" Font-Size="11pt"></asp:Label>
        
        <asp:TextBox ID="TxtBoxBalance" runat="server" Width="80px"></asp:TextBox></td>
            </tr>
            
            <tr>
                <td  colspan="3" >
                    <asp:Label ID="LblNote2" runat="server"  Font-Size="10" ForeColor="Red" Text="Note"></asp:Label>
                </td>
                
            </tr>
            
          
            
            <tr>
                <td style="width: 30%">
                    <asp:Label ID="LblLossLimit" runat="server" Text="Set Loss Limit Over" Width="126px" Font-Size="11pt"></asp:Label>
                </td>
                <td  colspan="2" style="width: 70%">
                    <asp:TextBox ID="TxtBoxLossLimit" runat="server" Width="60px" ></asp:TextBox><asp:Label ID="LblBeLL" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            
            <tr>
                <td style="width: 30%">
                    <asp:Label ID="LblHorseTicketL" runat="server" Text="Horse Ticket Limit" Font-Size="11pt"></asp:Label>
                </td>
                <td  colspan="2" style="width: 70%">
                    <asp:TextBox ID="TxtBoxHorseTicketL" runat="server" Width="60px"></asp:TextBox><asp:Label ID="LblBeHTL" runat="server"
                        Text="Label"></asp:Label>
                </td>
            </tr>
            
            <tr>
                <td style="width: 30%">
                    <asp:Label ID="LblTax1" runat="server" Text="My Upline Tax me" Font-Size="11pt"></asp:Label>
                </td>
                <td  colspan="2" style="width: 70%">
                    <asp:Label ID="LblBetTax" runat="server" Text="Label"></asp:Label>
                    <asp:TextBox ID="TxtBoxBetTax" runat="server" Width="45px"></asp:TextBox>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            
              <tr>
                <td style="width: 30%">
                    <asp:Label ID="LblTax2" runat="server" Text="My Upline Tax me" Font-Size="11pt"></asp:Label>
                </td>
                <td  colspan="2" style="width: 70%">
                <asp:Label ID="LblEatTax" runat="server" Text="Label"></asp:Label>
                <asp:TextBox ID="TxtBoxEatTax" runat="server" Width="45px"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                
            </tr>
            
        </table>
        <center>
        <table width="100%" height="100%"  backgroundcolor="#FFFFFF">
            <tr>
               
                <td style="width: 53px">
                    &nbsp;</td>
                 <td style="width: 212px">
                <asp:Button ID="BtnReset" runat="server" Text="Reset" OnClick="BtnReset_Click" />
                <asp:Button ID="BtnUndo" runat="server" Text="Undo" OnClick="BtnUndo_Click" />
                <asp:Button ID="BtnSave" runat="server" Text="Save" OnClick="BtnSave_Click"  ValidationGroup="PanInfo"/></td>
                <td>
                    &nbsp;</td>
            </tr>
            
          
        </table>
        </center>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="PanInfo" ControlToValidate="TxtBoxLoginID"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="PanInfo" ControlToValidate="TxtBoxPassword"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="PanInfo" ControlToValidate="TxtBoxAccountNo"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="PanInfo" ControlToValidate="TxtBoxFullName"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="PanInfo" ControlToValidate="DDListGroup2"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="PanInfo" ControlToValidate="DDListGroup3"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="PanInfo" ControlToValidate="DDListGroup4"></asp:RequiredFieldValidator>
        &nbsp; &nbsp;
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="PanInfo" ShowMessageBox="True" ShowSummary="False"/>
        </asp:Panel>
        
        
    
        
        <asp:Panel ID="PanelInfoModify" runat="server" Height="50px" Width="125px" OnLoad="PanelInfoModify_Load">
        </asp:Panel>
    </div>     
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyMember.aspx.cs" Inherits="Other_MyMember"  EnableViewState="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="../Images/bg_bknd.jpg">
    
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="PanelMember" runat="server" Height="50px" Width="175px" style="left: 10px; position: absolute; top: 10px">
        <table><tr><td colspan="2">
        
        <asp:ListBox ID="LBMember" runat="server" DataTextField="UserName" DataValueField="UserID" AutoPostBack="True" OnSelectedIndexChanged="LBMember_SelectedIndexChanged"></asp:ListBox>
        
        
        </td></tr>
        
        <tr>
        <td><asp:Button ID="BtnAdd" runat="server" Text="Add" OnClick="BtnAdd_Click" /></td>
        <td><asp:Button ID="BtnRemove" runat="server" Text="Remove" OnClick="BtnRemove_Click" /></td>
        </tr>
        
        </table>
            
            
            
            
            
        </asp:Panel>
        
    <asp:Panel ID="PanelInfoAdd" runat="server" Height="50px" Width="675px"  style="left: 200px; position: absolute; top: 10px" OnLoad="PanelInfoAdd_Load">
         
      
      
        <table style="width: 100%">
            <tr>
                <td colspan="3">
        <asp:Label ID="LblMemberDetial" runat="server" Text="Label"></asp:Label></td>
                
            </tr>
            <tr>
                <td style="width: 173px; height: 26px;">
        
        
        <asp:Label ID="LblLastLogin" runat="server" Text="LastLogin"></asp:Label></td>
                <td  colspan="2" style="width: 42px; height: 26px;">
        
        <asp:TextBox ID="TxtBoxLastLogin" runat="server"></asp:TextBox></td>
                
            </tr>
            <tr>
               <td style="width: 173px">
        
        <asp:Label ID="LblAccountPrefix" runat="server" Text="Account Prefix"></asp:Label></td>
                <td  colspan="2" style="width: 42px">
        
        <asp:TextBox ID="TxtBoxAccountPrefix" runat="server"></asp:TextBox></td>
            </tr>
                 <tr>
                <td style="height: 21px; width: 173px;">
       
        <asp:Label ID="LblAccountNo" runat="server" Text="Account No."></asp:Label></td>
                <td  colspan="2" style="width: 42px; height: 21px;">
        
        <asp:TextBox ID="TxtBoxAccountNo" runat="server"></asp:TextBox></td>
            </tr>
                 <tr>
                <td style="width: 173px">
         <asp:Label ID="LblFullName" runat="server" Text="Full Name"></asp:Label></td>
                <td  colspan="2" style="width: 42px">
        
        <asp:TextBox ID="TxtBoxFullName" runat="server"></asp:TextBox></td>
               
            </tr>
                 <tr>
                <td style="width: 173px">
         <asp:Label ID="LblLoginID" runat="server" Text="Login ID"></asp:Label></td>
                <td  colspan="2" style="width: 42px">
        
        <asp:TextBox ID="TxtBoxLoginID" runat="server"></asp:TextBox></td>
            </tr>
                 <tr>
                <td style="width: 173px">
        
        <asp:Label ID="LblPassword" runat="server" Text="Password"></asp:Label></td>
                <td  colspan="2" style="width: 42px">
        
        <asp:TextBox ID="TxtBoxPassword" runat="server"></asp:TextBox></td>
            </tr>
                 <tr>
                <td style="width: 173px">
      
        
        <asp:Label ID="LblGroup" runat="server" Text="Group"></asp:Label></td>
                <td  colspan="2" style="width: 42px">
        
        <asp:DropDownList ID="DDListGroup2" runat="server">
        <asp:ListItem></asp:ListItem>
        
        </asp:DropDownList>
        <asp:DropDownList ID="DDListGroup3" runat="server">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DDListGroup4" runat="server">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem></asp:ListItem>
        <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        
        </td>
            </tr>
                 <tr>
                <td style="width: 173px">
        
        
        <asp:Label ID="LblStatus" runat="server" Text="Status"></asp:Label></td>
                <td  colspan="2" style="width: 42px">
        
       <asp:CheckBox ID="CheckBox1" runat="server" Width="113px" /></td>
            </tr>
                 <tr>
                <td colspan="3">
        
        <asp:Label ID="LblNote" runat="server" Text=""></asp:Label></td>
               
            </tr>
                 <tr>
                <td colspan="3">
        
        <asp:Label ID="LblCreditDetial" runat="server" Text="Credit Detial"></asp:Label></td>
                
            </tr>
            
            <tr>
                <td style="width: 173px">
               
        <asp:Label ID="LblCurrency" runat="server" Text="Currency"></asp:Label></td>
                <td  colspan="2" style="width: 42px">
        
        <asp:TextBox ID="TxtBoxCurrency" runat="server"></asp:TextBox></td>
                
            </tr>
            
            <tr>
                <td style="width: 173px">
        
        <asp:Label ID="LblCreditLimit" runat="server" Text="Credit Limit"></asp:Label>
        
        <asp:TextBox ID="TxtBoxCreditLimit" runat="server"></asp:TextBox></td>
                <td style="width: 42px">
        <asp:Label ID="LblDownLine" runat="server" Text="DownLine"></asp:Label><asp:TextBox ID="TxtBoxDownLine" runat="server"></asp:TextBox></td>
                <td style="width: 42px">
        <asp:Label ID="LblBalance" runat="server" Text="Balance"></asp:Label>
        
        <asp:TextBox ID="TxtBoxBalance" runat="server"></asp:TextBox></td>
            </tr>
            
            <tr>
                <td  colspan="3" style="width: 173px">
                    <asp:Label ID="LblNote2" runat="server" Text="Note"></asp:Label>
                </td>
                
            </tr>
            
          
            
            <tr>
                <td style="width: 173px">
                    <asp:Label ID="LblLossLimit" runat="server" Text="Set Loss Limit Over"></asp:Label>
                </td>
                <td  colspan="2" style="width: 42px">
                    <asp:TextBox ID="TxtBoxLossLimit" runat="server" ></asp:TextBox><asp:Label ID="LblBeLL" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            
            <tr>
                <td style="width: 173px">
                    <asp:Label ID="LblHorseTicketL" runat="server" Text="Horse Ticket Limit"></asp:Label>
                </td>
                <td  colspan="2" style="width: 42px">
                    <asp:TextBox ID="TxtBoxHorseTicketL" runat="server"></asp:TextBox><asp:Label ID="LblBeHTL" runat="server"
                        Text="Label"></asp:Label>
                </td>
            </tr>
            
            <tr>
                <td style="width: 173px">
                    <asp:Label ID="LblTax1" runat="server" Text="My Upline Tax me"></asp:Label>
                </td>
                <td  colspan="2" style="width: 42px">
                    <asp:Label ID="LblBetTax" runat="server" Text="Label"></asp:Label>
                    <asp:TextBox ID="TxtBoxBetTax" runat="server"></asp:TextBox>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            
              <tr>
                <td style="width: 173px">
                    <asp:Label ID="LblTax2" runat="server" Text="My Upline Tax me"></asp:Label>
                </td>
                <td  colspan="2" style="width: 42px">
                <asp:Label ID="LblEatTax" runat="server" Text="Label"></asp:Label>
                <asp:TextBox ID="TxtBoxEatTax" runat="server"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                
            </tr>
            
        </table>
        <center>
        <table width="100%" height="100%" >
            <tr>
               
                <td style="width: 253px">
                    &nbsp;</td>
                 <td style="width: 212px">
                <asp:Button ID="BtnReset" runat="server" Text="Reset" OnClick="BtnReset_Click" />
                <asp:Button ID="BtnUndo" runat="server" Text="Undo" OnClick="BtnUndo_Click" />
                <asp:Button ID="BtnSave" runat="server" Text="Save" OnClick="BtnSave_Click" /></td>
                <td>
                    &nbsp;</td>
            </tr>
            
          
        </table>
        </center>
        
        
        </asp:Panel>
        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
        </asp:Repeater>
        
        
        
        
        
        <asp:Panel ID="PanelInfoModify" runat="server" Height="50px" Width="125px" OnLoad="PanelInfoModify_Load">
        </asp:Panel>
    </div>     
    </form>
</body>
</html>

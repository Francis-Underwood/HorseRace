<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_SG.aspx.cs" Inherits="_Default_SG" %>

<%@ Register Src="ASCX/MyRace.ascx" TagName="MyRace" TagPrefix="Race" %>
<%@ Register Src="~/ASCX/Head.ascx" TagName="Head" TagPrefix="Race" %>
<%@ Register Src="~/ASCX/Ante_bet.ascx" TagName="Ante_bet" TagPrefix="Race" %>
<%@ Register Src="~/ASCX/Antelist.ascx" TagName="Antelist" TagPrefix="Race" %>
<%@ Register Src="~/ASCX/MyAnte.ascx" TagName="MyAnte" TagPrefix="Race" %>


<%@ Register Src="~/ASCX/SCR.ascx" TagName="SCR" TagPrefix="Race" %>
<%@ Register Src="~/ASCX/MyAccount.ascx" TagName="MyAccount" TagPrefix="Race" %>
<%@ Register Src="~/ASCX/CurrentRace.ascx" TagName="CurrentRace" TagPrefix="Race" %>


<%@ Register Src="~/ASCX/Gamble_eat.ascx" TagName="Gamble_eat" TagPrefix="Race" %>
<%@ Register Src="~/ASCX/Gamblelist.ascx" TagName="Gamblelist" TagPrefix="Race" %>
<%@ Register Src="~/ASCX/MyGamble.ascx" TagName="MyGamble" TagPrefix="Race" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>赛马网站</title>

    <script language="javascript" src="Ajax/common.ashx"></script>

    <script language="javascript" src="Ajax/Namespace.PageClass,AssemblyName.ashx"></script>

    <script src="race.js" type="text/javascript"></script>

    <link href="race.css" rel="stylesheet" type="text/css" />
    
   
</head>
<body style="background:url(images/loginbg.jpg) no-repeat 0% 100%">
    <form id="form1" runat="server" >
    
        <Race:Head ID="Head1" runat="server" OnLoad="Head1_Load" />
        <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 1200px">
            <tr>
                <td valign="top" width="20%" style="height: 420px">
                
                
                    <Race:MyRace ID="MyRace1" runat="server" />
                <Race:SCR ID="SCR1" runat="server" />
                <Race:MyAccount ID="MyAccount" runat="server" />
                <Race:CurrentRace ID="CurrentRace" runat="server" />
                
                </td>
                <td valign="top" style="height: 420px; width: 24%;">
                   <iframe width="330px" height="700px" src="MyTranscation.aspx"  marginheight="0px" marginwidth="0px"></iframe>
                </td>
                <td valign="top" width="25%" style="height: 420px">
                     <table>
                        <tr><td><Race:Ante_bet ID="Ante_bet" runat="server" OnLoad="Ante_bet_Load" /></td></tr>
                        <tr><td><iframe width="280px" height="650px" src="Ante.aspx" marginheight="0px" marginwidth="0px"></iframe></td></tr>
                     </table>
                </td>
                <td valign="top" style="height: 420px; width: 24%;">
                    <table>
                        <tr><td><Race:Gamble_eat ID="Gamble_eat1" runat="server" OnLoad="Gamble_eat_Load" /></td></tr>
                        <tr><td><iframe width="280px" height="650px" src="Gamble.aspx" marginheight="0px" marginwidth="0px"></iframe></td></tr>
                        </table>
                </td>
            </tr>
        </table>
        
      <%--<asp:label  ID = "lbRate" runat="server" text="SG" Visible="false"></asp:label>--%>  
        
    </form>
</body>

</html>

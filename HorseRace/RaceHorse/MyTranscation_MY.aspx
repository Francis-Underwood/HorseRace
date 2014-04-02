<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyTranscation_MY.aspx.cs" Inherits="MyTranscation_MY" %>
<%@ Register Src="~/ASCX_MY/MyAnte.ascx" TagName="MyAnte" TagPrefix="Race" %>
<%@ Register Src="~/ASCX_MY/MyGamble.ascx" TagName="MyGamble" TagPrefix="Race" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
     <meta http-equiv="refresh" content="2" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table>
                        <tr><td><Race:MyAnte ID="MyAnte1" runat="server" OnLoad="MyAnte_Load" /></td></tr>
                        <tr><td><Race:MyGamble ID="MyGamble1" runat="server" OnLoad="MyGamble_Load" />
                            </td></tr>
             
                   </table>
    </div>
    </form>
</body>
</html>

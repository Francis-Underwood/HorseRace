﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gamble.aspx.cs" Inherits="Gamble" %>
<%@ Register Src="~/ASCX/Gamblelist.ascx" TagName="Gamblelist" TagPrefix="Race" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
     <meta http-equiv="refresh" content="2" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table><tr><td><Race:Gamblelist ID="Gamblelist1" runat="server" OnLoad="Gamblelist_Load" /></td></tr></table>
    </div>
    </form>
</body>
</html>

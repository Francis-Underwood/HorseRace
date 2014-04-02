<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Eat.aspx.cs" Inherits="Eat" %>
<%@ Register Src="~/ASCX/Eat.ascx" TagName="Eat" TagPrefix="Race" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <Race:Eat ID="eat1" runat="server" OnLoad="eat_Load" />

    </div>
    </form>
</body>
</html>

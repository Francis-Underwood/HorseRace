<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CurrentRace.ascx.cs" Inherits="ASCX_CurrentRace" %>
<%--<%@ Register TagPrefix="mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile" %>
--%>
<table>
        <tr><td align="center">
        <asp:Repeater ID="RepeaterRace" runat="server">
        <ItemTemplate>
        <table>
            <tr><td> <font color="olive"size="5"><b> <%# Eval("RaceTime")%></b></font><hr size="3" color="olive" />
          </td></tr>
           <tr><td> <marquee behavior="scroll" direction="Left" bgcolor="Maroon"><font color="olive"size="2"><b><%# Eval("Descript") %></b></font></marquee>
         </td></tr>
            <tr><td>独赢：</td></tr>
            <tr><td>马：</td></tr>
            <tr><td>位置：</td></tr>
            
            </table>
        </ItemTemplate>              
        <HeaderTemplate>
        
        <font color="olive"size="5"><b> <%# Eval("RaceTime")%></b></font><hr size="3" color="olive" />
        
       
        <%--<marquee behavior="slide" direction="Left"><%# Eval("Descript") %></marquee>--%>
      
        
        </HeaderTemplate>
       
        <FooterTemplate><font color="Green" size="5"><b> 马来西亚赔率</b></font>
        </FooterTemplate>
        </asp:Repeater>
        
        
        </td></tr>
        
    </table>
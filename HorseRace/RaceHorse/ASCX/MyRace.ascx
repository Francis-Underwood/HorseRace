<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MyRace.ascx.cs" Inherits="ASCX_MyRace" %>
<table align="center" border="1" cellpadding="3" cellspacing="0" width="99%">
   
  <tr><td>
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDataBound="Gv_RowDataBound" >
          <Columns>
              <asp:BoundField DataField="RaceTime" />
              <asp:BoundField DataField="Place" />
              <asp:BoundField DataField="Rate" />
              <asp:BoundField />
              
              <asp:TemplateField>
                  <ItemTemplate>
                     <%-- <asp:Button runat="server" Text="<%# DataBinder.Eval(Container.DateItem,"Rate") %>" />--%>
                  </ItemTemplate>
                  
              </asp:TemplateField>
          </Columns>
      </asp:GridView>
  </td></tr>
    
    
</table>


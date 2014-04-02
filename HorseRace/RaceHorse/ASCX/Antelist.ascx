<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Antelist.ascx.cs" Inherits="ASCX_Antelist" %>
<!--<%@ Register TagPrefix="mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile" %> -->
<%--<script src="~\race.js"></script>--%>
<table>
   <tr>
     <td style="background-color: #3399ff; font-weight: bold;" >
         <asp:Label ID="Label1" runat="server" Text="<%$ Resources:LabelResource1.Text %>"></asp:Label>
         </td>
   </tr>
    <tr>
        <td>
            <asp:GridView ID="GridViewAnteList" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AutoGenerateColumns="False" PageSize="40" OnRowDataBound="GridViewAnteList_RowDataBound" >
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="Gainsboro" />
                <Columns>
                    <asp:BoundField DataField="SN" HeaderText="<%$ Resources:HeaderTextResource1.Text %>" >
                        <ItemStyle HorizontalAlign="Center" Width="8%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="HorseNo" HeaderText="<%$ Resources:HeaderTextResource2.Text %>" >
                        <ItemStyle HorizontalAlign="Center" Width="12%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="HeadAmount" HeaderText="<%$ Resources:HeaderTextResource3.Text %>" >
                        <ItemStyle HorizontalAlign="Center" Width="18%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FootAmount" HeaderText="<%$ Resources:HeaderTextResource4.Text %>" >
                        <ItemStyle HorizontalAlign="Center" Width="18%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Price" HeaderText="$" >
                        <ItemStyle HorizontalAlign="Center" Width="20%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Up" HeaderText="<%$ Resources:HeaderTextResource5.Text %>" >
                        <ItemStyle HorizontalAlign="Center" Width="12%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Down" HeaderText="<%$ Resources:HeaderTextResource6.Text %>" >
                        <ItemStyle HorizontalAlign="Center" Width="12%" />
                    </asp:BoundField>
                </Columns>
                
            </asp:GridView>
        </td>
    </tr>

</table>

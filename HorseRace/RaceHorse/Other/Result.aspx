<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="Other_Result" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="../Images/bg_bknd.jpg">
    <form id="form1" runat="server">
    <div>
         <asp:GridView ID="GridViewRace" runat="server" AutoGenerateColumns="False" 
         DataKeyNames="RaceID" OnRowDeleting="GridViewRace_RowDeleting">
        <Columns><asp:BoundField DataField="racedes" HeaderText="Tote Venus"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                
               <asp:CommandField HeaderText=" " ShowDeleteButton="True" DeleteText="Show ">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:CommandField>
                </Columns>
         </asp:GridView>
         
           <table style=" left: 500px; position: absolute; top: 500;"><tr><td>
        
         
            <table>
            <tr><td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                <asp:BoundField DataField="Result" HeaderText="名次"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                <asp:BoundField DataField="HorseNo" HeaderText="马"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                 <asp:BoundField DataField="Up" HeaderText="独赢"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                  <asp:BoundField DataField="Down" HeaderText="位置"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                </Columns>
                </asp:GridView>
            </td>
            <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False">
                <Columns>
                <asp:BoundField DataField="Result" HeaderText="名次"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                <asp:BoundField DataField="HorseNo" HeaderText="马"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                 <asp:BoundField DataField="Up" HeaderText="独赢"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                  <asp:BoundField DataField="Down" HeaderText="位置"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                </Columns>
                </asp:GridView>
            </td>
            <td>
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False">
                <Columns>
                <asp:BoundField DataField="Result" HeaderText="名次"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                <asp:BoundField DataField="HorseNo" HeaderText="马"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                 <asp:BoundField DataField="Up" HeaderText="独赢"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                  <asp:BoundField DataField="Down" HeaderText="位置"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                </Columns>
                </asp:GridView>
              </td></tr>
              <tr><td>
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False">
                <Columns>
                <asp:BoundField DataField="Result" HeaderText="名次"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                <asp:BoundField DataField="HorseNo" HeaderText="马"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                 <asp:BoundField DataField="Up" HeaderText="独赢"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                  <asp:BoundField DataField="Down" HeaderText="位置"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                </Columns>
                </asp:GridView>
              </td>
              <td>
                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False">
                <Columns>
                <asp:BoundField DataField="Result" HeaderText="名次"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                <asp:BoundField DataField="HorseNo" HeaderText="马"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                 <asp:BoundField DataField="Up" HeaderText="独赢"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                  <asp:BoundField DataField="Down" HeaderText="位置"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                </Columns>
                </asp:GridView>
              </td>
              <td>
                <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False">
                <Columns>
                <asp:BoundField DataField="Result" HeaderText="名次"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                <asp:BoundField DataField="HorseNo" HeaderText="马"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                 <asp:BoundField DataField="Up" HeaderText="独赢"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                  <asp:BoundField DataField="Down" HeaderText="位置"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                </Columns>
                </asp:GridView>
              </td></tr>
              <tr><td>
                 <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False">
                <Columns>
                <asp:BoundField DataField="Result" HeaderText="名次"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                <asp:BoundField DataField="HorseNo" HeaderText="马"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                 <asp:BoundField DataField="Up" HeaderText="独赢"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                  <asp:BoundField DataField="Down" HeaderText="位置"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                </Columns>
                </asp:GridView>
              </td>
              <td>
                <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False">
                <Columns>
                <asp:BoundField DataField="Result" HeaderText="名次"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                <asp:BoundField DataField="HorseNo" HeaderText="马"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                 <asp:BoundField DataField="Up" HeaderText="独赢"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                  <asp:BoundField DataField="Down" HeaderText="位置"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                </Columns>
                
                </asp:GridView>
              </td><td></td></tr>
         
            </table>
        
        </td></tr></table>
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Reg_Default" %>
<html>
<head runat="server">
    <title>修改注册信息</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectIndexChanged" Rows="26" Visible="false">
         
        </asp:ListBox>
        <asp:GridView ID="GridViewRace" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridViewRace_RowDataBound"
         OnSelectedIndexChanged="GV_Select" DataKeyNames="RaceID" OnRowDeleting="GridViewRace_RowDeleting">
        <Columns><asp:BoundField DataField="racedes" HeaderText="Tote Venus"><ItemStyle HorizontalAlign="Center"/></asp:BoundField>
                
               <asp:CommandField HeaderText="Take a Look" ShowDeleteButton="True" DeleteText="Take a Look">
                    <ItemStyle HorizontalAlign="Center" Width="8%" />
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
        <%--    </ItemTemplate>
            </asp:Repeater>--%>
        </td></tr></table>
    </div>
    </form>
</body>
</html>
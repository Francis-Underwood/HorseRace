<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegUser.aspx.cs" Inherits="RegUser" %>

<%@ Register Src="~/ASCX/OtherHead.ascx" TagName="Head" TagPrefix="Race" %>
<%@ Register Src="~/ASCX/OtherAgentHead.ascx" TagName="OtherAgentHead" TagPrefix="Race" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>国际赛马</title>

    <script src="race.js" type="text/javascript"></script>

    <link href="race.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <Race:Head ID="Head1" runat="server" />
    <Race:OtherAgentHead ID="OtherAgentHead1" runat="server" />
    <form id="form1" runat="server">
        <div class="Content">
            <table cellspacing="1" cellpadding="0">
                <col width="160" />
                <col width="380" />
                <tr>
                    <td class="ST" colspan="2">
                        <asp:Literal ID="Literal1" runat="server" Text="我的户口" /></td>
                </tr>
                <tr>
                    <td class="FD">
                        <asp:Literal ID="Literal2" runat="server" Text="户口帐号" /></td>
                    <td>
                        <asp:TextBox CssClass="ro" ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="FD">
                        <asp:Literal ID="Literal3" runat="server" Text="会员名称" /></td>
                    <td>
                        <asp:TextBox CssClass="ro" ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="FD">
                        <asp:Literal ID="Literal4" runat="server" Text="密码" /></td>
                    <td>
                        <asp:TextBox Columns="25" CssClass="ro" ID="TextBox3" runat="server" TextMode="password"></asp:TextBox>
                        <asp:Literal ID="Literal5" runat="server" Text="(旧密码)" />
                    </td>
                </tr>
                <tr>
                    <td class="FD">
                        <asp:Literal ID="Literal6" runat="server" Text="(case sensitive alphabet)" /></td>
                    <td>
                        <asp:TextBox Columns="25" CssClass="ro" ID="TextBox4" runat="server" TextMode="password"></asp:TextBox>
                        <asp:Literal ID="Literal7" runat="server" Text="(新密码)" />
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:TextBox Columns="25" CssClass="ro" ID="TextBox5" runat="server" TextMode="password"></asp:TextBox>
                        <asp:Literal ID="Literal9" runat="server" Text="(确定新密码)" />
                    </td>
                </tr>
                <tr>
                    <td class="FD" colspan="2">
                        <asp:Literal ID="Literal8" runat="server" Text="您的密码到期了" /><b><asp:Label ID="Label1"
                            runat="server" /></b>.
                    </td>
                </tr>
                <tr>
                    <td class="ST" colspan="2">
                        <asp:Literal ID="Literal10" runat="server" Text="我的资料" /></td>
                </tr>
                <tr>
                    <td class="FD">
                        <asp:Literal ID="Literal11" runat="server" Text="姓名" /></td>
                    <td class="TX">
                        <asp:Label ID="Label2" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="FD">
                        <asp:Literal ID="Literal12" runat="server" Text="上线" /></td>
                    <td class="TX">
                        <asp:Label ID="Label3" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="FD">
                        <asp:Literal ID="Literal13" runat="server" Text="应用的钱币" /></td>
                    <td class="TX">
                        <asp:Label ID="Label4" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" height="5">
                    </td>
                </tr>
                <tr>
                    <td class="FD">
                        <asp:Literal ID="Literal14" runat="server" Text="信用额度" /></td>
                    <td>
                        <asp:TextBox Columns="20" CssClass="Num RO" ID="TextBox6" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="FD">
                        <asp:Literal ID="Literal15" runat="server" Text="下线赌注极限" /></td>
                    <td>
                        <asp:TextBox Columns="20" CssClass="Num RO" ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="FD">
                        <asp:Literal ID="Literal16" runat="server" Text="信用余额" /></td>
                    <td>
                        <asp:TextBox Columns="20" CssClass="Num RO" ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" height="5">
                    </td>
                </tr>
                <tr>
                    <td class="FD">
                        <asp:Literal ID="Literal17" runat="server" Text="下注税" /></td>
                    <td>
                        <asp:TextBox Columns="5" CssClass="Num RO" ID="TextBox9" runat="server" ReadOnly="True"></asp:TextBox> &cent;
                    </td>
                </tr>
                <tr>
                    <td class="FD">
                        <asp:Literal ID="Literal18" runat="server" Text="吃票税" /></td>
                    <td>
                        <asp:TextBox Columns="5" CssClass="Num RO" ID="TextBox10" runat="server" ReadOnly="True"></asp:TextBox> &cent;
                    </td>
                </tr>
                <tr>
                    <td colspan="2" height="5">
                    </td>
                </tr>
                <tr>
                    <td class="FD">
                        <asp:Literal ID="Literal19" runat="server" Text="我的输赢" /></td>
                    <td>
                        <asp:Label CssClass="TX" ID="Label5" runat="server" style="width:130px" />
                    </td>
                </tr>
                <tr>
                    <td class="FD">
                        <asp:Literal ID="Literal20" runat="server" Text="Line Profit / Loss" /></td>
                    <td>
                        <asp:Label CssClass="TX" ID="Label6" runat="server" style="width:130px" />
                    </td>
                </tr>
                <tr>
                    <td class="FD" style="height: 20px">
                        <asp:Literal ID="Literal21" runat="server" Text="Line Loss Limit of" /></td>
                    <td style="height: 20px">
                        <asp:TextBox Columns="20" CssClass="Num RO" ID="TextBox11" runat="server" ReadOnly="True"></asp:TextBox>  will disable your entire line from transacting
                    </td>
                </tr>
                <tr>
                    <td class="FD" style="height: 20px">
                        <asp:Literal ID="Literal22" runat="server" Text="Horse Ticket Limit" /></td>
                    <td style="height: 20px">
                        <asp:TextBox Columns="10" CssClass="Num RO" ID="TextBox12" runat="server" ReadOnly="True"></asp:TextBox> (max bet & max eat per horse for each race)
                    </td>
                </tr>
                <tr>
                    <td colspan="2" height="20">
                    </td>
                </tr>
                <tr>
                    <th class="DN" colspan="2">
                        <asp:Button CssClass="btn" ID="Button2" runat="server" Text="取消" />
                        <asp:Button CssClass="btn" ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" />
                    </th>
                </tr>
            </table>
        </div>
        <asp:TextBox ID="TextBox13" runat="server" Visible="false" ReadOnly="True"></asp:TextBox>
        <asp:CompareValidator
            ID="CompareValidator1" runat="server" ErrorMessage="密码不匹配" ControlToCompare="TextBox4" ControlToValidate="TextBox5" Display="None"></asp:CompareValidator>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="密码不正确" ControlToValidate="TextBox3" Display="None" ValueToCompare="TextBox13"></asp:CompareValidator>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" Visible="False" />
    </form>
    
</body>
</html>

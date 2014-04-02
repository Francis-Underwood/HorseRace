<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default"
    Culture="auto" meta:resourcekey="PageResource1" UICulture="auto" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>国际赛马</title>
    <link href="race.css" rel="stylesheet" type="text/css" />

    <script src="race.js" type="text/javascript"></script>

</head>
<body>
    <form runat="server">
        <table cellspacing="0" cellpadding="0" border="0" width="100%" height="59">
            <tr>
                <td height="59" width="220" rowspan="2">
                    <img src="images/logo.jpg"></td>
                <th style="height: 23px" background="images/bg_logo.jpg">
                    &nbsp;</th>
            </tr>
            <tr>
                <td bgcolor="#bb0000" background="images/bg_menu.jpg" height="36">
                    <div id="Title" class="Title">
                        <asp:Literal ID="Literal" runat="server" Text="规则和条例"></asp:Literal></div>
                </td>
            </tr>
        </table>
        <div class="Content" style="width:100%">
            <center class="DN" style="margin-bottom: 4px">
                <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Style="width: 200px"
                    Text="同意" />&nbsp;
                <asp:Button ID="button2" runat="server" Style="width: 200px" Text="不同意" />
            </center>
            <div id="content1" style="width: 100%; height: 550px; padding: 5px 30px 5px 30px;
                overflow-y: scroll" runat="server">
                <asp:Label CssClass="FT" ID="Label1" runat="server" Text="一般规则" /><br />
                <blockquote>
                    <asp:Label ID="Label2" runat="server" Text="1.所有用户必须至少十八岁，深圳赛马 对使用我们网站的任何用户触犯的国家法律、联邦法律或国际法律不负有责任。" /><br />
                    <asp:Label ID="Label3" runat="server" Text="2.用户必须为自己的行为负责，遵守所在国的法律，无论是否牵涉到任何州的法律或法律问题。所有代理員要为他们各自成员的帐户负责，并兑现他们所有的賭注。" /><br />
                    <asp:Label ID="Label4" runat="server" Text="3.代理員不是 深圳赛马 的伙伴。 深圳赛马 不对用户和代理員之间的任何争执负责。" /><br />
                    <asp:Label ID="Label5" runat="server" Text="4.如果您的用户识别号和密码丢失或减弱，请立刻通知您的代理員。代理員在接到通知后將終止用户户口。" /><br />
                    <asp:Label ID="Label6" runat="server" Text="5.用户负有责任守卫他/她的用户识别号和密码。如果他/她的用户识别号和密码丢失或被盗用，用户因该立刻通知他/她的代理。代理接到通知后将更改用户的(用户识别号/密码)。密码被盗用的情形下，用户应为他们自己的帐户和通过他们的帐户进行的交易负责。" /><br />
                    <asp:Label ID="Label7" runat="server" Text="6.深圳赛马 不与任何赛马公会 ,政府部门、私人公司、委员会、协会或组织发生关联。" />
                </blockquote>
                <asp:Label CssClass="FT" ID="Label8" runat="server" Text="游戏规则" /><br />
                <blockquote>
                    <asp:Label ID="Label9" runat="server" Text="1.深圳赛马 对任何事务的决定將是最终，不会接受任何公文往来。" /><br />
                    <asp:Label ID="Label10" runat="server" Text="2.喏有任何赌注争执案件，深圳赛马 的管理和用户同意，深圳赛马 事务处理日志数据库將担当最后的裁决者。如有任何争执，用户必须在事件發生當天内通知 深圳赛马， 在當天之后要求不会被接受。" /><br />
                    <asp:Label ID="Label11" runat="server" Text="3.用户比須确保他们所有賭注出价的准确性，一擔賭注被接受就无法更改。" /></blockquote>
                <asp:Label CssClass="FT" ID="Label12" runat="server" Text="雙马进入第一" />
                <blockquote>
                    <asp:Label ID="Label13" runat="server" Text="當雙马进入第一所有赔率將跟据马会的支出赔率－不超过您所要求的极限" /></blockquote>
                <asp:Label CssClass="FT" ID="Label14" runat="server" Text="雙马进入第一" />
                <blockquote>
                    <asp:Label ID="Label15" runat="server" Text="當雙马进入第三所有赔率將跟据马会的支出赔率－不超过您所要求的极限" />
                </blockquote>
                <asp:Label CssClass="FT" ID="Label16" runat="server" Text="赔率规则" />
                <blockquote>
                    <asp:Label ID="Label17" runat="server" Text="如果马会位置的支出赔率多过的支出赔率－ 深圳赛马 位置的支出赔率不会超过獨贏的支出赔率" /></blockquote>
                <asp:Label CssClass="FT" ID="Label18" runat="server" Text="少于九匹跑马－馬賽规则" />
                <blockquote>
                    <asp:Label ID="Label19" runat="server" Text="所有赔率將跟据马会的支出赔率－不超过您所要求的极限" /></blockquote>
                <asp:Label CssClass="FT" ID="Label20" runat="server" Text="退出马" />
                <blockquote>
                    <asp:Label ID="Label21" runat="server" Text="在退出马 的情形下(SCR) ，所有交易将取消。" /></blockquote>
                <asp:Label CssClass="FT" ID="Label22" runat="server" Text="香港赛事 - 退出马替换" />
                <blockquote>
                    <asp:Label ID="Label23" runat="server" Text="在退出马替换情形下，所有早票的交易更将保留。当您做香港赛事早票交易时请小心。" /></blockquote>
                <asp:Label CssClass="FT" ID="Label24" runat="server" Text="免责" />
                <blockquote>
                    <asp:Label ID="Label25" runat="server" Text="1.深圳赛马 不对馬賽取消造成的任何性质的损失负责，包括由于任何原因失去参加下注机会而造成的损失。" /><br />
                    <asp:Label ID="Label26" runat="server" Text="2.在不失公平的情况下，深圳赛马 不对在不可抗拒的事件中的任何人负责，或由于 深圳赛马 中央电脑系统或记录的故障、损害或损毁，或由于远程通信系统或其他任何数据通信系统的故障而造成的延迟、遗失、错误或遗漏，或由于某一笔下注未被收到而造成的延迟负责。" /><br />
                    <asp:Label ID="Label27" runat="server" Text="3.深圳赛马 也不对由于以下任何原因造成的损失而负责：不可抗力，敌对行动，暴乱，国内动荡，恐怖主义袭击，政府或当局的行为（包括拒绝或收回牌照或准证），火灾爆炸，洪水，偷窃，恶意损害，罢工，停工，以及任何形式的劳工行动。" /><br />
                    <asp:Label ID="Label28" runat="server" Text="4.除了规则和条例中特别注明的条款，合同各方不得要求或试图要求另一方履行任何义务。" /><br />
                    <asp:Label ID="Label29" runat="server" Text="5.深圳赛马 保留不时修改这些规则和条例的权利，并且可以修改其中任何部分而不用提前通知。" /><br />
                    <asp:Label ID="Label30" runat="server" Text="6.如果这些规则和条例的英文版本和其他语言版本有不一致之处，以英文版本为准，是正确和有效的。" /></blockquote>
            </div>
        </div>
    </form>
</body>
</html>

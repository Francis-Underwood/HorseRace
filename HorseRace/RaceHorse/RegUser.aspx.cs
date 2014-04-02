using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using Race.LogicLayer;
public partial class RegUser : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button2.Attributes.Add("onclick", "document.forms[0].reset();return false;");
        DataBind();
    }
    public void DataBind()
    {
        string sUserID=Session["UserID"].ToString();
        DataTable dt = RegUser.GetUserInfoByUserID(sUserID).Tables[0];
        TextBox1.Text = dt.Rows[0]["UserNumber"].ToString();
        TextBox2.Text = dt.Rows[0]["UserName"].ToString();
        Label2.Text = dt.Rows[0]["UserName"].ToString();
        Label3.Text = dt.Rows[0]["shangxian"].ToString();
        Label4.Text = dt.Rows[0]["QianBi"].ToString();
        TextBox6.Text = dt.Rows[0]["Account"].ToString();
        TextBox8.Text = dt.Rows[0]["XiaXianJiXian"].ToString();
        TextBox9.Text = dt.Rows[0]["Tax1"].ToString();
        TextBox10.Text = dt.Rows[0]["Tax2"].ToString();
        TextBox6.Text = dt.Rows[0]["Account"].ToString();
        Label5.Text = dt.Rows[0]["ShuYing"].ToString();
        Label6.Text = dt.Rows[0]["LineProfit"].ToString();
        TextBox11.Text = dt.Rows[0]["LineLoss"].ToString();
        TextBox12.Text = dt.Rows[0]["HorseTicketLimit"].ToString();
        TextBox13.Text = dt.Rows[0]["UserPass"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string spwd = TextBox4.Text;
        string sUserID=Session["UserID"].ToString();
        RegUser.UpdatePwd(sUserID, spwd);
    }
}
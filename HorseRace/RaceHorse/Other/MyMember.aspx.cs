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

public partial class Other_MyMember : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sUserID = Session["UserID"].ToString();
        //LBMember.DataSource = RegUser.GetMember(sUserID);
        //LBMember.DataBind();
        if (!IsPostBack)
        {
            ListBoxDataBind(sUserID);
        }
    }
    protected void PanelInfoAdd_Load(object sender, EventArgs e)
    {
        string role=Session["Role"].ToString();
        if (role == "2")
        {
            DDListGroup2.Visible = true;
            DDListGroup3.Visible = false;
            DDListGroup4.Visible = false;
        }
        if (role == "3")
        {
            DDListGroup2.Visible = false;
            DDListGroup3.Visible = true;
            DDListGroup4.Visible = false;
        }
        if (role == "4")
        {
            DDListGroup2.Visible = false;
            DDListGroup3.Visible = false;
            DDListGroup4.Visible = true;
        }
        
    }
    protected void PanelInfoModify_Load(object sender, EventArgs e)
    {
        string role = Session["Role"].ToString();
        if (role == "2")
        {
            DDListGroup2.Visible = true;
            DDListGroup3.Visible = false;
            DDListGroup4.Visible = false;
        }
        if (role == "3")
        {
            DDListGroup2.Visible = false;
            DDListGroup3.Visible = true;
            DDListGroup4.Visible = false;
        }
        if (role == "4")
        {
            DDListGroup2.Visible = false;
            DDListGroup3.Visible = false;
            DDListGroup4.Visible = true;
        }

        
    }
    protected void LBMember_SelectedIndexChanged(object sender, EventArgs e)
    {
        PanelInfoModify.Visible = false;
        PanelInfoAdd.Visible = true;
        //Response.Write("<script> alert('" + LBMember.SelectedItem.Text + "')</script>");
        //foreach();
        PanDataBind(LBMember.SelectedValue);
    }
    protected void ListBoxDataBind(string sUserID)
    {
        LBMember.Items.Clear();
        DataTable dt = RegUser.GetMemberList(sUserID);
        if (dt != null)
        {
            if (dt.Rows.Count != 0)
            {
                for(int i=0;i<dt.Rows.Count;i++)
                {
                    LBMember.Items.Add(dt.Rows[i][0].ToString());
                }
                
            }
        }
    }
    protected void PanDataBind(string sUserName)
    {
        DataTable dt = RegUser.GetMemberInfo(sUserName);
        if (dt != null)
        {
            if (dt.Rows.Count != 0)
            {
                TxtBoxAccountNo.Text = dt.Rows[0]["UserNumber"].ToString();
                TxtBoxAccountPrefix.Text = dt.Rows[0]["LineProfit"].ToString();
                TxtBoxBalance.Text = dt.Rows[0]["LineLoss"].ToString();
                TxtBoxBetTax.Text = dt.Rows[0]["Tax1"].ToString();
                TxtBoxCreditLimit.Text = dt.Rows[0]["UserNumber"].ToString();
                TxtBoxCurrency.Text = dt.Rows[0]["UserNumber"].ToString();
                TxtBoxDownLine.Text = dt.Rows[0]["XiaXianJiXian"].ToString();
                TxtBoxEatTax.Text = dt.Rows[0]["Tax2"].ToString();
                TxtBoxFullName.Text = dt.Rows[0]["FullName"].ToString();
                TxtBoxHorseTicketL.Text = dt.Rows[0]["HorseTicketLimit"].ToString();
                TxtBoxLastLogin.Text = dt.Rows[0]["LastLogTime"].ToString();
                TxtBoxLoginID.Text = dt.Rows[0]["UserName"].ToString();
                TxtBoxLossLimit.Text = dt.Rows[0]["LineLoss"].ToString();
                TxtBoxPassword.Text = dt.Rows[0]["UserPass"].ToString();
                
            }
        }
    }
    
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        BtnReset.Visible = false;
        TxtBoxAccountNo.Text = "";
        TxtBoxAccountPrefix.Text = "";
        TxtBoxBalance.Text = "";
        TxtBoxBetTax.Text = "";
        TxtBoxCreditLimit.Text = "";
        TxtBoxCurrency.Text = "";
        TxtBoxDownLine.Text = "";
        TxtBoxEatTax.Text = "";
        TxtBoxFullName.Text = "";
        TxtBoxHorseTicketL.Text = "";
        TxtBoxLastLogin.Text = "";
        TxtBoxLoginID.Text = "";
        TxtBoxLossLimit.Text = "";
        TxtBoxPassword.Text = "";
        LBMember.Items.Add("NewPlayer");
        foreach (ListItem item in LBMember.Items)
        {
            if (item.ToString() = "NewPlayer")
            {
                item.Selected = true;
            }
            else
            {
                item.Selected = false;
            }
        }
       
    }
    protected void BtnRemove_Click(object sender, EventArgs e)
    {

    }
    protected void BtnUndo_Click(object sender, EventArgs e)
    {

    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        string sUserID = "";
        string sUserName = "";
        string sFullName = "";
        string sUserPass = "";
        string sPrefit = "";
        string sLineLoss = "";
        string sXiaXianJiXian = "";
        string sTax1 = "";
        string sTax2 = "";
        string sUserNumber = "";
        string sHorseTicketLimit = "";

        if (LBMember.SelectedValue == "NewPlayer")
        {

        }
        else
        {

        }
    }
    protected void BtnReset_Click(object sender, EventArgs e)
    {

    }
}

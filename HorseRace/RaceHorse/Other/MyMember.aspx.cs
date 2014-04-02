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
    //private string sUserID = Session["UserID"].ToString();
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
                    LBMember.Items.Add("PL:"+dt.Rows[i][0].ToString());
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
            if (item.ToString() == "NewPlayer")
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
        //foreach (ListItem item in LBMember.Items)
        //{
        //    if (item.Selected)
        //    {
        //        item.Selected = false;
        //        LBMember.Items.Remove(item);
        //    }
        //}
        if (LBMember.Items.Count > 0)
        {
            LBMember.Items.Remove(LBMember.SelectedItem);
        }

    }
    protected void BtnUndo_Click(object sender, EventArgs e)
    {

    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        //string sUserID = TxtBoxLoginID.Text;
        string sUserID = Session["UserID"].ToString();

        if (LBMember.SelectedValue == "NewPlayer")
        {
            string sUserName = TxtBoxLoginID.Text;
            string sFullName = TxtBoxFullName.Text;
            string sUserPass = TxtBoxPassword.Text;
            //string sPrefit = ;
            string sAccount = TxtBoxCreditLimit.Text;
            string sXiaXianJiXian = TxtBoxDownLine.Text;
            string sTax1 = TxtBoxBetTax.Text;
            string sTax2 = TxtBoxEatTax.Text;
            string sUserNumber = TxtBoxAccountNo.Text;
            string sHorseTicketLimit = TxtBoxHorseTicketL.Text;
            string sPermission = "";
            if (DDListGroup2.Visible)
            {
                sPermission = Exchange(DDListGroup2.SelectedValue);
            }
            if (DDListGroup3.Visible)
            {
                sPermission = Exchange(DDListGroup3.SelectedValue);
            }
            if (DDListGroup4.Visible)
            {
                sPermission = Exchange(DDListGroup4.SelectedValue);
            }

            LBMember.Items.Add(sUserName);

            RegUser.InsertUser(sUserName,sUserPass,sFullName,sAccount,sUserNumber,sPermission,sUserID);
            RegUser.UpdateAccount(sUserID, sAccount);

            if (LBMember.Items.Count > 0)
            {
                LBMember.Items.Remove(LBMember.SelectedItem);
            }

            //foreach (ListItem item in LBMember.Items)
            //{
            //    if (item.ToString() == "NewPlayer")
            //    {
            //        item.Selected = false;
            //        LBMember.Items.Remove(item);
            //    }
            //}
            ///
            //string testtr = RegUser.ReturnCmdStr(sUserName,sUserPass,sFullName,sLineLoss,sXiaXianJiXian,sTax1,sTax2,sUserNumber,sHorseTicketLimit,sPermission,sUserID);
            //Response.Write(testtr);
            
        }
        else
        {
            string sUserName = LBMember.SelectedValue;
            string sFullName = TxtBoxFullName.Text;
            string sUserPass = TxtBoxPassword.Text;
            //string sPrefit = ;
            string sAccount = TxtBoxCreditLimit.Text;
            string sXiaXianJiXian = TxtBoxDownLine.Text;
            string sTax1 = TxtBoxBetTax.Text;
            string sTax2 = TxtBoxEatTax.Text;
            string sUserNumber = TxtBoxAccountNo.Text;
            string sHorseTicketLimit = TxtBoxHorseTicketL.Text;
            string sPermission = "";
            if (DDListGroup2.Visible)
            {
                sPermission = Exchange(DDListGroup2.SelectedValue);
            }
            if (DDListGroup3.Visible)
            {
                sPermission = Exchange(DDListGroup3.SelectedValue);
            }
            if (DDListGroup4.Visible)
            {
                sPermission = Exchange(DDListGroup4.SelectedValue);
            }
            RegUser.UpdateUserInfo(sUserName,sUserPass,sFullName,sAccount,sUserNumber,sPermission,sUserID);
        }
    }
    protected void BtnReset_Click(object sender, EventArgs e)
    {

    }
    protected string Exchange(string roletext)
    {
        string rolevalue = "";
        switch (roletext)
        {
            case"player":
                rolevalue = "1";
                break;
            case"agent":
                rolevalue = "2";
                break;
            case"main agent":
                rolevalue = "3";
                break;

        }
        return rolevalue;
    }
}

using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.Mobile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.MobileControls;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class ASCX_Eat : System.Web.UI.UserControl
{
    protected string sSN, sHorseNo, sHeadAmount, sFootAmount, sPrice, sUp, sDown;
    

    protected void Page_Load(object sender, EventArgs e)
    {

        sSN = Request.QueryString["SN"].ToString();
        sHorseNo = Request.QueryString["HorseNo"].ToString();
        sHeadAmount = Request.QueryString["HeadAmount"].ToString();
        sFootAmount = Request.QueryString["FootAmount"].ToString();
        sPrice = Request.QueryString["Price"].ToString();
        sUp = Request.QueryString["Up"].ToString();
        sDown = Request.QueryString["Down"].ToString();

        LtSN.Text = sSN;
        LtHorseNo.Text = sHorseNo;
        LtHeadAmount.Text = sHeadAmount;
        LtFootAmount.Text = sFootAmount;
        LtPrice.Text = sPrice;
        LtUp.Text = sUp;
        LtDown.Text = sDown;

        //TbHeadAmount.Text = "";
        //TbFootAmount.Text = "";



    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {


        // local parameter used only in the field of this function
        string loc_sMatchInfoID, loc_sHeadAmount, loc_sFootAmount, loc_sUserID;
        decimal loc_dPrice, loc_daccount, loc_dUp, loc_dDown;

        ////parameter received from User's input
        //
        loc_sHeadAmount = TbHeadAmount.Text;
        loc_sFootAmount = TbFootAmount.Text;
        ////////////////////////



        Race.LogicLayer.RaceInfo raceinfo = new Race.LogicLayer.RaceInfo();
        loc_sMatchInfoID = raceinfo.GetRaceInfoID_SG(sHorseNo, sSN);
        loc_dPrice = raceinfo.GetPrice_SG(sHorseNo, sSN);

        loc_sUserID = Session["UserID"].ToString();

        /////////////////
        Race.LogicLayer.RegUser reguser = new Race.LogicLayer.RegUser();

        loc_daccount = reguser.GetAccountByUserID(loc_sUserID);
        loc_daccount -= loc_dPrice * (int.Parse(loc_sHeadAmount) + int.Parse(loc_sFootAmount));

        ////////////////////////////////////////////////////////

        loc_dUp = decimal.Parse(sUp);
        loc_dDown = decimal.Parse(sDown);

        ////////Judging if user's account is enough

        if (loc_daccount > 0)
        {
            if (loc_daccount > loc_dUp * int.Parse(loc_sHeadAmount) + loc_dDown * int.Parse(loc_sFootAmount))
            {
                Race.LogicLayer.Gamble gamble = new Race.LogicLayer.Gamble();
                gamble.InsertGamble_SG(loc_sMatchInfoID, loc_sHeadAmount, loc_sFootAmount, loc_sUserID);
                reguser.UpdateAccount(loc_sUserID, loc_daccount);
            }
            else
            {
                Response.Write("<script>alert('您的信用余额不足！可以尝试减少下注或吃票的数目。');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('余额不足！');</script>");
        }
     
    }
}

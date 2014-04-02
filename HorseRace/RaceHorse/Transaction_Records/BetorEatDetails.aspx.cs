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

public partial class Transaction_Records_BetorEatDetails : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataBind();
        }
    }
    public void DataBind()
    {
        string sUserID = Session["UserID"].ToString();
        RepeaterUser.DataSource = RegUser.GetUseNum_UseName_QianBiByUserID(sUserID);
        RepeaterUser.DataBind();

        string sRaceID = Request.QueryString["RaceID"].ToString();
        RepeaterRace.DataSource = MyRace.GetRaceByRaceID(sRaceID);
        RepeaterRace.DataBind();

        string sType = Request.QueryString["type"].ToString();
        string sID = Request.QueryString["AnteGambleID"].ToString();
        RepeaterTransaction.DataSource = RegUser.GetTransactionDetial(sUserID,sRaceID,sType,sID);
        RepeaterTransaction.DataBind();

        if(sType=="BET")
        {
            GridViewTransaction.DataSource=RaceInfo.GetUp_Down_Price_ByAnteID(sID);
            GridViewTransaction.DataBind();
        }
        if(sType=="EAT")
        {
            GridViewTransaction.DataSource = RaceInfo.GetUp_Down_Price_ByGambleID(sID);
            GridViewTransaction.DataBind();
        }
        
    }
}

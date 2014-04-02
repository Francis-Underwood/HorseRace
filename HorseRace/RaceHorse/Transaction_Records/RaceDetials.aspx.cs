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

public partial class Transaction_Records_RaceDetials : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataBound();
        }

    }
    public void DataBound()
    {
        string sUserID = Session["UserID"].ToString();
        RepeaterUser.DataSource = RegUser.GetUseNum_UseName_QianBiByUserID(sUserID);
        RepeaterUser.DataBind();

        string sRaceID = Request.QueryString["RaceID"].ToString();
        RepeaterRace.DataSource = MyRace.GetRaceByRaceID(sRaceID);
        RepeaterRace.DataBind();

        GridViewBetEat.DataSource = RegUser.GetEatBetTotalByUserIDRaceID(sRaceID, sUserID);
        GridViewBetEat.DataBind();

        GridViewSN.DataSource = RegUser.GetSNTotalByUserIDRaceID(sRaceID, sUserID);
        GridViewSN.DataBind();

        GridViewRaceDetials.DataSource = RegUser.GetAnte_GambleByUserIDRaceID(sRaceID, sUserID);
        GridViewRaceDetials.DataBind();




        LabelToTalshuying.Text = MyRace.GetshuyingByRaceIDUserID(sRaceID, sUserID);
    }
}

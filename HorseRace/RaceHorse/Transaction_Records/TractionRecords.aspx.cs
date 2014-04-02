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

public partial class Transaction_Records_TractionRecords : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sUserID = Session["UserID"].ToString();
        RepeaterUser.DataSource = RegUser.GetUseNum_UseName_QianBiByUserID(sUserID);
        RepeaterUser.DataBind();

        GridViewCurrentRace.DataSource = RegUser.GetCurrentRaceRecordByUserID(sUserID);
        GridViewCurrentRace.DataBind();

        GridViewPostRace.DataSource = RegUser.GetPostRaceRecordByUserID(sUserID);
        GridViewPostRace.DataBind();
     
        

    }
}

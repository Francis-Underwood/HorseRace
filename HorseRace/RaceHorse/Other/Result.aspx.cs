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

public partial class Other_Result : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridViewDataBind();
    }
    public void GridViewDataBind()
    {
        GridViewRace.DataSource = MyRace.ShowRaceListTop20();
        GridViewRace.DataBind();
    }
    protected void GridViewRace_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sRaceID = GridViewRace.DataKeys[e.RowIndex].Values[0].ToString();
        GridViewDataBind(sRaceID);
    }
    public void GridViewDataBind(string sRaceID)
    {
        DataView dv_1 = RaceInfo.Test(sRaceID).Tables[0].DefaultView;
        dv_1.RowFilter = "SN=1";
        dv_1.Sort = "Result";
        GridView1.DataSource = dv_1;
        GridView1.DataBind();

        dv_1.RowFilter = "SN=2";
        GridView2.DataSource = dv_1;
        GridView2.DataBind();

        dv_1.RowFilter = "SN=3";
        GridView3.DataSource = dv_1;
        GridView3.DataBind();

        dv_1.RowFilter = "SN=4";
        GridView4.DataSource = dv_1;
        GridView4.DataBind();

        dv_1.RowFilter = "SN=5";
        GridView5.DataSource = dv_1;
        GridView5.DataBind();

        dv_1.RowFilter = "SN=6";
        GridView6.DataSource = dv_1;
        GridView6.DataBind();

        dv_1.RowFilter = "SN=7";
        GridView7.DataSource = dv_1;
        GridView7.DataBind();

        dv_1.RowFilter = "SN=8";
        GridView8.DataSource = dv_1;
        GridView8.DataBind();


    }
    
}

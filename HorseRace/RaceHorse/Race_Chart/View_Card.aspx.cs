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

public partial class Race_Chart_View_Card : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Race.LogicLayer.RaceInfo rf_SG = new Race.LogicLayer.RaceInfo();

        DataSet ds_SG = rf_SG.Get_RaceTimeofEachSN_SG();
        DataSet ds_MY = rf_SG.Get_RaceTimeofEachSN_MY();

        DataView dv_SG = ds_SG.Tables[0].DefaultView;
        DataView dv_MY = ds_MY.Tables[0].DefaultView;

        

        dv_SG.RowFilter = "HorseNo='1'";
        dv_SG.Sort = "SN";
        RepeaterSG.DataSource = dv_SG;
        RepeaterSG.DataBind();

        dv_MY.RowFilter = "HorseNo='1'";
        dv_MY.Sort = "SN";
        RepeaterMY.DataSource = dv_MY;
        RepeaterMY.DataBind();


    }
    protected void RepSG_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        //((Button)e.Item.FindControl("ButtonSG")).Attributes.Add("OnClick", "MenuGoUrl( 'Show.aspx')");
    }
    protected void RepMY_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        //((Button)e.Item.FindControl("ButtonMY")).Attributes.Add("OnClick", "MenuGoUrl( 'Show.aspx')");
    }
}

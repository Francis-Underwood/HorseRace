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

public partial class MyRace_View : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sRaceID = "8";
            
            //Request.QueryString["raceid"];
        DataTable dt = MyRace.GetRaceByRaceID(sRaceID);
        labelTitle.Text = dt.Rows[0].ItemArray[2].ToString();
        labelContent.Text = dt.Rows[0].ItemArray[0].ToString();
        labelPlace.Text = dt.Rows[0].ItemArray[3].ToString();
        labelRate.Text = dt.Rows[0][4].ToString();

        
    }
}

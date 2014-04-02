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
using System.Web.SessionState;
public partial class _Default_SG : BasePage
{
    //public static string sRate = "SG"; 
    protected void Page_Load(object sender, EventArgs e)
    {
        Ajax.Utility.RegisterTypeForAjax(typeof(_Default_SG));
    }
    [Ajax.AjaxMethod()]
    public DataSet GetCurrentTime()
    {
        return News.ShowNewsList();
    }
    protected void Head1_Load(object sender, EventArgs e)
    {

    }
    protected void Ante_bet_Load(object sender, EventArgs e)
    {

    }
    protected void Antelist_Load(object sender, EventArgs e)
    {

    }
    protected void MyAnte_Load(object sender, EventArgs e)
    {

    }
    protected void MyGamble_Load(object sender, EventArgs e)
    {

    }
    protected void Gamble_eat_Load(object sender, EventArgs e)
    {

    }
    protected void Gamblelist_Load(object sender, EventArgs e)
    {

    }

}
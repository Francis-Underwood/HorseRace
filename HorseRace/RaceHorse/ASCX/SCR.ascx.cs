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

public partial class ASCX_SCR : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Race.LogicLayer.RaceInfo ri = new Race.LogicLayer.RaceInfo();
            RepeaterSCR.DataSource = ri.GetSCR_SG().Tables[0];
            RepeaterSCR.DataBind();
        }
    }
}

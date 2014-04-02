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

public partial class Exit : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Abandon();
        //Session.Clear();
        System.Web.Security.FormsAuthentication.SignOut();
        Response.Redirect("mylogin.aspx", true);
    }
}

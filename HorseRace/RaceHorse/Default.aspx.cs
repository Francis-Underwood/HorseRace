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

public partial class Default : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        button2.Attributes.Add("onclick", "location.replace('exit.aspx');return false;");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Server.Transfer("default.aspx", false);
        Response.Redirect("default_SG.aspx");
    }
}

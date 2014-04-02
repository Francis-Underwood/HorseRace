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

public partial class BackGround_Login : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sAdminName = txtAdminName.Text.Trim();
        string sAdminPass = txtAdminPass.Text.Trim();
        int iAdminUserID = SuperUser.AdminLogin(sAdminName, sAdminPass);
        if (iAdminUserID != 0)
        {
            Session["AdminUserID"] = iAdminUserID.ToString();
            Response.Redirect("default.aspx", true);
        }
        else
        {
            labelMessage.Visible = true;
        }
    }
}

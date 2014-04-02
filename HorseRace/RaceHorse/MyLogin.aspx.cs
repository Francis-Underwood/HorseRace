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

using Race.LogicLayer;
public partial class MyLogin : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string sUserName = txtUserName.Text.Trim();
        string sPassword = txtPassword.Text.Trim();
        int iUserID = RegUser.IsLogin(sUserName, sPassword);
        if (iUserID != 0)
        {
            Session["UserID"] = iUserID.ToString();
            System.Web.Security.FormsAuthentication.RedirectFromLoginPage("HTMLPage.htm", false);

            Session["Language"] = radioLanguage.SelectedValue.Trim();
            ///
            //string sLanguage=radioLanguage.SelectedValue.ToString();
            //Request.Cookies["Culture"]["Language"] = sLanguage;
        }
        else
        {
            Response.Write("<script>\n");
            Response.Write("alert('Invalid Login ID and/or Password.'");
            Response.Write("</script>");
        }
    }
}

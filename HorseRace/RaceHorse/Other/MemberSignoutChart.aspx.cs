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

public partial class Other_MemberSignoutChart : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RepeaterDataBind();
    }
    public void RepeaterDataBind()
    {
        string sUser = Session["UserID"].ToString();
        Repeater1.DataSource = RegUser.GetUserInfo(sUser);
        Repeater1.DataBind();
    }
    public string GetState(object obj)
    {
        string state = "";
        if (Convert.IsDBNull(obj))
        {
            return state;
        }
        else
        {
            TimeSpan ts = DateTime.Now.Subtract(Convert.ToDateTime(obj));

            if (ts < TimeSpan.Zero)
            {
                state = "无效";
            }
            else
            {
                state = "有效";
            }

            return state;
        }
    }


}

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

public partial class News_View : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sNewsID = Request.QueryString["newsid"];
        DataTable dt = News.GetNewsByNewsID(sNewsID);
        labelTitle.Text = dt.Rows[0].ItemArray[0].ToString();
        labelAddTime.Text = dt.Rows[0].ItemArray[2].ToString();
        labelContent.Text = dt.Rows[0].ItemArray[1].ToString();
    }
}

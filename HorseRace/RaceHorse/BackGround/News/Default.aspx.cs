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
public partial class BackGround_News_Default : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridViewDataBind();
        }
    }
    private void GridViewDataBind()
    {
        GridView1.DataSource = News.ShowNewsList();
        GridView1.DataBind();

        //DataSet ds = News.ShowNewsList();
        //ds.Tables[0].Rows[0]["Title"];
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridViewDataBind();
    }
    protected void lnkAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("input.aspx", true);
    }
}
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

public partial class BackGround_Users_Default : BasePage
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
        string sKeyWord;
        if (Request.QueryString["keyword"] != null)
        {
            sKeyWord = Request.QueryString["keyword"];
        }
        else
        {
            sKeyWord = "";
        }
        GridView1.DataSource = RegUser.GetRegUserList(sKeyWord);
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridViewDataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sUserID = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        RegUser.DeleteRegUserByUserID(sUserID);
        GridViewDataBind();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[4].Attributes.Add("onclick", "return DeleteRegUser()");
        }
    }
}
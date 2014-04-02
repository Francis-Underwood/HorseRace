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

public partial class Other_TotalReport : BasePage
{
     
    protected void Page_Load(object sender, EventArgs e)
    {
        string sUserID = Session["UserID"].ToString();
        GridViewOnLine.DataSource = RegUser.Getaccountminusshuying(sUserID);
        GridViewOnLine.DataBind();
        GridViewOutLine.DataSource = RegUser.Getaccountminusshuying(sUserID);
        GridViewOutLine.DataBind();

    }
    protected void GridViewOnLine_RowDateBound(object sender, GridViewRowEventArgs e)
    {
        string sUserID = Session["UserID"].ToString();
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            GridView gvbet = (GridView)e.Row.FindControl("GridViewBetOnLine");
            gvbet.DataSource = RegUser.GetaccountOutLineBET(sUserID);
            gvbet.DataBind();

            GridView gveat = (GridView)e.Row.FindControl("GridViewEatOnLine");
            gveat.DataSource = RegUser.GetaccountOutLineEAT(sUserID);
            gveat.DataBind();
        }
    }
    //protected void GridViewBetOnLine_RowDateBound(object sender, GridViewRowEventArgs e)
    //{
    //    if (e.Row.RowType == DataControlRowType.DataRow)
    //    {
    //        GridView gv = (GridView)e.Row.FindControl("GridViewEatOnLine");

    //    }
    //}

    protected void GridViewOutLine_RowDateBound(object sender, GridViewRowEventArgs e)
    {
        string sUserID = Session["UserID"].ToString();
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            GridView gvbet = (GridView)e.Row.FindControl("GridViewBetOutLine");
            gvbet.DataSource = RegUser.GetaccountOutLineBET(sUserID);
            gvbet.DataBind();

            GridView gveat = (GridView)e.Row.FindControl("GridViewEatOutLine");
            gveat.DataSource = RegUser.GetaccountOutLineEAT(sUserID);
            gveat.DataBind();

        }
    }
    //protected void GridViewBetOutLine_RowDateBound(object sender, GridViewRowEventArgs e)
    //{
    //    if (e.Row.RowType == DataControlRowType.DataRow)
    //    {
    //        GridView gv = (GridView)e.Row.FindControl("GridViewEatOutLine");

    //    }
    //}
}

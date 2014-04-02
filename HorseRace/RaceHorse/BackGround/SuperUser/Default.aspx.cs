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

public partial class BackGround_SuperUser_Default : BasePage
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
        GridView1.DataSource = SuperUser.ShowSuperUserList();
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridViewDataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sSuperUserID = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        SuperUser.DeleteSuperUserBySuperUserID(sSuperUserID);
        GridViewDataBind();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[6].Attributes.Add("onclick", "return DeleteSuperUser()");
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        GridViewDataBind();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GridViewDataBind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = GridView1.Rows[e.RowIndex];
        string sSuperUserID = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        string sAdminName = ((TextBox)row.Cells[1].Controls[0]).Text;
        string sAdminPass = ((TextBox)row.Cells[2].Controls[0]).Text;
        string sIsLock = ((CheckBox)row.Cells[4].Controls[0]).Checked.ToString();
        SuperUser.UpdateSuperUserBySuperUserID(sSuperUserID, sAdminName, sAdminPass, sIsLock);
        GridView1.EditIndex = -1;
        GridViewDataBind();
    }
    protected void lnkNewSuperUser_Click(object sender, EventArgs e)
    {
        SuperUser.InsertSuperUser("username", "password");
        GridView1.EditIndex = 0;
        GridViewDataBind();
    }
}
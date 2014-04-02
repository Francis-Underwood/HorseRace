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

public partial class BackGround_RaceInfo_Default : BasePage
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
        GridView1.DataSource = RaceInfo.GetRaceInfoList();
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridViewDataBind();
    }
    protected void lnkAdd_Click(object sender, EventArgs e)
    {
        RaceInfo.InsertRaceInfo();
        GridView1.EditIndex = 0;
        GridViewDataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sRaceInfoID = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        RaceInfo.DeleteRaceInfoByRaceInfoID(sRaceInfoID);
        GridViewDataBind();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GridViewDataBind();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[8].Attributes.Add("onclick", "return DeleteRaceInfo()");
        }
        
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        GridViewDataBind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = GridView1.Rows[e.RowIndex];
        string sRaceInfoID = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        string sSN = ((TextBox)row.Cells[1].Controls[0]).Text;
        string sHorseNo = ((TextBox)row.Cells[2].Controls[0]).Text;
        string sUP = ((TextBox)row.Cells[3].Controls[0]).Text;
        string sDown = ((TextBox)row.Cells[4].Controls[0]).Text;
        string sCess = ((TextBox)row.Cells[5].Controls[0]).Text;
        string sResult = ((TextBox)row.Cells[6].Controls[0]).Text;
        string sRaceID = ((DropDownList)row.Cells[7].Controls[1]).SelectedValue;
        RaceInfo.UpdateRaceInfoByRaceInfoID(sRaceInfoID, sRaceID, sHorseNo, sUP, sDown, sCess, sResult, sSN);

        GridView1.EditIndex = -1;
        GridViewDataBind();

        UpDateAccountOfUser(sUP,sDown,sCess,sRaceInfoID,sResult);

    }
    protected void UpDateAccountOfUser(string sUp,string sDown,string sCess, string sRaceInfoID,string sResult)
    {

        //if (sResult == "1")
        //{
        //    RegUser.UpdateAccountWinHeadAndFoot(sUp, sDown, sCess, sRaceInfoID);
        //}

        //if (sResult == "2")
        //{
        //    RegUser.UpdateAccountWinHeadAndFoot(sUp, sDown, sCess, sRaceInfoID);
        //}
        //if (sResult == "3")
        //{
        //    RegUser.UpdateAccountWinHeadAndFoot(sUp, sDown, sCess, sRaceInfoID);
        //}
        //if (sResult == "SCR")
        //{
        //    RegUser.UpdateAccountWinHeadAndFoot(sUp, sDown, sCess, sRaceInfoID);
        //}
        switch  (sResult)
        {
            case "1":
                RegUser.UpdateAccountWinHeadAndFoot(sUp, sDown, sCess, sRaceInfoID);
                break;
            case "2":
                RegUser.UpdateAccountWinFootLostHead(sUp, sDown, sCess, sRaceInfoID);
                break;
            case "3":
                RegUser.UpdateAccountWinFootLostHead(sUp, sDown, sCess, sRaceInfoID);
                break;
            case "SCR":
                RegUser.UpdateAccountSCR(sUp, sDown, sCess, sRaceInfoID);
                break;
            default:
                RegUser.UpdateAccountLostFootAndHead(sUp, sDown, sCess, sRaceInfoID);
                break;
        }


    

    }

    protected void GV_Select(object sender, EventArgs e)
    {
        
    }
}

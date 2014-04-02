using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.Mobile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.MobileControls;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class ASCX_Antelist : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridViewDataBind();
    }
    private void GridViewDataBind()
    {
        Race.LogicLayer.Ante ante_RI = new Race.LogicLayer.Ante();
        GridViewAnteList.DataSource = ante_RI.ShowAnte_Race_MYInfoList();
        GridViewAnteList.DataBind();
    }
    protected void GridViewAnteList_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string sSN = e.Row.Cells[0].Text;
            string sHorseNo = e.Row.Cells[1].Text;
            string sHeadAmount = e.Row.Cells[2].Text;
            string sFootAmount = e.Row.Cells[3].Text;
            string sPrice = e.Row.Cells[4].Text;
            string sUp = e.Row.Cells[5].Text;
            string sDown = e.Row.Cells[6].Text;


            e.Row.Attributes.Add("OnClick", "javascript:window.open(\"Eat_MY.aspx?SN=" + sSN + "&HorseNo=" + sHorseNo + "&HeadAmount=" + sHeadAmount + "&FootAmount=" + sFootAmount + "&Price=" + sPrice + "&Up=" + sUp + "&Down=" + sDown + "\",\"newwin\", \" height=100, width=400, top=300,left=400, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no,status=no\")");
            //e.Row.Attributes.Add("OnClick", "Openwin(this)"); 
        }
    }

}


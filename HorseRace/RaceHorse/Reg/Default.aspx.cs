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

public partial class Reg_Default : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //ListBoxDataBind();
        GridViewDataBind();
    }
    public void GridViewDataBind()
    {
        GridViewRace.DataSource = MyRace.ShowRaceListTop20();
        GridViewRace.DataBind();
    }



    //protected void GV_Select(object sender, GridViewRowEventArgs e)
    //{
    //    string msg = e.Row.Cells[1].Text;
    //    GridViewDataBind(msg);
    //}
    protected void GridViewRace_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        //if (e.Row.RowType == DataControlRowType.DataRow)
        //{
        //    string sRace = e.Row.Cells[1].Text;



        //    e.Row.Attributes.Add("OnClick", "GridViewDataBind(sRace)");
        //    //e.Row.Attributes.Add("OnClick", "Openwin(this)"); 
        //}
    }
    //public void ListBoxDataBind()
    //{
    //    ListBox1.DataSource = MyRace.ShowRaceListTop20();
    //    ListBox1.DataTextField = "racedes";
    //    ListBox1.DataValueField = "RaceID";
    //    ListBox1.DataBind();
       

    //    //GridViewDataBind(ListBox1.SelectedValue);
    //}
    protected void GridViewRace_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sRaceID = GridViewRace.DataKeys[e.RowIndex].Values[0].ToString();
        GridViewDataBind(sRaceID);
    }

    protected void ListBox1_SelectIndexChanged(object sender, EventArgs e)
    {
        string testmsg = ListBox1.SelectedValue;
        //GridViewDataBind(ListBox1.SelectedValue);
    }
    public void GridViewDataBind(string sRaceID)
    {
        DataView dv_1 = MyRace.Test2(sRaceID).Tables[0].DefaultView;
        dv_1.RowFilter = "SN=1";
        dv_1.Sort = "Result";
        GridView1.DataSource = dv_1;
        GridView1.DataBind();

        dv_1.RowFilter = "SN=2";
        GridView2.DataSource = dv_1;
        GridView2.DataBind();

        dv_1.RowFilter = "SN=3";
        GridView3.DataSource = dv_1;
        GridView3.DataBind();

        dv_1.RowFilter = "SN=4";
        GridView4.DataSource = dv_1;
        GridView4.DataBind();

        dv_1.RowFilter = "SN=5";
        GridView5.DataSource = dv_1;
        GridView5.DataBind();

        dv_1.RowFilter = "SN=6";
        GridView6.DataSource = dv_1;
        GridView6.DataBind();

        dv_1.RowFilter = "SN=7";
        GridView7.DataSource = dv_1;
        GridView7.DataBind();

        dv_1.RowFilter = "SN=8";
        GridView8.DataSource = dv_1;
        GridView8.DataBind();

        
    }
    protected void GV_Select(object sender, EventArgs e)
    {
        GridViewRow r = GridViewRace.SelectedRow;
        string msg = r.Cells[1].Text;
        GridViewDataBind(msg);
    }
}
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

using System.Data.Common;

using Race.LogicLayer;
public partial class ASCX_MyRace : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Race.LogicLayer.Race MyRace = new Race.LogicLayer.Race();
        GridView1.DataSource = MyRace.GetRaceListByMAX();
        GridView1.DataBind();

        Button btn=new Button();
        GridView1.Controls.Add(btn);
    }
    //protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    //{
    //    //Race.LogicLayer.Race MyRace = new Race.LogicLayer.Race();
    //    //DataTable dt = MyRace.GetRaceListByIsIndex().Tables[0];
    //    //for (int i = 0; i < dt.Rows.Count; i++)
    //    //{
    //    //    if (dt.Rows[i]=="SG")
    //    //    {

    //    //    }
    //    //}
    //    //e.Item.DataItem.
    //     //string = ((DataRow)e.Item.DataItem)["Place"];

    //    //((Button)e.Item.FindControl("Button1")).Attributes.Add("OnClick", "javascript:window.open(\"Default_MY.aspx\")");

    //    //if (((DbDataRecord)e.Item.DataItem)["Place"].ToString() == "SG")
    //    //{
    //    //    ((Button)(e.Item.FindControl("Button1"))).Enabled = false;
    //    //}



    //}
    //protected void Repeater1_Command(object sender, RepeaterCommandEventArgs e)
    //{
    //    //Response.Redirect("HTMLPage.htm");
    //}
    protected void Gv_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            //e.Row.Cells[2].Attributes.Add("OnClick", "js.Window.Open('HTMLPage.htm')");

            Button btn = new Button();
            e.Row.Cells[3].Controls.Add(btn);
            btn.Text = e.Row.Cells[2].Text;
            btn.Attributes.Add("onclick", "javascript:window.open('Default_SG.aspx')");
            if (e.Row.Cells[2].Text == "MY")
            {
                //((Button)(e.Row.FindControl("Button1")).Enabled = false;
                //((Button)e.Row.Cells[2].Controls[0]).Enabled = false;
                ((Button)e.Row.Cells[3].Controls[0]).Enabled = false;
            }
        }

        

    }
    //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    Response.Redirect("HTMLPage.htm");
            
    //}
}
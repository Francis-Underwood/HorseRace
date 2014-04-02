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

public partial class ASCX_MyAnte : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridViewDataBind();
        //Response.Write(((label)Page.FindControl( "lbRate")).Text);
        //Response.Write(_Default.sRate);
    }
    private void GridViewDataBind()
    {
        
        string sUserID = Session["UserID"].ToString(); 
        Race.LogicLayer.RegUser curreguser = new Race.LogicLayer.RegUser();
        GridViewMyAnteList.DataSource = curreguser.GetAnte_MYListByUserID(sUserID);
        GridViewMyAnteList.DataBind();
    }

}

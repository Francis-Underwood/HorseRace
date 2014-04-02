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

public partial class BackGround_MyRace_Input : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            string sRaceID, sDescript, sIsIndex, sRaceTime, sPlace, sRate;
            string sAction = Request.QueryString["action"];
            if (sAction == "edit")
            {
                sRaceID = Request.QueryString["raceid"];
                sRaceTime = txtRaceTime.Text;
                sDescript = FreeTextBox1.Text;
                sPlace = txtPlace.Text;
                sRate = txtRate.Text;
                sIsIndex = checkboxIsIndex.Checked.ToString().ToLower();
                MyRace.UpdateRace(sRaceID, sDescript, sIsIndex, sRaceTime, sPlace, sRate);
            }
            else
            {
                sRaceTime = txtRaceTime.Text;
                sDescript = FreeTextBox1.Text;
                sPlace = txtPlace.Text;
                sRate = txtRate.Text;
                sIsIndex = checkboxIsIndex.Checked.ToString().ToLower();
                MyRace.InsertRace(sDescript, sIsIndex, sRaceTime, sPlace, sRate);
            }
            Response.Redirect(Request.Form["txtURL"].ToString(), true);
        }
        else
        {
            txtURL.Text = Request.UrlReferrer.ToString();
            switch (Request.QueryString["action"])
            {
                case "edit":
                    init();
                    break;
                case "delete":
                    string sRaceID = Request.QueryString["raceid"];
                    MyRace.DeleteRaceByRaceID(sRaceID);
                    Response.Redirect(Request.UrlReferrer.ToString(), true);
                    break;
                default:
                    break;
            }
        }
    }
    /// <summary>
    /// 如果为编辑状态，初始化控件文本
    /// </summary>
    private void init()
    {
        if (!String.IsNullOrEmpty(Request.QueryString["raceid"]))
        {
            string sRaceID = Request.QueryString["raceid"];
            DataRow row = MyRace.GetRaceByRaceID(sRaceID).Rows[0];
            txtRaceTime.Text = row["RaceTime"].ToString();
            checkboxIsIndex.Checked = bool.Parse(row["IsIndex"].ToString());
            FreeTextBox1.Text = row["Descript"].ToString();
            txtRate.Text = row["Rate"].ToString();
            txtPlace.Text = row["Place"].ToString();
        }
    }
}

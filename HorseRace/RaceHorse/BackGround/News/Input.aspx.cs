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
public partial class BackGround_News_Input : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            string sNewsID, sTitle, sContent, sIsIndex;
            string sAction = Request.QueryString["action"];
            if (sAction == "edit")
            {
                sNewsID = Request.QueryString["newsid"];
                sTitle = txtTitle.Text;
                sContent = FreeTextBox1.Text;
                sIsIndex = checkboxIsIndex.Checked.ToString().ToLower();
                News.UpdateNewsByNewsID(sNewsID, sTitle, sContent, sIsIndex);
            }
            else
            {
                sTitle = txtTitle.Text;
                sContent = FreeTextBox1.Text;
                sIsIndex = checkboxIsIndex.Checked.ToString().ToLower();
                News.InsertNews(sTitle, sContent, sIsIndex);
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
                    string sNewsID = Request.QueryString["newsid"];
                    News.DeleteNewsByNewsID(sNewsID);
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
        if (!String.IsNullOrEmpty(Request.QueryString["newsid"]))
        {
            string sNewsID = Request.QueryString["newsid"];
            DataRow row = News.GetNewsByNewsID(sNewsID).Rows[0];
            txtTitle.Text = row["Title"].ToString();
            checkboxIsIndex.Checked = bool.Parse(row["IsIndex"].ToString());
            FreeTextBox1.Text = row["Content"].ToString();
        }
    }
}
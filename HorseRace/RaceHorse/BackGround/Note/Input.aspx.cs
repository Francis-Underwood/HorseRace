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

public partial class BackGround_Note_Input : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            string sNoteID, sTitle, sContent, sIsIndex;
            string sAction = Request.QueryString["action"];
            if (sAction == "edit")
            {
                sNoteID = Request.QueryString["noteid"];
                sTitle = txtTitle.Text;
                sContent = FreeTextBox1.Text;
                sIsIndex = checkboxIsIndex.Checked.ToString().ToLower();
                Note.UpdateNoteByNoteID(sNoteID, sTitle, sContent, sIsIndex);
            }
            else
            {
                sTitle = txtTitle.Text;
                sContent = FreeTextBox1.Text;
                sIsIndex = checkboxIsIndex.Checked.ToString().ToLower();
                Note.InsertNote(sTitle, sContent, sIsIndex);
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
                    string sNoteID = Request.QueryString["noteid"];
                    Note.DeleteNoteByNoteID(sNoteID);
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
        if (!String.IsNullOrEmpty(Request.QueryString["noteid"]))
        {
            string sNoteID = Request.QueryString["noteid"];
            DataRow row = Note.GetNoteByNoteID(sNoteID).Rows[0];
            txtTitle.Text = row["Title"].ToString();
            checkboxIsIndex.Checked = bool.Parse(row["IsIndex"].ToString());
            FreeTextBox1.Text = row["Content"].ToString();
        }
    }
}

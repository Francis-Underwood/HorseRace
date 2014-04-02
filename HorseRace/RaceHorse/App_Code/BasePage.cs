using System;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.Security;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;

using Race.LogicLayer;
using System.Threading;
using System.Globalization;
using System.Text.RegularExpressions;
public class BasePage : System.Web.UI.Page
{
    private Gamble gamble;
    private Ante ante;   //by00zhang

    private Help help;
    private Note note;
    private News news;
    private RegUser reguser;
    private RaceInfo raceinfo;
    private SuperUser superuser;
    private RaceString racestring;
    private Race.LogicLayer.Race myrace;
    protected BasePage()
    {
        gamble = new Gamble(); 
        ante = new Ante();  //by00zhang

        help = new Help();
        note = new Note();
        news = new News();
        reguser = new RegUser();
        raceinfo = new RaceInfo();
        superuser = new SuperUser();
        racestring = new RaceString();
        myrace = new Race.LogicLayer.Race();
    }
    protected override void OnLoad(EventArgs e)
    {
        string sURL = Request.Url.ToString().ToLower();
        if (sURL.IndexOf("background") > -1 && sURL.IndexOf("background/login.aspx") == -1)
        {
            if (Session["AdminUserID"] == null)
            {
                Response.Redirect("~/background/login.aspx", true);
            }
        }
        base.OnLoad(e);
    }

    protected Gamble Gamble
    {
        get
        {
            return gamble; 
        }
    }

    protected Ante Ante
    {
        get
        {
            return ante;
        }
    }
    
    
    
    
    
    /// <summary>
    /// 初始化用户对象
    /// </summary>
    protected RegUser RegUser
    {
        get
        {
            return reguser;
        }
    }
    /// <summary>
    /// 初始化比赛详细信息对象
    /// </summary>
    protected RaceInfo RaceInfo
    {
        get
        {
            return raceinfo;
        }
    }
    /// <summary>
    /// 初始化帮助对象
    /// </summary>
    protected Help Help
    {
        get
        {
            return help;
        }
    }
    /// <summary>
    /// 初始化公告对象
    /// </summary>
    protected Note Note
    {
        get
        {
            return note;
        }
    }
    /// <summary>
    /// 初始化新闻对象
    /// </summary>
    protected News News
    {
        get
        {
            return news;
        }
    }
    /// <summary>
    /// 初始化管理员对象
    /// </summary>
    protected SuperUser SuperUser
    {
        get
        {
            return superuser;
        }
    }
    /// <summary>
    /// 初始化操作字符串对象
    /// </summary>
    protected RaceString RaceString
    {
        get
        {
            return racestring;
        }
    }
    /// <summary>
    /// 初始化比赛对象
    /// </summary>
    protected Race.LogicLayer.Race MyRace
    {
        get
        {
            return myrace;
        }
    }
    protected override void InitializeCulture()
    {
        if (Session["Language"] == null)
        {
            UICulture = "zh-cn";
            Culture = "zh-cn";
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture("zh-cn");
            Thread.CurrentThread.CurrentUICulture = new CultureInfo("zh-cn");
        }
        else
        {
            string sLanguage = Session["Language"].ToString();
            UICulture = sLanguage;
            Culture = sLanguage;
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(sLanguage);
            Thread.CurrentThread.CurrentUICulture = new CultureInfo(sLanguage);
        }
        base.InitializeCulture();
    }
}

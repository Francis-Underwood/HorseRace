<%@ Application Language="C#" %>
<%@ Import Namespace="Race.LogicLayer" %>
<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // 在应用程序启动时运行的代码

    }
    
    void Application_End(object sender, EventArgs e)
    {
        //  在应用程序关闭时运行的代码

    }
        
    void Application_Error(object sender, EventArgs e)
    { 
        // 在出现未处理的错误时运行的代码

    }

    void Session_Start(object sender, EventArgs e)
    {
        // 在新会话启动时运行的代码
    }

    void Session_End(object sender, EventArgs e)
    {
        if (Session["AdminUserID"] != null && int.Parse(Session["AdminUserID"].ToString()) != 0)
        {
            SuperUser admin = new SuperUser();
            string sSuperUserID = Session["AdminUserID"].ToString();
            admin.AdminExit(sSuperUserID);
        }
        if (Session["UserID"] != null && int.Parse(Session["UserID"].ToString()) != 0)
        {
            RegUser user = new RegUser();
            string sUserID = Session["UserID"].ToString();
            user.RegUserExit(sUserID);
        }
    }
</script>
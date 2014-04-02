using System;
using System.Data;
namespace Race.LogicLayer
{
    public class SuperUser
    {
        /// <summary>
        /// 返回管理员列表的方法
        /// </summary>
        /// <returns></returns>
        public DataSet ShowSuperUserList()
        {
            string cmdText = "SELECT SuperUserID, AdminName, AdminPass, IsLock, LoginNumber, RegTime FROM SuperUser ORDER BY SuperUserID DESC";
            return DataAccess.ReturnDataset(cmdText);
        }
        /// <summary>
        /// 根据SuperUserID删除管理员记录
        /// </summary>
        /// <param name="sSuperUserID"></param>
        public void DeleteSuperUserBySuperUserID(string sSuperUserID)
        {
            string cmdText = "DELETE FROM SuperUser WHERE SuperUserID = " + sSuperUserID;
            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 添加新的管理员记录
        /// </summary>
        /// <param name="sTitle"></param>
        /// <param name="sContent"></param>
        public void InsertSuperUser(string sAdminName, string sAdminPass)
        {
            string cmdText = "INSERT INTO SuperUser (AdminName,AdminPass,RegTime) VALUES ('" + sAdminName + "','" + sAdminPass + "',NOW())";
            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 根据SuperUserID更新管理员记录
        /// </summary>
        /// <param name="sSuperUserID"></param>
        /// <param name="sTitle"></param>
        /// <param name="sContent"></param>
        public void UpdateSuperUserBySuperUserID(string sSuperUserID, string sAdminName, string sAdminPass, string sIsLock)
        {
            string cmdText = "UPDATE SuperUser SET AdminName='" + sAdminName + "', AdminPass='" + sAdminPass + 
                "', IsLock = '" + sIsLock + "' WHERE SuperUserID=" + sSuperUserID;
            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 管理员登录，如果登录成功，将LoginNumber字段值加一
        /// </summary>
        /// <param name="sAdminName"></param>
        /// <param name="sAdminPass"></param>
        /// <returns>管理员ID</returns>
        public int AdminLogin(string sAdminName, string sAdminPass)
        {
            string cmdText = "SELECT SuperUserID FROM SuperUser WHERE AdminName = '" + sAdminName + 
                "' AND AdminPass = '" + sAdminPass + "' AND IsLock = 'false' AND IsLogin = 'false'";
            object obj = DataAccess.ExecuteScalar(cmdText);
            if (obj != null)
            {
                int iSuperUserID = int.Parse(obj.ToString());
                cmdText = "UPDATE SuperUser SET LoginNumber = LoginNumber + 1, IsLogin = 'true' WHERE SuperUserID = " + iSuperUserID;
                DataAccess.ExecuteNonQuery(cmdText);
                return iSuperUserID;
            }
            else
            {
                return 0;
            }
        }
        /// <summary>
        /// 管理员退出登录
        /// </summary>
        /// <param name="sSuperUserID"></param>
        public void AdminExit(string sSuperUserID)
        {
            string cmdText = "UPDATE SuperUser SET IsLogin = 'false' WHERE SuperUserID = " + sSuperUserID;
            DataAccess.ExecuteNonQuery(cmdText);
        }
    }
}

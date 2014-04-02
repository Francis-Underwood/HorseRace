using System;
using System.Data;
namespace Race.LogicLayer
{
    public class Help
    {
        /// <summary>
        /// 返回帮助列表的方法
        /// </summary>
        /// <returns></returns>
        public DataSet ShowHelpList()
        {
            string cmdText = "SELECT HelpID, Title, IsIndex, AddTime FROM Help ORDER BY HelpID DESC";
            return DataAccess.ReturnDataset(cmdText);
        }
        /// <summary>
        /// 根据HelpID删除帮助记录
        /// </summary>
        /// <param name="sHelpID"></param>
        public void DeleteHelpByHelpID(string sHelpID)
        {
            string cmdText = "DELETE FROM Help WHERE HelpID = " + sHelpID;
            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 根据HelpID选择帮助信息
        /// </summary>
        /// <param name="sHelpID"></param>
        /// <returns></returns>
        public DataTable GetHelpByHelpID(string sHelpID)
        {
            string cmdText = "SELECT Title, Content, AddTime, IsIndex FROM Help WHERE HelpID = " + sHelpID;
            DataTable dt = DataAccess.ReturnDataset(cmdText).Tables[0];
            if (dt.Rows.Count != 1)
            {
                throw new Exception("没有找到对应的帮助记录");
            }
            return dt;
        }
        /// <summary>
        /// 添加新的帮助记录
        /// </summary>
        /// <param name="sTitle"></param>
        /// <param name="sContent"></param>
        /// <param name="sIsIndex"></param>
        public void InsertHelp(string sTitle, string sContent, string sIsIndex)
        {
            string cmdText = "INSERT INTO Help (Title,Content,IsIndex,AddTime) VALUES ('" + sTitle + "','" + sContent + "','" + sIsIndex + "',NOW())";
            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 根据HelpID更新帮助记录
        /// </summary>
        /// <param name="sHelpID"></param>
        /// <param name="sTitle"></param>
        /// <param name="sContent"></param>
        public void UpdateHelpByHelpID(string sHelpID, string sTitle, string sContent, string sIsIndex)
        {
            string cmdText = "UPDATE Help Set Title='" + sTitle + "', Content='" + sContent + "', IsIndex = '" + sIsIndex + "' WHERE HelpID=" + sHelpID;
            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 获取在首页显示的帮助列表
        /// </summary>
        /// <returns></returns>
        public DataSet ShowHelpListByIsIndex()
        {
            string cmdText = "SELECT HelpID, Title FROM Help WHERE IsIndex = 'true'";
            return DataAccess.ReturnDataset(cmdText);
        }
    }
}

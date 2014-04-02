using System;
using System.Data;
namespace Race.LogicLayer
{
    public class News
    {
        /// <summary>
        /// 返回新闻列表的方法
        /// </summary>
        /// <returns></returns>
        public DataSet ShowNewsList()
        {
            string cmdText = "SELECT NewsID, Title, IsIndex, AddTime FROM News ORDER BY NewsID DESC";
            return DataAccess.ReturnDataset(cmdText);
        }
        /// <summary>
        /// 根据NewsID删除新闻记录
        /// </summary>
        /// <param name="sNewsID"></param>
        public void DeleteNewsByNewsID(string sNewsID)
        {
            string cmdText = "DELETE FROM News WHERE NewsID = " + sNewsID;
            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 根据NewsID选择新闻信息
        /// </summary>
        /// <param name="sNewsID"></param>
        /// <returns></returns>
        public DataTable GetNewsByNewsID(string sNewsID)
        {
            string cmdText = "SELECT Title, Content, AddTime, IsIndex FROM News WHERE NewsID = " + sNewsID;
            DataTable dt = DataAccess.ReturnDataset(cmdText).Tables[0];
            if (dt.Rows.Count != 1)
            {
                throw new Exception("没有找到对应的新闻记录");
            }
            return dt;
        }
        /// <summary>
        /// 添加新的新闻记录
        /// </summary>
        /// <param name="sTitle"></param>
        /// <param name="sContent"></param>
        /// <param name="sIsIndex"></param>
        public void InsertNews(string sTitle, string sContent, string sIsIndex)
        {
            string cmdText = "INSERT INTO News (Title,Content,IsIndex,AddTime) VALUES ('" + sTitle + "','" + sContent + "','" + sIsIndex + "',NOW())";
            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 根据NewsID更新新闻记录
        /// </summary>
        /// <param name="sNewsID"></param>
        /// <param name="sTitle"></param>
        /// <param name="sContent"></param>
        public void UpdateNewsByNewsID(string sNewsID, string sTitle, string sContent, string sIsIndex)
        {
            string cmdText = "UPDATE News Set Title='" + sTitle + "', Content='" + sContent + "', IsIndex = '" + sIsIndex + "' WHERE NewsID=" + sNewsID;
            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 获取在首页显示的新闻列表
        /// </summary>
        /// <returns></returns>
        public DataSet ShowNewsListByIsIndex()
        {
            string cmdText = "SELECT NewsID, Title FROM News WHERE IsIndex = 'true'";
            return DataAccess.ReturnDataset(cmdText);
        }
    }
}
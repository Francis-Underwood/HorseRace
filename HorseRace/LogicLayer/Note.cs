using System;
using System.Data;
namespace Race.LogicLayer
{
    public class Note
    {
        /// <summary>
        /// 返回公告列表的方法
        /// </summary>
        /// <returns></returns>
        public DataSet ShowNoteList()
        {
            string cmdText = "SELECT NoteID, Title, IsIndex, AddTime FROM Note ORDER BY NoteID DESC";
            return DataAccess.ReturnDataset(cmdText);
        }
        /// <summary>
        /// 根据NoteID删除公告记录
        /// </summary>
        /// <param name="sNoteID"></param>
        public void DeleteNoteByNoteID(string sNoteID)
        {
            string cmdText = "DELETE FROM Note WHERE NoteID = " + sNoteID;
            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 根据NoteID选择公告信息
        /// </summary>
        /// <param name="sNoteID"></param>
        /// <returns></returns>
        public DataTable GetNoteByNoteID(string sNoteID)
        {
            string cmdText = "SELECT Title, Content, AddTime, IsIndex FROM Note WHERE NoteID = " + sNoteID;
            DataTable dt = DataAccess.ReturnDataset(cmdText).Tables[0];
            if (dt.Rows.Count != 1)
            {
                throw new Exception("没有找到对应的公告记录");
            }
            return dt;
        }
        /// <summary>
        /// 添加新的公告记录
        /// </summary>
        /// <param name="sTitle"></param>
        /// <param name="sContent"></param>
        /// <param name="sIsIndex"></param>
        public void InsertNote(string sTitle, string sContent, string sIsIndex)
        {
            string cmdText = "INSERT INTO Note (Title,Content,IsIndex,AddTime) VALUES ('" + sTitle + "','" + sContent + "','" + sIsIndex + "',NOW())";
            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 根据NoteID更新公告记录
        /// </summary>
        /// <param name="sNoteID"></param>
        /// <param name="sTitle"></param>
        /// <param name="sContent"></param>
        public void UpdateNoteByNoteID(string sNoteID, string sTitle, string sContent, string sIsIndex)
        {
            string cmdText = "UPDATE Note Set Title='" + sTitle + "', Content='" + sContent + "', IsIndex = '" + sIsIndex + "' WHERE NoteID=" + sNoteID;
            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 获取在首页显示的公告列表
        /// </summary>
        /// <returns></returns>
        public DataSet ShowNoteListByIsIndex()
        {
            string cmdText = "SELECT NoteID, Title FROM Note WHERE IsIndex = 'true'";
            return DataAccess.ReturnDataset(cmdText);
        }
    }
}

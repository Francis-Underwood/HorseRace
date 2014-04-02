using System;
using System.Data;
namespace Race.LogicLayer
{
    public class Race
    {
        /// <summary>
        /// 插入比赛记录
        /// </summary>
        /// <param name="sDescript"></param>
        /// <param name="sRaceTime"></param>
        /// <param name="sIsIndex"></param>
        /// <param name="sPlace"></param>
        /// <param name="sRate"></param>
        public void InsertRace(string sDescript, string sIsIndex, string sRaceTime, string sPlace, string sRate)
        {
            string cmdText = "INSERT INTO Race (Descript, RaceTime, IsIndex, Place, Rate) VALUES ('" 
                + sDescript + "','" + sRaceTime + "','" + sIsIndex + "','" + sPlace + "','" + sRate + "')";
            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 根据RaceID删除指定的记录
        /// </summary>
        /// <param name="sRaceID"></param>
        public void DeleteRaceByRaceID(string sRaceID)
        {
            string cmdText = "DELETE FROM Race WHERE RaceID = " + sRaceID;
            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 更新Race表中的记录
        /// </summary>
        /// <param name="sRaceID"></param>
        /// <param name="sDescript"></param>
        /// <param name="sIsIndex"></param>
        /// <param name="sRaceTime"></param>
        /// <param name="sPlace"></param>
        /// <param name="sRate"></param>
        public void UpdateRace(string sRaceID, string sDescript, 
            string sIsIndex, string sRaceTime, string sPlace, string sRate)
        {
            string cmdText = "UPDATE Race SET Descript = '" + sDescript + 
                "', IsIndex = '" + sIsIndex + "', RaceTime = '" + sRaceTime + 
                "', Place = '" + sPlace + "', Rate = '" + sRate + "' WHERE RaceID = " + sRaceID;
            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 根据RaceID查找对应的Race记录
        /// </summary>
        /// <param name="sRaceID"></param>
        /// <returns></returns>
        public DataTable GetRaceByRaceID(string sRaceID)
        {
            string cmdText = "SELECT Descript, IsIndex, DATE_FORMAT(RaceTime, \"%Y-%m-%d %T\") RaceTime," +
                "Place, Rate FROM Race WHERE RaceID = " + sRaceID;
            DataTable dt = DataAccess.ReturnDataset(cmdText).Tables[0];
            if (dt.Rows.Count != 1)
            {
                throw new Exception("没有找到对应的比赛记录");
            }
            return dt;
        }
        /// <summary>
        /// 获取在首页显示的比赛列表
        /// </summary>
        /// <returns></returns>
        public DataSet GetRaceListByIsIndex()
        {
            string cmdText = "SELECT RaceID, DATE_FORMAT(RaceTime, \"%Y-%m-%d %T\") RaceTime, Place, Rate FROM Race WHERE IsIndex = 'true'";
            return DataAccess.ReturnDataset(cmdText);
        }
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public DataSet GetRaceListByMAX()
        {
            string cmdText = "SELECT RaceID, DATE_FORMAT(RaceTime, \"%Y-%m-%d %T\") RaceTime, Place, Rate FROM Race WHERE RaceID>(SELECT MAX(RaceID)-2 FROM Race)";
            return DataAccess.ReturnDataset(cmdText);
        }
        /// <summary>
        /// 获取比赛列表
        /// </summary>
        /// <returns></returns>
        public DataSet ShowRaceList()
        {
            string cmdText = "SELECT RaceID, IsIndex, DATE_FORMAT(RaceTime, \"%Y-%m-%d %T\") RaceTime, Place, Rate FROM Race ORDER BY RaceID DESC";
            return DataAccess.ReturnDataset(cmdText);
        }
        public string GetshuyingByRaceIDUserID(string sRaceID, string sUserID)
        {
            string cmdText = "SELECT SUM(shuying) FROM Record WHERE UserID=" + sUserID + " AND RaceID=" + sRaceID;
            //MySql.Data.MySqlClient.MySqlDataReader dr = DataAccess.ExecuteReader(cmdText);
            object obj = DataAccess.ExecuteScalar(cmdText);
            string tot= "";
            if (obj != null)
            {
                tot = obj.ToString();
            }
            //if (dr.Read())
            //{
            //    tot = dr.GetUInt32(0).ToString();
            //}
            return tot;
        }

        public DataSet ShowRaceListTop20()
        {
            string cmdText = "SELECT RaceID,CONCAT(Rate,'|',RaceTime, Place) AS racedes FROM Race WHERE RaceID>(SELECT MAX(RaceID)-20 FROM Race) ORDER BY RaceID DESC";
            return DataAccess.ReturnDataset(cmdText);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public DataSet GetCurrentRace_SG()
        {
            string cmdText = "SELECT * FROM Race WHERE RaceID=(SELECT MAX(RaceID) FROM Race WHERE Rate='SG')";
            return DataAccess.ReturnDataset(cmdText);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public DataSet GetCurrentRace_MY()
        {
            string cmdText = "SELECT * FROM Race WHERE RaceID=(SELECT MAX(RaceID) FROM Race WHERE Rate='MY')";
            return DataAccess.ReturnDataset(cmdText);
        }
        /// <summary>
        /// Test
        /// </summary>
        /// <param name="sRaceID"></param>
        /// <returns></returns>
        public DataSet Test2(string sRaceID)
        {
            string cmdText = "SELECT * FROM RaceInfo WHERE RaceID="+sRaceID;
            return DataAccess.ReturnDataset(cmdText);
        }
    }

}
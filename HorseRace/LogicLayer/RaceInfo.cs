using System;
using System.Data;
namespace Race.LogicLayer
{
    public class RaceInfo
    {
        /// <summary>
        /// 获取比赛详细列表
        /// </summary>
        /// <returns></returns>
        public DataSet GetRaceInfoList()
        {
            string cmdText = "SELECT RaceInfoID, HorseNo, UP, Down, RaceInfo.Cess, Result, Race.RaceID, Place, RaceInfo.RaceTime" +
                ", SN FROM RaceInfo LEFT JOIN Race ON RaceInfo.RaceID = Race.RaceID Order By 1 DESC";
            return DataAccess.ReturnDataset(cmdText);
        }
        /// <summary>
        /// 根据RaceInfoID删除对应的记录
        /// </summary>
        /// <param name="sRaceInfoID"></param>
        public void DeleteRaceInfoByRaceInfoID(string sRaceInfoID)
        {
            string cmdText = "DELETE FROM RaceInfo WHERE RaceInfoID = " + sRaceInfoID;
            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 添加新的记录
        /// </summary>
        public void InsertRaceInfo()
        {
            string cmdText = "INSERT INTO RaceInfo (Result) VALUE (0)";
            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 根据RaceInfoID更新RaceInfo表中的记录
        /// </summary>
        /// <param name="sRaceInfoID"></param>
        /// <param name="sRaceID"></param>
        /// <param name="sHorseNo"></param>
        /// <param name="sUP"></param>
        /// <param name="sDown"></param>
        /// <param name="sCess"></param>
        /// <param name="sResult"></param>
        /// <param name="sSN"></param>
        public void UpdateRaceInfoByRaceInfoID(string sRaceInfoID, string sRaceID, 
            string sHorseNo, string sUP, string sDown, string sCess, string sResult, string sSN)
        {
            string cmdText = "UPDATE RaceInfo SET RaceID = " + sRaceID +
                ", HorseNo = '" + sHorseNo +
                "', UP = " + sUP +
                ", Down = " + sDown +
                ", Cess = " + sCess +
                ", Result = '" + sResult +
                "', SN = " + sSN + 
                " WHERE RaceInfoID = " + sRaceInfoID;
            DataAccess.ExecuteNonQuery(cmdText);
        }

        /// <summary>
        /// 根据当前Race的RaceID和HorseNo、SN返回RaceInfoID
        /// </summary>
        public string  GetRaceInfoID_SG(string sHorseNo,string sSN)
        {
            string StrRaceInfoID;
            string cmdText = "SELECT RaceInfoID FROM RaceInfo WHERE HorseNo=" + sHorseNo +" and SN=" + sSN +              
                " and RaceID=(SELECT MAX(RaceID) FROM Race WHERE Rate='SG')";
            object obj = DataAccess.ExecuteScalar(cmdText);
            StrRaceInfoID = obj.ToString();
            return StrRaceInfoID;
        }
 
        public decimal GetPrice_SG(string sHorseNo, string sSN)
        {
            decimal dPrice;
            string cmdText = "SELECT Price FROM RaceInfo WHERE HorseNo=" + sHorseNo + " and SN=" + sSN +
                " and RaceID=(SELECT MAX(RaceID) FROM Race WHERE Rate='SG')";
            object obj = DataAccess.ExecuteScalar(cmdText);
            dPrice = decimal.Parse(obj.ToString());
            return dPrice;
        }
        public decimal GetUp_SG(string sHorseNo, string sSN)
        {
            decimal dUp;
            string cmdText = "SELECT Up FROM RaceInfo WHERE HorseNo=" + sHorseNo + " and SN=" + sSN +
                " and RaceID=(SELECT MAX(RaceID) FROM Race WHERE Rate='SG')";
            object obj = DataAccess.ExecuteScalar(cmdText);
            dUp = decimal.Parse(obj.ToString());
            return dUp;
        }
        public decimal GetDown_SG(string sHorseNo, string sSN)
        {
            decimal dDown;
            string cmdText = "SELECT Down FROM RaceInfo WHERE HorseNo=" + sHorseNo + " and SN=" + sSN +
                " and RaceID=(SELECT MAX(RaceID) FROM Race WHERE Rate='SG')";
            object obj = DataAccess.ExecuteScalar(cmdText);
            dDown = decimal.Parse(obj.ToString());
            return dDown;
        }


        public string GetRaceInfoID_MY(string sHorseNo, string sSN)
        {
            string StrRaceInfoID;
            string cmdText = "SELECT RaceInfoID FROM RaceInfo WHERE HorseNo=" + sHorseNo + " and SN=" + sSN +
                " and RaceID=(SELECT MAX(RaceID) FROM Race WHERE Rate='MY')";
            object obj = DataAccess.ExecuteScalar(cmdText);
            StrRaceInfoID = obj.ToString();
            return StrRaceInfoID;
        }
     
        public decimal GetPrice_MY(string sHorseNo, string sSN)
        {
            decimal dPrice;
            string cmdText = "SELECT Price FROM RaceInfo WHERE HorseNo=" + sHorseNo + " and SN=" + sSN +
                " and RaceID=(SELECT MAX(RaceID) FROM Race WHERE Rate='MY')";
            object obj = DataAccess.ExecuteScalar(cmdText);
            dPrice = decimal.Parse(obj.ToString());
            return dPrice;
        }
        public decimal GetUp_MY(string sHorseNo, string sSN)
        {
            decimal dUp;
            string cmdText = "SELECT Up FROM RaceInfo WHERE HorseNo=" + sHorseNo + " and SN=" + sSN +
                " and RaceID=(SELECT MAX(RaceID) FROM Race WHERE Rate='MY')";
            object obj = DataAccess.ExecuteScalar(cmdText);
            dUp = decimal.Parse(obj.ToString());
            return dUp;
        }
        public decimal GetDown_MY(string sHorseNo, string sSN)
        {
            decimal dDown;
            string cmdText = "SELECT Down FROM RaceInfo WHERE HorseNo=" + sHorseNo + " and SN=" + sSN +
                " and RaceID=(SELECT MAX(RaceID) FROM Race WHERE Rate='MY')";
            object obj = DataAccess.ExecuteScalar(cmdText);
            dDown = decimal.Parse(obj.ToString());
            return dDown;
        }

        /// <summary>
        // 根据RaceID获取该比赛的各场的时间
        /// </summary>
        public DataSet Get_RaceTimeofEachSN_SG()
        {
            string cmdText = "SELECT RaceTime,SN,HorseNo FROM Raceinfo WHERE RaceID=(SELECT MAX(RaceID) FROM Race WHERE Rate='SG')";
            return DataAccess.ReturnDataset(cmdText);
        }
        public DataSet Get_RaceTimeofEachSN_MY()
        {
            string cmdText = "SELECT RaceTime,SN,HorseNo FROM Raceinfo WHERE RaceID=(SELECT MAX(RaceID) FROM Race WHERE Rate='MY')";
            return DataAccess.ReturnDataset(cmdText);
        }

        //////////

        public DataTable GetResult_By_SN_SG(string sSN)
        {
            string cmdText = "select Up,Down,HorseNo,Result from RaceInfo where raceid=(select max(raceid) from race where rate='SG') and Sn="+ 
                              sSN +" and (result='1' or result='2'or result='3'or result='SCR') ORDER By Result";
            DataTable dt = DataAccess.ReturnDataset(cmdText).Tables[0];
            if (dt != null)
                return dt;
            else
                return null;
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sSN"></param>
        /// <returns></returns>
        public DataTable GetResult_By_SN_MY(string sSN)
        {
            string cmdText = "select Up,Down,HorseNo,Result from RaceInfo where raceid=(select max(raceid) from race where rate='MY') and Sn=" +
                              sSN + " and (result='1' or result='2'or result='3'or result='SCR') ORDER By Result";
            DataTable dt = DataAccess.ReturnDataset(cmdText).Tables[0];
            if (dt != null)
                return dt;
            else
                return null;
        }

        public DataSet GetUp_Down_Price_ByAnteID(string sAnteID)
        {
            string cmdText = "SELECT Up,Down,Price FROM RaceInfo WHERE RaceInfoID=(SELECT MatchInfoID FROM Ante WHERE AnteID="
                             + sAnteID + ")";
            return DataAccess.ReturnDataset(cmdText);
        }

        public DataSet GetUp_Down_Price_ByGambleID(string sGambleID)
        {
            string cmdText = "SELECT Up,Down,Price FROM RaceInfo WHERE RaceInfoID=(SELECT MatchInfoID FROM Gamble WHERE GambleID="
                             + sGambleID + ")";
            return DataAccess.ReturnDataset(cmdText);
        }

        public DataTable GetResult_By_RaceID_SN(string sRaceID,string sSN)
        {
            string cmdText = "SELECT Up,Down,HorseNo,Result FROM RaceInfo WHERE RaceID=" + sRaceID + " AND SN="
                             + sSN + " AND (Result='1' OR Result='2' OR Result='3' OR Result='SCR') ORDER BY Result";
                
                //"select Up,Down,HorseNo,Result from RaceInfo where raceid=" + sRaceID +"  and Sn=" +
                //              sSN + " and (result='1' or result='2'or result='3'or result='SCR') ORDER By Result";
            DataTable dt = DataAccess.ReturnDataset(cmdText).Tables[0];
            if (dt != null)
                return dt;
            else
                return null;
        }


        public DataSet GetSCR_SG()
        {
            string cmdText = "SELECT SN,HorseNo FROM RaceInfo WHERE Result='SCR' AND RaceID=(select max(raceid) from race where rate='SG')";
            return DataAccess.ReturnDataset(cmdText);
        }

        public DataSet GetSCR_MY()
        {
            string cmdText = "SELECT SN,HorseNo FROM RaceInfo WHERE Result='SCR' AND RaceID=(select max(raceid) from race where rate='MY')";
            return DataAccess.ReturnDataset(cmdText);
        }

        public DataSet Test(string sRaceID)
        {
            string cmdText = "SELECT Up,Down,HorseNo,SN,Result FROM RaceInfo WHERE RaceID=" + sRaceID +
                              " AND (Result='1' OR Result='2' OR Result='3' OR Result='SCR')";
            return DataAccess.ReturnDataset(cmdText);
        }

    }
}
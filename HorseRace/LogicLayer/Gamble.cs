using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

namespace Race.LogicLayer
{
    public class Gamble
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sMatchInfoID"></param>
        /// <param name="sHeadAmount"></param>
        /// <param name="sFootAmount"></param>
        /// <param name="sUserID"></param>
        public void InsertGamble_SG(string sMatchInfoID, string sHeadAmount, string sFootAmount, string sUserID)
        {
            string cmdText = "INSERT INTO Gamble (MatchInfoID,HeadAmount,FootAmount,UserID,RaceID) VALUES (" + sMatchInfoID + "," + sHeadAmount + "," + sFootAmount + "," + sUserID + ",(SELECT MAX(RaceID) FROM Race WHERE Rate='SG'))";

            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sMatchInfoID"></param>
        /// <param name="sHeadAmount"></param>
        /// <param name="sFootAmount"></param>
        /// <param name="sUserID"></param>
        public void InsertGamble_MY(string sMatchInfoID, string sHeadAmount, string sFootAmount, string sUserID)
        {
            string cmdText = "INSERT INTO Gamble (MatchInfoID,HeadAmount,FootAmount,UserID,RaceID) VALUES (" + sMatchInfoID + "," + sHeadAmount + "," + sFootAmount + "," + sUserID + ",(SELECT MAX(RaceID) FROM Race WHERE Rate='MY'))";

            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public DataSet ShowGamble_Race_SGInfoList()
        {
            string cmdText = "SELECT * FROM submited_Gamble_sg";
            return DataAccess.ReturnDataset(cmdText);
        }
        public DataSet ShowGamble_Race_MYInfoList()
        {
            string cmdText = "SELECT * FROM submited_Gamble_my";
            return DataAccess.ReturnDataset(cmdText);
        }






    }
}

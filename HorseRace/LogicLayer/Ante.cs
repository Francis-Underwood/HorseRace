using System;

using System.Data;
using System.Collections.Generic;
using System.Text;

namespace Race.LogicLayer
{
    public class Ante
    {
        public DataSet ShowAnteList()
        {
            string cmdText = "SELECT * FROM Ante";
            return DataAccess.ReturnDataset(cmdText); 
        }
        public void UpDateUserAccountByUserID( string sUserID)
        {
            //string cmdText = "UPDATE Ante SET" 
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sMatchInfoID"></param>
        /// <param name="sHeadAmount"></param>
        /// <param name="sFootAmount"></param>
        /// <param name="sUserID"></param>
        public void InsertAnte_SG(string sMatchInfoID, string sHeadAmount, string sFootAmount, string sUserID)
        {
            string cmdText = "INSERT INTO Ante (MatchInfoID,HeadAmount,FootAmount,UserID,RaceID) VALUES (" + sMatchInfoID + "," + sHeadAmount + "," + sFootAmount + "," + sUserID + ",(SELECT MAX(RaceID) FROM Race WHERE Rate='SG'))";

            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sMatchInfoID"></param>
        /// <param name="sHeadAmount"></param>
        /// <param name="sFootAmount"></param>
        /// <param name="sUserID"></param>
        public void InsertAnte_MY(string sMatchInfoID, string sHeadAmount, string sFootAmount, string sUserID)
        {
            string cmdText = "INSERT INTO Ante (MatchInfoID,HeadAmount,FootAmount,UserID,RaceID) VALUES (" + sMatchInfoID + "," + sHeadAmount + "," + sFootAmount + "," + sUserID + ",(SELECT MAX(RaceID) FROM Race WHERE Rate='MY'))";

            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public DataSet ShowAnte_Race_SGInfoList()
        {
            string cmdText = "SELECT * FROM submited_Ante_sg";
            return DataAccess.ReturnDataset(cmdText);
        }
        public DataSet ShowAnte_Race_MYInfoList()
        {
            string cmdText = "SELECT * FROM submited_Ante_my";
            return DataAccess.ReturnDataset(cmdText);
        }
    }
}

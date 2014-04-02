using System;
using System.Data;
namespace Race.LogicLayer
{
    public class RegUser
    {
        /// <summary>
        /// 用户登录方法
        /// </summary>
        /// <param name="sUserName">用户名</param>
        /// <param name="sPassword">密码</param>
        /// <returns>返回UserID</returns>
        public int IsLogin(string sUserName, string sPassword)
        {
            int result;
            string cmdText = "SELECT UserID FROM RegUser WHERE UserName = '" + sUserName + 
                "' AND UserPass = '" + sPassword + "' AND IsLogin = 'false'";
            object obj = DataAccess.ExecuteScalar(cmdText);
            if (obj != null)
            {
                result = int.Parse(obj.ToString());
                //将用户标为在线状态
                cmdText = "UPDATE RegUser SET IsLogin = 'true' WHERE UserID = " + result;
                //DataAccess.ExecuteNonQuery(cmdText);

            }
            else
            {
                result = 0;
            }
            return result;
        }
        /// <summary>
        /// 根据UserID删除用户
        /// </summary>
        /// <param name="sUserID"></param>
        public void DeleteRegUserByUserID(string sUserID)
        {
            string cmdText = "DELETE FROM RegUser WHERE UserID = " + sUserID;
            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 根据输入的关键字，返回RegUser列表
        /// </summary>
        /// <param name="sKeyWord"></param>
        /// <returns></returns>
        public DataSet GetRegUserList(string sKeyWord)
        {
            string cmdText = "SELECT * FROM RegUser WHERE UserName Like '%" + sKeyWord + "%'";
            return DataAccess.ReturnDataset(cmdText);
        }
        /// <summary>
        /// RegUser退出登录
        /// </summary>
        /// <param name="sUserID"></param>
        public void RegUserExit(string sUserID)
        {
            string cmdText = "UPDATE RegUser SET IsLoin = 'false' WHERE UserID = " + sUserID;
            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 添加新的RegUser记录
        /// </summary>
        /// <param name="sUserName"></param>
        /// <param name="sUserPass"></param>
        public void InsertRegUser(string sUserName, string sUserPass)
        {
            string cmdText = "INSERT INTO RegUser (UserNumber,UserName,UserPass,RegTime) VALUES (LEFT(UUID(),23),'" + sUserName + "','" + sUserPass + "',NOW())";
            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sUserID"></param>
        /// <returns></returns>
        public DataSet GetUserInfoByUserID(string sUserID)
        {
            string cmdText = "SELECT * FROM Reguser WHERE UserID=" + sUserID;
            return DataAccess.ReturnDataset(cmdText);
        }
        public void UpdatePwd(string sUserID,string sPwd)
        {
            string cmdText = "UPDATE Reguser SET UserPass='" + sPwd + "' WHERE UserID=" + sUserID;
            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 根据UserID获得用户的信用额度
        /// </summary>
        /// <param name="sUserID"></param>
        public decimal  GetAccountByUserID(string sUserID)
        {
            string cmdText = "SELECT Account FROM RegUser WHERE UserID = " + sUserID;
            object obj = DataAccess.ExecuteScalar(cmdText);
            decimal daccount = decimal.Parse(obj.ToString());
            return daccount;
        }
        /// <summary>
        /// 更新用户的信用额度
        /// </summary>
        /// <param name="sUserName"></param>
        /// <param name="sUserPass"></param>
        public void UpdateAccount(string sUserID,decimal daccount)
        {
            string cmdText = "UPDATE reguser SET Account=" + daccount + " WHERE UserID=" + sUserID ;
            DataAccess.ExecuteNonQuery(cmdText);
        }
        /// <summary>
        /// 根据UserID获取用户的当前赛事的赛率为“SG”的下注交易
        /// </summary>
        /// <param name="sKeyWord"></param>
        /// <returns></returns>
        public DataSet GetAnte_SGListByUserID(string sUserID)
        {
            string cmdText = "SELECT * FROM My_Ante_SG WHERE UserID=" + sUserID ;
            return DataAccess.ReturnDataset(cmdText);
        }
        /// <summary>
        /// 根据UserID获取用户的当前赛事的赛率为“MY”的下注交易
        /// </summary>
        /// <param name="sUserID"></param>
        /// <returns></returns>
        public DataSet GetAnte_MYListByUserID(string sUserID)
        {
            string cmdText = "SELECT * FROM My_Ante_MY WHERE UserID=" + sUserID;
            return DataAccess.ReturnDataset(cmdText);
        }
        /// <summary>
        /// 根据UserID获取用户的当前赛事的赛率为“SG”的吃票交易
        /// </summary>
        /// <param name="sUserID"></param>
        /// <returns></returns>
        public DataSet GetGamble_SGListByUserID(string sUserID)
        {
            string cmdText = "SELECT * FROM My_Gamble_SG WHERE UserID=" + sUserID;
            return DataAccess.ReturnDataset(cmdText);
        }
        /// <summary>
        /// 根据UserID获取用户的当前赛事的赛率为“MY”的吃票交易
        /// </summary>
        /// <param name="sUserID"></param>
        /// <returns></returns>
        public DataSet GetGamble_MYListByUserID(string sUserID)
        {
            string cmdText = "SELECT * FROM My_Gamble_MY WHERE UserID=" + sUserID;
            return DataAccess.ReturnDataset(cmdText);
        }


        /// <summary>
        /// 根据UserID返回UserNumber，UserName，QianBi
        /// </summary>
        /// <param name="sUserID"></param>
        /// <returns></returns>

        public DataSet GetUseNum_UseName_QianBiByUserID(string sUserID)
        {
            string cmdText = "SELECT UserNumber,UserName,QianBi FROM reguser WHERE UserID=" + sUserID;
            return DataAccess.ReturnDataset(cmdText);
        }
    
        /// <summary>
        /// 返回用户当前的比赛记录
        /// </summary>
        /// <param name="sUserID"></param>
        /// <returns></returns>
        public DataSet GetCurrentRaceRecordByUserID(string sUserID)
        {
            string cmdText = "SELECT SUM(Race_Record.HeadAmount)+SUM(Race_Record.FootAmount) AS" +
                             " TotalCount,Race_Record.RaceTime,Race_Record.Place,Race_Record.Rate,Race_Record.RaceID," +
                               "SUM(Record.shuying) AS Totalshuying from" +
                              " Race_Record,Record WHERE Race_Record.RaceID=Record.RaceID and Race_Record.UserID=" + sUserID +
                              " and Record.UserID=" + sUserID + " and Race_Record.RaceID>(SELECT MAX(RaceID)-2 From Race)" +
                              " GROUP BY Race_Record.RaceID";
            return DataAccess.ReturnDataset(cmdText);


        }
        /// <summary>
        /// 返回用户以前的比赛记录
        /// </summary>
        /// <param name="sUserID"></param>
        /// <returns></returns>

        public DataSet GetPostRaceRecordByUserID(string sUserID)
        {
            string cmdText = "SELECT SUM(Race_Record.HeadAmount)+SUM(Race_Record.FootAmount) AS" +
                             " TotalCount,Race_Record.RaceTime,Race_Record.Place,Race_Record.Rate,Race_Record.RaceID," +
                               "SUM(Record.shuying) AS Totalshuying from" +
                              " Race_Record,Record WHERE Race_Record.RaceID=Record.RaceID and Race_Record.UserID=" + sUserID +
                              " and Record.UserID=" + sUserID + " and Race_Record.RaceID<(SELECT MAX(RaceID)-1 From Race)" +
                              " GROUP BY Race_Record.RaceID";
            return DataAccess.ReturnDataset(cmdText);


        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sUp"></param>
        /// <param name="sDown"></param>
        /// <param name="sCess"></param>
        /// <param name="sHeadAmount"></param>
        /// <param name="sFootAmount"></param>
        /// <param name="sUserID"></param>
        public void UpdateAccountWinHeadAndFoot(string sUp, string sDown, string sCess, string sRaceInfoID)
        {
            string cmdText = "UPDATE record SET shuying= (SELECT HeadAmount*" + sUp + "+FootAmount*" + sDown + "FROM ante WHERE AnteID=Record.AnteGambleID and Ante.MatchInfoID=" +
                             sRaceInfoID + ")*(1-"+ sCess  +") WHERE Type='BET'";
                          
            DataAccess.ExecuteNonQuery(cmdText);


            cmdText = "UPDATE record SET shuying= (SELECT HeadAmount*" + sUp + "+FootAmount*" + sDown + "FROM gamble WHERE GambleID=Record.AnteGambleID and Gamble.MatchInfoID=" +
                             sRaceInfoID + ")*(1-" + sCess + ") WHERE Type='EAT'";

            DataAccess.ExecuteNonQuery(cmdText);


            cmdText = "UPDATE reguser,Record_Sum SET reguser.account=reguser.account +Record_Sum.Totalshuying WHERE Record_Sum.UserID=reguser.UserID AND Record_Sum.RaceInfoID=" + sRaceInfoID;


            DataAccess.ExecuteNonQuery(cmdText);

        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sUp"></param>
        /// <param name="sDown"></param>
        /// <param name="sCess"></param>
        /// <param name="sHeadAmount"></param>
        /// <param name="sFootAmount"></param>
        /// <param name="sUserID"></param>
        public void UpdateAccountWinFootLostHead(string sUp, string sDown, string sCess, string sRaceInfoID)
        {
            string cmdText = "UPDATE record SET shuying= (SELECT -HeadAmount*" + sUp + "+FootAmount*" + sDown + "FROM ante WHERE AnteID=Record.AnteGambleID and Ante.MatchInfoID=" +
                             sRaceInfoID + ")*(1-" + sCess + ") WHERE Type='BET'";

            DataAccess.ExecuteNonQuery(cmdText);


            cmdText = "UPDATE record SET shuying= (SELECT -HeadAmount*" + sUp + "+FootAmount*" + sDown + "FROM gamble WHERE GambleID=Record.AnteGambleID and Gamble.MatchInfoID=" +
                             sRaceInfoID + ")*(1-" + sCess + ") WHERE Type='EAT'";

            DataAccess.ExecuteNonQuery(cmdText);


            cmdText = "UPDATE reguser,Record_Sum SET reguser.account=reguser.account +Record_Sum.Totalshuying WHERE Record_Sum.UserID=reguser.UserID AND Record_Sum.RaceInfoID=" + sRaceInfoID;


            DataAccess.ExecuteNonQuery(cmdText);

        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sUp"></param>
        /// <param name="sDown"></param>
        /// <param name="sCess"></param>
        /// <param name="sHeadAmount"></param>
        /// <param name="sFootAmount"></param>
        /// <param name="sUserID"></param>
        public void UpdateAccountLostFootAndHead(string sUp, string sDown, string sCess,  string sRaceInfoID)
        {
            string cmdText = "UPDATE record SET shuying= (SELECT -HeadAmount*" + sUp + "-FootAmount*" + sDown + "FROM ante WHERE AnteID=Record.AnteGambleID and Ante.MatchInfoID=" +
                             sRaceInfoID + ")*(1-" + sCess + ") WHERE Type='BET'";

            DataAccess.ExecuteNonQuery(cmdText);


            cmdText = "UPDATE record SET shuying= (SELECT -HeadAmount*" + sUp + "-FootAmount*" + sDown + "FROM gamble WHERE GambleID=Record.AnteGambleID and Gamble.MatchInfoID=" +
                             sRaceInfoID + ")*(1-" + sCess + ") WHERE Type='EAT'";

            DataAccess.ExecuteNonQuery(cmdText);


            cmdText = "UPDATE reguser,Record_Sum SET reguser.account=reguser.account +Record_Sum.Totalshuying WHERE Record_Sum.UserID=reguser.UserID AND Record_Sum.RaceInfoID=" + sRaceInfoID;


            DataAccess.ExecuteNonQuery(cmdText);

        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sUp"></param>
        /// <param name="sDown"></param>
        /// <param name="sCess"></param>
        /// <param name="sHeadAmount"></param>
        /// <param name="sFootAmount"></param>
        /// <param name="sUserID"></param>
        public void UpdateAccountSCR(string sUp, string sDown, string sCess,string sRaceInfoID)
        {

            string cmdText = "UPDATE reguser,ante,raceinfo SET reguser.Account=reguser.Account+(SELECT Price FROM RaceInfo WHERE RaceInfoID=" +
                             sRaceInfoID + ")*(SELECT HeadAmount+FootAmount FROM Ante WHERE MatchInfoID=" + sRaceInfoID + ") reguser.UserID=Ante.UserID";

            DataAccess.ExecuteNonQuery(cmdText);

            cmdText = "UPDATE reguser,gamble,raceinfo SET reguser.Account=reguser.Account+(SELECT Price FROM RaceInfo WHERE RaceInfoID=" +
                             sRaceInfoID + ")*(SELECT HeadAmount+FootAmount FROM Gamble WHERE MatchInfoID=" + sRaceInfoID + ") reguser.UserID=Gamble.UserID";

            DataAccess.ExecuteNonQuery(cmdText);

            
        }
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public DataSet GetEatBetTotalByUserIDRaceID(string sRaceID,string sUserID)
        {
            string cmdText = "SELECT type,SUM(Total) AS Total,SUM(shuying) AS shuying,SUM(totalPrice) AS TotalPrice,SUM(shuying) AS Remain" 
                             +" FROM ante_gamble_total WHERE RaceID=" + sRaceID + " AND UserID=" + sUserID + " GROUP BY type";
            return DataAccess.ReturnDataset(cmdText);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sRaceID"></param>
        /// <param name="sUserID"></param>
        /// <returns></returns>
        public DataSet GetSNTotalByUserIDRaceID(string sRaceID, string sUserID)
        {
            string cmdText = "SELECT SN,SUM(Total) AS Total,SUM(shuying) AS shuying,SUM(totalPrice) AS TotalPrice,SUM(shuying) AS Remain" +
                              " FROM ante_gamble_total WHERE RaceID=" + sRaceID + " AND UserID=" + sUserID + " GROUP BY SN";
            return DataAccess.ReturnDataset(cmdText);
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sRaceID"></param>
        /// <param name="sUserID"></param>
        /// <returns></returns>
        public DataSet GetAnte_GambleByUserIDRaceID(string sRaceID, string sUserID)
        {
            string cmdText = "SELECT type,totalprice,shuying,RaceID,SN,HorseNo,Result,Price,Cess,HeadAmount,FootAmount,AnteID FROM record_ante_gamble_detials WHERE UserID="
                           + sUserID + " AND RaceID=" + sRaceID;
            return DataAccess.ReturnDataset(cmdText);
        }

        public DataTable GetTransactionDetial(string sUserID, string sRaceID, string sType, string sID)
        {
            string cmdText = "SELECT type,Sn,HorseNo FROM record_ante_gamble_detials WHERE UserID=" + sUserID +
                           " AND RaceID=" + sRaceID + " AND type='" + sType + "' AND AnteID=" + sID+ " GROUP BY type";
            DataTable dt = DataAccess.ReturnDataset(cmdText).Tables[0];
            //if(dt.Rows.Count != 1)
            //{
            //    throw new Exception("没有找到对应的比赛记录");
            //}
            return dt;
        }
        public DataSet Getaccountminusshuying(string sUserID)
        {
            string cmdText = "SELECT UserName,Account-shuying AS Remain FROM reguser WHERE UserID=" + sUserID;
            return DataAccess.ReturnDataset(cmdText);
        }
        public DataSet GetaccountOutLineBET(string sUserID)
        {
            string cmdText = "SELECT SUM(TotalPrice) AS Totalprice,SUM(Total) AS Totalbeteat FROM ante_gamble_total "
                           + "WHERE type='BET' AND UserID=" + sUserID;
            return DataAccess.ReturnDataset(cmdText);
        }
        public DataSet GetaccountOutLineEAT(string sUserID)
        {
            string cmdText = "SELECT SUM(TotalPrice) AS Totalprice,SUM(Total) AS Totalbeteat FROM ante_gamble_total "
                           + "WHERE type='EAT' AND UserID=" + sUserID;
            return DataAccess.ReturnDataset(cmdText);
        }


        /// <summary>
        /// 
        /// 
        /// </summary>
        /// <param name="sUserID"></param>
        /// <returns></returns>
        public DataSet GetUserInfo(string sUserID)
        {
            string cmdText = "SELECT UserName,UserNumber,QianBi,Account,PasswordTime,Tax1,Tax2,ShuYing,LastLogTime FROM reguser WHERE UserID=" + sUserID;
            return DataAccess.ReturnDataset(cmdText);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sUserID"></param>
        /// <returns></returns>
        public string GetRole(string sUserID)
        {
            string role="";
            string cmdText = "SELECT RolePermission FROM reguser WHERE UserID=" + sUserID;
            object obj = DataAccess.ExecuteScalar(cmdText);
            if (obj != null)
            {
                role = obj.ToString();
            }
            else
            {

            }
            return role;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sUserID"></param>
        /// <returns></returns>
        public DataSet GetMember(string sUserID)
        {
            string cmdText = "SELECT UserID,UserName FROM reguser WHERE Parent=" + sUserID;
            return DataAccess.ReturnDataset(cmdText);
        }

        public DataTable GetMemberInfo(string sUserName)
        {
            string cmdText = "SELECT * FROM reguser WHERE UserName='" + sUserName+"'";
            DataTable dt = DataAccess.ReturnDataset(cmdText).Tables[0];
            
                return dt;
            
        }
        public DataTable GetMemberList(string sUserID)
        {
            string cmdText = "SELECT UserName FROM reguser WHERE Parent=" + sUserID;
            DataTable dt = DataAccess.ReturnDataset(cmdText).Tables[0];
            return dt;
        }
      
    }
}
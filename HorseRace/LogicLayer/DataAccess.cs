using System;
using MySql.Data;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
namespace Race.LogicLayer
{
    public class DataAccess
    {
        private static readonly string connectionString = ConfigurationSettings.AppSettings["ConnectionString"];
        #region 返回受影响记录的行数
        public static int ExecuteNonQuery(string cmdText)
        {
            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                using (MySqlCommand cmd = new MySqlCommand())
                {
                    PrepareCommand(conn, cmd, cmdText);
                    return cmd.ExecuteNonQuery();
                }
            }
        }
        #endregion
        #region 返回MySqlDataReader类型的对象
        public static MySqlDataReader ExecuteReader(string cmdText)
        {
            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                using (MySqlCommand cmd = new MySqlCommand())
                {
                    PrepareCommand(conn, cmd, cmdText);
                    return cmd.ExecuteReader();
                }
            }
        }
        #endregion
        #region 返回结果集的第一行第一列数据
        public static object ExecuteScalar(string cmdText)
        {
            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                using (MySqlCommand cmd = new MySqlCommand())
                {
                    PrepareCommand(conn, cmd, cmdText);
                    return cmd.ExecuteScalar();
                }
            }
        }
        #endregion
        #region 返回DataSet对象
        public static DataSet ReturnDataset(string cmdText)
        {
            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                using (MySqlCommand cmd = new MySqlCommand())
                {
                    PrepareCommand(conn, cmd, cmdText);
                    using (MySqlDataAdapter da = new MySqlDataAdapter())
                    {
                        da.SelectCommand = cmd;
                        using (DataSet ds = new DataSet())
                        {
                            da.Fill(ds);
                            return ds;
                        }
                    }
                }
            }
        }
        #endregion
        #region 打开MySqlConnection，初始化MySqlCommand
        private static void PrepareCommand(MySqlConnection conn, MySqlCommand cmd, string cmdText)
        {
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            cmd.Connection = conn;
            cmd.CommandText = cmdText;
            cmd.CommandType = CommandType.Text;
        }
        #endregion
    }
}
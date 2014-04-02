using System;
using System.Collections.Generic;
using System.Text;
using System.Text.RegularExpressions;
namespace Race.LogicLayer
{
    public class RaceString
    {
        /// <summary>
        /// 验证输入的字符是否有非法字符
        /// </summary>
        /// <param name="sInputString"></param>
        /// <returns>true:没有非法字符  false:有非法字符</returns>
        protected bool ValidateString(string sInputString)
        {
            if (Regex.IsMatch(sInputString, "[<>'\"]"))
            {
                return false;
            }
            else
            {
                return true;
            }
        }
    }
}

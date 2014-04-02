﻿using System;
using System.Collections;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.Mobile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.MobileControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class ASCX_Ante_bet : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string sMatchInfoID, sHorseNo, sHeadAmount, sFootAmount, sUserID, sSN;        
        decimal dPrice, daccount,dUp,dDown;

        sSN = tbSN.Text;
        sHorseNo = tbHorseNo.Text;
        Race.LogicLayer.RaceInfo  raceinfo = new Race.LogicLayer.RaceInfo();
        sMatchInfoID = raceinfo.GetRaceInfoID_MY(sHorseNo, sSN);
        dPrice = raceinfo.GetPrice_MY(sHorseNo, sSN);
        dUp = raceinfo.GetUp_MY(sHorseNo, sSN);
        dDown = raceinfo.GetDown_MY(sHorseNo, sSN);


        sHeadAmount = tbHeadAmount.Text;
        sFootAmount = tbFootAmount.Text;
        sUserID = Session["UserID"].ToString();

        Race.LogicLayer.RegUser reguser = new Race.LogicLayer.RegUser();
        daccount = reguser.GetAccountByUserID(sUserID);
        daccount -= dPrice * (int.Parse(sHeadAmount) + int.Parse(sFootAmount));

        if (daccount > 0)
        {
            if (daccount > dUp * int.Parse(sHeadAmount) + dDown * int.Parse(sFootAmount))
            {
                Race.LogicLayer.Ante ante = new Race.LogicLayer.Ante();
                ante.InsertAnte_MY(sMatchInfoID, sHeadAmount, sFootAmount, sUserID);
                reguser.UpdateAccount(sUserID, daccount);
            }
            else
            {
                Response.Write("<script>alert('您的信用余额不足！可以尝试减少下注或吃票的数目。');</script>");
            }
        }
        else 
        {
            Response.Write("<script>alert('余额不足！');</script>");
        }

        tbSN.Text = " ";
        tbHorseNo.Text = " ";
        tbHeadAmount.Text = " ";
        tbFootAmount.Text = " ";
        //Race.LogicLayer.Race race = new Race.LogicLayer.Race();
        //race
       

    }
    protected void btnConceal_Click(object sender, EventArgs e)
    {
        tbSN.Text  = " ";
        tbHorseNo.Text  = " ";
        tbHeadAmount.Text  = " ";
        tbFootAmount.Text  = " ";

    }
}

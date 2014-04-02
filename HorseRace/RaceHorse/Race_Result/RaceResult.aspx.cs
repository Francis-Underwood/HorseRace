using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Race_Result_RaceResult : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label lb_SG = new Label();
        //lb_SG.Text = "SG Tote";
        Response.Write("<p style=\" left: 5px; position: absolute; top: 30px;\">SG Tote</p>");
        Response.Write("<table style=\" left: 5px; position: absolute; top: 50;\"><tr><td>");

        WriteTableWithResult_SG("1");
        WriteTableWithResult_SG("2");
        WriteTableWithResult_SG("3");
        WriteTableWithResult_SG("4");
        WriteTableWithResult_SG("5");
        WriteTableWithResult_SG("6");
        WriteTableWithResult_SG("7");
        WriteTableWithResult_SG("8");

        Response.Write("</tr></td></table>");


        ///////////////////////////////////////


        Response.Write("<p style=\" left: 155px; position: absolute; top: 30px;\">MY Tote</p>");
        Response.Write("<table style=\" left: 155px; position: absolute; top: 50;\"><tr><td>");

        WriteTableWithResult_MY("1");
        WriteTableWithResult_MY("2");
        WriteTableWithResult_MY("3");
        WriteTableWithResult_MY("4");
        WriteTableWithResult_MY("5");
        WriteTableWithResult_MY("6");
        WriteTableWithResult_MY("7");
        WriteTableWithResult_MY("8");

        Response.Write("</tr></td></table>");

    }

    protected void WriteTableWithResult_SG(string result_SG)
    {
        DataTable dt_SG = RaceInfo.GetResult_By_SN_SG(result_SG);
        
        if (dt_SG != null)
        {
            if (dt_SG.Rows.Count != 0)
            {
                Response.Write("<Table><tr conspan=\"4\">第" + result_SG + "场</tr><tr><td>名次</td><td>马</td><td>独赢</td><td>位置</td></tr>");
                for (int i = 0; i < dt_SG.Rows.Count; i++)
                {

                    if (dt_SG.Rows[i]["Result"].ToString() == "1")
                    {
                        Response.Write("<Tr><Td>" + dt_SG.Rows[i]["Result"].ToString() + "</Td><Td>" + dt_SG.Rows[i]["HorseNo"].ToString() + "</Td><TD>"
                                        + dt_SG.Rows[i]["Up"].ToString() + "</Td><Td>" + dt_SG.Rows[i]["Down"].ToString() + "</Td></Tr>");
                    }
                    if (dt_SG.Rows[i]["Result"].ToString() == "2")
                    {
                        Response.Write("<Tr><Td>" + dt_SG.Rows[i]["Result"].ToString() + "</Td><Td>" + dt_SG.Rows[i]["HorseNo"].ToString() + "</Td><TD>"
                                        + dt_SG.Rows[i]["Up"].ToString() + "</Td><Td>" + dt_SG.Rows[i]["Down"].ToString() + "</Td></Tr>");
                    }
                    if (dt_SG.Rows[i]["Result"].ToString() == "3")
                    {
                        Response.Write("<Tr><Td>" + dt_SG.Rows[i]["Result"].ToString() + "</Td><Td>" + dt_SG.Rows[i]["HorseNo"].ToString() + "</Td><TD>"
                                        + dt_SG.Rows[i]["Up"].ToString() + "</Td><Td>" + dt_SG.Rows[i]["Down"].ToString() + "</Td></Tr>");
                    }
                    if (dt_SG.Rows[i]["Result"].ToString() == "SCR")
                    {
                        Response.Write("<Tr><Td>" + dt_SG.Rows[i]["Result"].ToString() + "</Td><Td>" + dt_SG.Rows[i]["HorseNo"].ToString() + "</Td></Tr>");
                    }
                }

                Response.Write("</Table>");

            }
        }

    }
    protected void WriteTableWithResult_MY(string result_MY)
    {
        DataTable dt_MY = RaceInfo.GetResult_By_SN_MY(result_MY);
        if (dt_MY != null)
        {
            if (dt_MY.Rows.Count != 0)
            {
                Response.Write("<Table><tr conspan=\"4\">第" + result_MY + "场</tr><tr><td>名次</td><td>马</td><td>独赢</td><td>位置</td></tr>");
                for (int i = 0; i < dt_MY.Rows.Count; i++)
                {

                    if (dt_MY.Rows[i]["Result"].ToString() == "1")
                    {
                        Response.Write("<Tr><Td>" + dt_MY.Rows[i]["Result"].ToString() + "</Td><Td>" + dt_MY.Rows[i]["HorseNo"].ToString() + "</Td><TD>"
                                        + dt_MY.Rows[i]["Up"].ToString() + "</Td><Td>" + dt_MY.Rows[i]["Down"].ToString() + "</Td></Tr>");
                    }
                    if (dt_MY.Rows[i]["Result"].ToString() == "2")
                    {
                        Response.Write("<Tr><Td>" + dt_MY.Rows[i]["Result"].ToString() + "</Td><Td>" + dt_MY.Rows[i]["HorseNo"].ToString() + "</Td><TD>"
                                        + dt_MY.Rows[i]["Up"].ToString() + "</Td><Td>" + dt_MY.Rows[i]["Down"].ToString() + "</Td></Tr>");
                    }
                    if (dt_MY.Rows[i]["Result"].ToString() == "3")
                    {
                        Response.Write("<Tr><Td>" + dt_MY.Rows[i]["Result"].ToString() + "</Td><Td>" + dt_MY.Rows[i]["HorseNo"].ToString() + "</Td><TD>"
                                        + dt_MY.Rows[i]["Up"].ToString() + "</Td><Td>" + dt_MY.Rows[i]["Down"].ToString() + "</Td></Tr>");
                    }
                    if (dt_MY.Rows[i]["Result"].ToString() == "SCR")
                    {
                        Response.Write("<Tr><Td>" + dt_MY.Rows[i]["Result"].ToString() + "</Td><Td>" + dt_MY.Rows[i]["HorseNo"].ToString() + "</Td></Tr>");
                    }
                }

                Response.Write("</Table>");
            }
        }

    }
}

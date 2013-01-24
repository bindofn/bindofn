using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ldsoft.charge.baseinfo;

public partial class StatisticsSearch_DownInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) 
        {
            User user = new User();
            user = (User)Session["user"];
            string channelname = "";
            int ChannelType = Convert.ToInt32(Request.QueryString["ddlChannel"]);
            switch (ChannelType)
            {
                case 1:
                    channelname = user.TelecomNumber;
                    break;
                case 2:
                    channelname = user.CMNumber;
                    break;
                case 3:
                    channelname = user.UnicomNumber;
                    break;
            }
            string submitid = Request.QueryString["submitid"];
            string dstnumber = Request.QueryString["DstNumber"];
            string srcnumber = Request.QueryString["SrcNumber"];
            StatisticInfo s = new StatisticInfo();
            var report = s.GetSMSReport(submitid, dstnumber, ChannelType, channelname);
            lblContent.Text = Request.QueryString["content"];
            lblDstNumber.Text = dstnumber;
            lblSrcNumber.Text = srcnumber;
            if (report != null&&report.MsgID!=null) 
            {
                lblstatus.Text = report.Status;
                lbltime.Text = report.RecvTime.ToString();
                lblMsgID.Text = report.MsgID;
            }
        }
    }
}
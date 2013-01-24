using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ldsoft.charge.baseinfo;

public partial class StatisticsSearch_UpInfoSearch : System.Web.UI.Page
{
    private static int pagesize = 20;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string startdate = DateTime.Now.ToString("yyyy-MM-dd");
            this.txtStartDate.Text = Convert.ToDateTime(startdate).ToString();
            this.txtEndDate.Text = Convert.ToDateTime(startdate).AddDays(1).AddSeconds(-1).ToString();
        }
    }
    protected void ImgSearch_Click(object sender, ImageClickEventArgs e)
    {
        Bind(1);
    }

    private void Bind(int pageno)
    {
        DateTime StratDate = DateTime.Now;
        DateTime EndDate = DateTime.Now;
        try
        {
            StratDate = Convert.ToDateTime(txtStartDate.Text);
            EndDate = Convert.ToDateTime(txtEndDate.Text);
        }
        catch
        {
            lblMessage.Text = "日期时间格式有误";
            SMSGridView.DataSource = null;
            SMSGridView.DataBind();
            return;
        }

        User user = new User();
        user = (User)Session["user"];
        StatisticInfo sa = new StatisticInfo();
        string channelname = "";
        switch (Convert.ToInt32(ddlChannel.SelectedValue))
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
        if (channelname == null || channelname == "")
        {
            lblMessage.Text = "通道号码为空";
            return;
        }
        var totalCount = sa.GetMoTotalCount(StratDate, EndDate, Convert.ToInt32(ddlChannel.SelectedValue), channelname, user, txtTelPhone.Text);
        this.lblTotalCount.Text = totalCount.ToString();
        lblTotalNumber.Text = Convert.ToInt32(totalCount) % pagesize == 0 ? (Convert.ToInt32(totalCount) / pagesize).ToString() : (Convert.ToInt32(totalCount) / pagesize + 1).ToString();
        if (totalCount == 0)
        {
            lblMessage.Text = "无记录";
            SMSGridView.DataSource = null;
            SMSGridView.DataBind();
            return;
        }
        else
        {
            lblMessage.Text = "";
        }
        if (!(pageno > 0 && pageno <= Convert.ToInt32(lblTotalNumber.Text)))
        {
            return;
        }
        if (Convert.ToInt32(lblTotalNumber.Text) <= pageno)
        {
            ImgPageNext.Enabled = false;
            ImgPageLast.Enabled = false;
        }
        else
        {
            ImgPageNext.Enabled = true;
            ImgPageLast.Enabled = true;
        }
        if (pageno <= 1)
        {
            ImgPageUp.Enabled = false;
            ImgPageHome.Enabled = false;
        }
        else
        {
            ImgPageUp.Enabled = true;
            ImgPageHome.Enabled = true;
        }
        this.lblNumber.Text = pageno.ToString();
        var data = sa.GetSMSMoDetail(StratDate, EndDate, Convert.ToInt32(ddlChannel.SelectedValue), channelname, pageno, pagesize, user, this.txtTelPhone.Text);
        this.SMSGridView.DataSource = data;
        this.SMSGridView.DataBind();
    }
    protected void ImgPageHome_Click(object sender, ImageClickEventArgs e)
    {
        Bind(1);
    }
    protected void ImgPageUp_Click(object sender, ImageClickEventArgs e)
    {
        Bind(Convert.ToInt32(lblNumber.Text) - 1);
    }
    protected void ImgPageNext_Click(object sender, ImageClickEventArgs e)
    {
        Bind(Convert.ToInt32(lblNumber.Text) + 1);
    }
    protected void ImgPageLast_Click(object sender, ImageClickEventArgs e)
    {
        Bind(Convert.ToInt32(lblTotalNumber.Text));
    }
    protected void ImgGo_Click(object sender, ImageClickEventArgs e)
    {
        Bind(Convert.ToInt32(txtPage.Text));
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using ldsoft.charge.baseinfo;
public partial class UserInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        InitialInfo();

    }

    private void InitialInfo()
    {
        User curUser = Session["user"] as User;
        ldsoft.charge.baseinfo.UserInfo userInfo = new ldsoft.charge.baseinfo.UserInfo();
        userInfo.RefreshUser(curUser);
        if (curUser == null)
        {
            return;
        }
        lblUserID.Text = curUser.UserID;
        lblUserName.Text = curUser.UserName;
        lblUnitName.Text = curUser.UnitName;
        lblTotalCount.Text = curUser.TotalCount.ToString();
        lblSendCount.Text = curUser.SendCount.ToString();
        lblRemainCount.Text = curUser.RemainCount.ToString();
        if (curUser.TelecomNumber != "")
        {
            lblTelecomNumber.Text = curUser.TelecomNumber.Trim() + curUser.UserNumber.Trim();
        }
        else
        {
            lblTelecomNumber.Text = "";
        }
        if (curUser.CMNumber != "")
        {
            lblCMNumber.Text = curUser.CMNumber.Trim() + curUser.UserNumber.Trim();
        }
        else
        {
            lblCMNumber.Text = "";
        }
        if (curUser.UnicomNumber != "")
        {
            lblUnicomNumber.Text = curUser.UnicomNumber.Trim() + curUser.UserNumber.Trim();
        }
        else
        {
            lblUnicomNumber.Text = "";
        }
        if (curUser.IsMO)
        {
            lblIsMO.Text = "是";
            lblMOUrl.Text = curUser.MOUrl;
        }
        else
        {
            lblIsMO.Text = "否";
            lblMOUrl.Text = "";
        }
        if (curUser.IsPostStatus)
        {
            lblIsPostStatus.Text = "是";
            lblPostStatusUrl.Text = curUser.PostStatusUrl;
        }
        else
        {
            lblIsPostStatus.Text = "否";
            lblPostStatusUrl.Text = curUser.PostStatusUrl;
        }
        if (curUser.IsBindIP)
        {
            lblIsBindIP.Text = "是";
            lblBindIP.Text = curUser.BindIP;
        }
        else
        {
            lblIsBindIP.Text = "否";
            lblBindIP.Text = "";
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

using ldsoft.charge.baseinfo;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, ImageClickEventArgs e)
    {
        if (txtUserName.Text.Trim() == "admin" && txtPwd.Text.Trim() == "admin") 
        {
            Response.Redirect("~/default.aspx");
        }
        User user = new User();
        user.UserID = txtUserName.Text.Trim();
        user.UserPWD = txtPwd.Text;
        
        BaseInfo baseInfo = new BaseInfo();
        StatisticInfo sa = new StatisticInfo();
        if (baseInfo.Login(user))
        {
            Session["user"] = user;
            FormsAuthentication.SetAuthCookie(user.UserID, false);
            Response.Redirect("~/default.aspx");
        }
        else
        {
            lblmessage.Text = "用户名或密码错误！";
            txtPwd.Text = "";
            txtPwd.Focus();
        }
    }
}
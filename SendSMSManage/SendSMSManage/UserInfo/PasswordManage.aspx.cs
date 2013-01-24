using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using ldsoft.charge.baseinfo;
public partial class UserInfo_PasswordManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void ImgSumbit_Click(object sender, ImageClickEventArgs e)
    {
        if (txtNewPwd.Text != txtNewPwd1.Text)
        {
            lblErrMsg.Text = "新密码输入不一致";
        }
    }
}
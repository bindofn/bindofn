using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddressListManage_GroupInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TreeNode root = new TreeNode("通讯录群组");
        TreeNode node = new TreeNode();
        node.Text = "我的分组";
        node.Value = "1";
        root.ChildNodes.Add(node);
        this.TreeView1.Nodes.Add(root);
    }
}
<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="PasswordManage.aspx.cs" Inherits="UserInfo_PasswordManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html  xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
    <link href="/Styles/Site.css" rel="stylesheet" type="text/css" />
    <script src="/Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src="/Scripts/table.js" type="text/javascript"></script>
</head>
    <body>
    <form id="Form1" runat="server">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tbody>
    <tr>
                <td height="30" background="/images/tab_05.gif">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td width="12" height="30"><img src="/images/tab_03.gif" width="12" height="30"></td><td><table width="100%" border="0" cellspacing="0" cellpadding="0"><tbody><tr><td width="46%" valign="middle">
                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                        <tbody>
                                                            <tr>
                                                                <td width="5%">
                                                                    <div align="center">
                                                                        <img src="/images/tb.gif" width="16" height="16"></div>
                                                                </td>
                                                                <td width="95%" class="STYLE1">
                                                                    <span class="STYLE5">你当前的位置</span>：[用户信息]-[密码修改]
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td><td width="54%">
                                                </td></tr></tbody></table></td><td width="16"><img src="/images/tab_07.gif" width="16" height="30" /></td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td width="8" background="/images/tab_12.gif">
                                    &nbsp;
                                </td>
                                <td>
                                    <table>
                                        <tr>
                                            <td align="left" colspan="2" style="color:#038619; font-weight:bold;">登录密码修改</td>                                                
                                        </tr>
                                        <tr>
                                            <td align="right" width="100">旧密码:</td><td align="left"><asp:TextBox ID="txtPwd" runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td align="right" width="100">新密码:</td><td align="left"><asp:TextBox ID="txtNewPwd" runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td align="right" width="100">确认新密码:</td><td align="left"><asp:TextBox ID="txtNewPwd1" runat="server"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2" style="color:#038619; font-weight:bold;">
                                                <asp:ImageButton ID="ImgSumbit" runat="server" ImageUrl="~/images/tj.jpg" 
                                                    onclick="ImgSumbit_Click"/></td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2" style="color:Red;font-size:medium; font-weight:bold;"><asp:Label ID="lblErrMsg" runat="server" Text=""></asp:Label> </td>
                                        </tr>
                                        </table>
                                </td>
                                
                                <td width="8" background="/images/tab_15.gif">
                                    &nbsp;
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="35" background="/images/tab_19.gif">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td width="12" height="35">
                                    <img src="/images/tab_18.gif" width="12" height="35">
                                </td>
                                <td>
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tbody>
                                            <tr>
                                                <td class="STYLE4">
                                                    &nbsp;&nbsp
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td width="16">
                                    <img src="/images/tab_20.gif" width="16" height="35">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            </tbody>
       </table>
</form>            
</body>
</html>


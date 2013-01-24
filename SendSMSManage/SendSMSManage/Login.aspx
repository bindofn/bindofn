<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>连动短信平台-用户登录</title>
    <script type="text/javascript">
            if (window.parent.name == "I2") {
                window.parent.parent.parent.location.href = 'login.aspx';
            }
    </script>
    <style type="text/css">
        body
        {
            margin: 0;
            background-color: #016aa9;
        }
        .STYLE1
        {
            color: #000000;
            font-size: 12px;
        }
        .STYLE2
        {
            width: 105px;
            height: 17px;
            background-color: #292929;
            border: solid 1px #7dbad7;
            font-size: 12px;
            color: #6cd0ff;
        }
    </style>
</head>
<body>
    <form runat="server" style="height: 100%;">
    <table width="100%" style="height:100%;" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <table width="962" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td height="235" background="images/login_03.gif">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td height="53">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="394" height="53" background="images/login_05.gif">
                                        &nbsp;
                                    </td>
                                    <td width="206" background="images/login_06.gif">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="16%" height="25">
                                                    <div align="right">
                                                        <span class="STYLE1">用户</span></div>
                                                </td>
                                                <td width="57%" height="25">
                                                    <div align="center">
                                                        <asp:TextBox ID="txtUserName" Text="700001" runat="server" class="STYLE2"></asp:TextBox>
                                                    </div>
                                                </td>
                                                <td width="27%" height="25">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25">
                                                    <div align="right">
                                                        <span class="STYLE1">密码</span></div>
                                                </td>
                                                <td height="25">
                                                    <div align="center">
                                                        <asp:TextBox ID="txtPwd" value="" runat="server" class="STYLE2" TextMode="Password"></asp:TextBox>
                                                    </div>
                                                </td>
                                                <td height="25">
                                                    <div align="left">
                                                        <asp:ImageButton ID="btnLogin" runat="server" ImageUrl="images/dl.gif"  
                                                            width="49" height="18" border="0" onclick="btnLogin_Click" /></div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="362" background="images/login_07.gif">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td height="213" background="images/login_08.gif" align="center" valign="top">
                            <asp:Label ID="lblmessage" runat="server" Text="" ForeColor="Red" Font-Size="12px"></asp:Label>
                        </td>
                      
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

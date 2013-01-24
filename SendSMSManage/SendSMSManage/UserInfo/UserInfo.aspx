<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserInfo.aspx.cs" Inherits="UserInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html  xmlns="http://www.w3.org/1999/xhtml"  style="height:100%;">
<head>
<title></title>
    <link href="/Styles/Site.css" rel="stylesheet" type="text/css" />
    <script src="/Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src="/Scripts/table.js" type="text/javascript"></script>
</head>
    <body>
    <form runat="server">
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
                                                                    <span class="STYLE5">你当前的位置</span>：[用户信息]-[用户信息]
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
                                    <table border="0" cellpadding="0" cellspacing="0" style=" height:50px; width:100%;"> 
                                        <tr>
                                            <td>
                                            </td>
                                        </tr>
                                    </table>
                                    <table width="90%"  style=" line-height:40px; width:50%;" class="table" align="center">
                                        <tr>
                                            <td width="15%" align="right">
                                                用户帐号
                                            </td>
                                            <td width="18%" align="center">
                                                <span class="STYLE2"><asp:Label ID="lblUserID" runat="server" Text="admin"></asp:Label></span>
                                            </td>
                                            <td width="15%" align="right">
                                                用户名称
                                            </td>
                                            <td width="18%" align="center">
                                                <span class="STYLE2"><asp:Label ID="lblUserName" runat="server" Text="admin"></asp:Label></span>
                                            </td>
                                            <td width="15%" align="right">单位名称</td>
                                            <td width="20%" align="center"><span class="STYLE2"><asp:Label ID="lblUnitName" runat="server" Text="ldkj"></asp:Label></span></td>
                                        </tr>
                                       <tr>
                                            <td width="15%" align="right">
                                                充值总条数
                                            </td>
                                            <td width="15%" align="center">
                                                <span class="STYLE2"><asp:Label ID="lblTotalCount" runat="server" Text="admin"></asp:Label></span>
                                            </td>
                                            <td width="15%" align="right">
                                                发送条数
                                            </td>
                                            <td width="15%" align="center">
                                                <span class="STYLE2"><asp:Label ID="lblSendCount" runat="server" Text="admin"></asp:Label></span>
                                            </td>
                                            <td width="15%" align="right">剩余条数</td>
                                            <td width="30%" align="center"><span class="STYLE2"><asp:Label ID="lblRemainCount" runat="server" Text="admin"></asp:Label></span></td>
                                        </tr>
                                        <tr>
                                            <td width="15%" align="right">
                                                电信通道号码
                                            </td>
                                            <td width="15%" align="center">
                                                <span class="STYLE2"><asp:Label ID="lblTelecomNumber" runat="server" Text="admin"></asp:Label></span>
                                            </td>
                                            <td width="15%" align="right">
                                                移动通道号码
                                            </td>
                                            <td width="15%" align="center">
                                                <span class="STYLE2"><asp:Label ID="lblCMNumber" runat="server" Text="admin"></asp:Label></span>
                                            </td>
                                            <td width="15%" align="right">联通通道号码</td>
                                            <td width="30%" align="center"><span class="STYLE2"><asp:Label ID="lblUnicomNumber" runat="server" Text="admin"></asp:Label></span></td>
                                        </tr>
                                        <tr>
                                            <td width="15%" align="right">
                                                上行是否推送
                                            </td>
                                            <td width="15%" align="center">
                                                <span class="STYLE2"><asp:Label ID="lblIsMO" runat="server" Text="admin"></asp:Label></span>
                                            </td>
                                            <td width="15%" align="right">
                                                推送地址
                                            </td>
                                            <td colspan=3 align="center"><span class="STYLE2"><asp:Label ID="lblMOUrl" runat="server" Text="admin"></asp:Label></span></td>
                                        </tr>
                                        <tr>
                                            <td width="15%" align="right">
                                                状态是否推送
                                            </td>
                                            <td width="15%" align="center">
                                                <span class="STYLE2"><asp:Label ID="lblIsPostStatus" runat="server" Text="admin"></asp:Label></span>
                                            </td>
                                            <td width="15%" align="right">
                                                推送地址
                                            </td>
                                            <td colspan=3 align="center"><span class="STYLE2"><asp:Label ID="lblPostStatusUrl" runat="server" Text="admin"></asp:Label></span></td>
                                        </tr>
                                        <tr>
                                            <td width="15%" align="right">
                                                是否绑定IP
                                            </td>
                                            <td width="15%" align="center">
                                                <span class="STYLE2"><asp:Label ID="lblIsBindIP" runat="server" Text="admin"></asp:Label></span>
                                            </td>
                                            <td width="15%" align="right">
                                                IP地址
                                            </td>
                                            <td colspan=3 align="center"><span class="STYLE2"><asp:Label ID="lblBindIP" runat="server" Text="admin"></asp:Label></span></td>
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
    </form></body></html>

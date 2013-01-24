<%@ Page Language="C#" AutoEventWireup="true" CodeFile="top.aspx.cs" Inherits="top" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Styles/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td height="70" background="/images/main_05.gif">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td height="24">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td  width="270"><img src="/images/main_03.gif" width="270" height="24"/></td><td width="505" background="/images/main_04.gif">&nbsp;</td><td>&nbsp;</td><td width="21"  height="24"><img src="/images/main_07.gif" width="21" height="24"></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="38">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="270" height="38"><img src="/images/main_09.gif" width="270" height="38"></td><td  height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="77%" height="25" valign="bottom">
                                                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                    <tr>
                                                                        <td width="50" height="19">
                                                                            <div align="center">
                                                                                <a href="/UserInfo/UserInfo.aspx" target="tab">
                                                                                <img src="/images/main_12.gif" width="49" height="19" alt="首页"/></a></div>
                                                                        </td>
                                                                        <td width="50">
                                                                            <div align="center">
                                                                                 <a href="javascript:void(0);" onclick="javascript:parent.frames['mainFrame'].frames['I2'].frames['tab'].history.back()" target="tab" >
                                                                                <img src="/images/main_14.gif" width="48" height="19" alt="后退"/></a></div>
                                                                        </td>
                                                                        <td width="50">
                                                                            <div align="center">
                                                                                <a href="javascript:void(0);" onclick="javascript:parent.frames['mainFrame'].frames['I2'].frames['tab'].history.forward()" target="tab" >
                                                                                <img src="/images/main_16.gif" width="48" height="19" alt="前进"/></a></div>
                                                                        </td>
                                                                        <td width="50">
                                                                            <div align="center">
                                                                                <a href="javascript:void(0);" onclick="javascript:parent.frames['mainFrame'].frames['I2'].frames['tab'].location.reload()" target="tab" >
                                                                                <img src="/images/main_18.gif" width="48" height="19" alt="刷新"/></a></div>
                                                                        </td>
                                                                        <td width="50">
                                                                            <div align="center">
                                                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/main_20.gif" 
                                                                                    width="48" height="19" onclick="ImageButton2_Click"/></div>
                                                                        </td>
                                                                        <td width="26">
                                                                            <div align="center">
                                                                                <img src="/images/main_21.gif" width="26" height="19"></div>
                                                                        </td>
                                                                        <td width="100">
                                                                            <div align="center">
                                                                                <asp:ImageButton ID="ImgExit" runat="server" ImageUrl="~/images/main_22.gif" 
                                                                                    width="98" height="19" /></div>
                                                                        </td>
                                                                        <td>
                                                                            &nbsp;
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                            <td width="280" valign="bottom" nowrap="nowrap">
                                                                <div align="right">
                                                                  <span class="time"><span >■</span>今天是：<span class="time" id="time_view"></span></span>
                                                                    <script type="text/javascript">
                                                                        shownowtime();
                                                                        function shownowtime() {
                                                                            var weekName = new Array("日", "一", "二", "三", "四", "五", "六");
                                                                            var today = new Date();
                                                                            var week = weekName[today.getDay()];
                                                                            var listdate = today.getFullYear() + "年" + (today.getMonth() + 1 < 10 ? "0" + (today.getMonth() + 1) : today.getMonth() + 1) + "月" + (today.getDate() < 10 ? "0" + today.getDate() : today.getDate()) + "日 " + (today.getHours() < 10 ? "0" + today.getHours() : today.getHours()) + ":" + (today.getMinutes() < 10 ? "0" + today.getMinutes() : today.getMinutes()) + ":" + (today.getSeconds() < 10 ? "0" + today.getSeconds() : today.getSeconds()) + " 星期" + week;
                                                                            document.getElementById("time_view").innerHTML = listdate;
                                                                            setTimeout("shownowtime()", 1000);
                                                                        }
                                                                    </script>
                                                                    </div>
                                                            </td>
                                                        </tr>
                                                    </table></td><td width="21"  height="38"><img src="/images/main_11.gif" width="21" height="38"></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="8" style="line-height: 8px;">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="270" background="/images/main_29.gif" style="line-height: 8px;"> &nbsp;</td><td width="505" background="/images/main_30.gif" style="line-height: 8px;">&nbsp;</td><td style="line-height: 8px;"> &nbsp;</td><td width="21" style="line-height: 8px;"><img src="/images/main_31.gif" width="21" height="8"></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" background="/images/main_36.gif">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="177" height="28" background="/images/main_32.gif">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="20%" height="22">&nbsp;</td><td width="59%" valign="bottom">
                                                <div align="center" class="time">
                                                    <asp:Label ID="lblCurUser" runat="server" Text="当前用户:"></asp:Label></div>
                                                </td>
                                                <td width="21%"></td>
                                            </tr>
                                        </table>
                                    </td><td>
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="100%" class="STYLE3">
                                                    &nbsp;&nbsp;
                                                </td>
                                            </tr>
                                        </table>
                                    </td><td width="21"><img src="/images/main_37.gif" width="21" height="28"></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
    </form>
</body>
</html>

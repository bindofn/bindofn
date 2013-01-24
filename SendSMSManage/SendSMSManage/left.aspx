<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left.aspx.cs" Inherits="left" %>


<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
     <link href="/Styles/Site.css" rel="stylesheet" type="text/css" />
    <script src="/Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
</head>
<body style="height:100%;">
    <table width="165" height="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td height="28" background="/images/main_40.gif">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="19%">
                            &nbsp;
                        </td>
                        <td width="81%" height="20">
                            <span class="time">管理菜单</span>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td valign="top">
                <table width="151" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td height="23" background="/images/main_47.gif" id="imgmenu1" class="menu_title"
                                        onmouseover="this.className='menu_title2';" onclick="" onmouseout="this.className='menu_title';"
                                        style="cursor: pointer">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="18%">
                                                    &nbsp;
                                                </td>
                                                <td width="82%" class="time">
                                                    短信发送
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                               
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td height="23" background="/images/main_47.gif" id="imgmenu2" class="menu_title"
                                        onmouseover="this.className='menu_title2';" onclick="" onmouseout="this.className='menu_title';"
                                        style="cursor: pointer">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="18%">
                                                    &nbsp;
                                                </td>
                                                <td width="82%" class="time">
                                                    模板管理
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                
                                
                            </table>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td height="23" background="/images/main_47.gif" id="imgmenu5" class="menu_title"
                                        onmouseover="this.className='menu_title2';" onclick="showsubmenu(5)" onmouseout="this.className='menu_title';"
                                        style="cursor: pointer">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="18%">
                                                    &nbsp;
                                                </td>
                                                <td width="82%" class="time">
                                                    用户信息
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td background="/images/main_51.gif" id="submenu5">
                                        <div class="sec_menu">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td>
                                                        <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                                                            <tr>
                                                                <td width="16%" height="25">
                                                                    <div align="center">
                                                                        <img src="/images/left.gif" width="10" height="10" /></div>
                                                                </td>
                                                                <td width="84%" height="23">
                                                                    <table width="95%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                            <td height="20" style="cursor: pointer" onmouseover="this.className='menu_span'" onmouseout="this.className='' "
                                                                                onmouseout="this.style.borderStyle='none'">
                                                                                <span class="STYLE3"><a href="/UserInfo/UserInfo.aspx"  target="tab">用户信息</a></span>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="23">
                                                                    <div align="center">
                                                                        <img src="/images/left.gif" width="10" height="10" /></div>
                                                                </td>
                                                                <td height="23">
                                                                    <table width="95%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                            <td height="20" style="cursor: pointer" onmouseover="this.className='menu_span'" onmouseout="this.className='' "
                                                                                onmouseout="this.style.borderStyle='none'">
                                                                                <span class="STYLE3"><a href="UserInfo/PasswordManage.aspx"  target="tab">密码修改</a></span>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td height="5" style="font-size:1px;">
                                                        <img src="/images/main_52.gif" width="151" height="5" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td height="23" background="/images/main_47.gif" id="imgmenu6" class="menu_title"
                                        onmouseover="this.className='menu_title2';" onclick="showsubmenu(6)" onmouseout="this.className='menu_title';"
                                        style="cursor: pointer">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="18%">
                                                    &nbsp;
                                                </td>
                                                <td width="82%" class="time">
                                                    统计查询
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td background="/images/main_51.gif" id="submenu6">
                                        <div class="sec_menu">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td>
                                                        <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                                                            <tr>
                                                                <td width="16%" height="25">
                                                                    <div align="center">
                                                                        <img src="/images/left.gif" width="10" height="10" /></div>
                                                                </td>
                                                                <td width="84%" height="23">
                                                                    <table width="95%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                            <td height="20" style="cursor: pointer" onmouseover="this.className='menu_span'" onmouseout="this.className='' "
                                                                                onmouseout="this.style.borderStyle='none'">
                                                                                <span class="STYLE3"><a href="/StatisticsSearch/DownInfoSearch.aspx"  target="tab">下行明细查询</a></span>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="23">
                                                                    <div align="center">
                                                                        <img src="/images/left.gif" width="10" height="10" /></div>
                                                                </td>
                                                                <td height="23">
                                                                    <table width="95%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                            <td height="20" style="cursor: pointer" onmouseover="this.className='menu_span'" onmouseout="this.className='' "
                                                                                onmouseout="this.style.borderStyle='none'">
                                                                                <span class="STYLE3"><a href="/StatisticsSearch/UpInfoSearch.aspx"  target="tab">上行明细查询</a></span>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="23">
                                                                    <div align="center">
                                                                        <img src="/images/left.gif" width="10" height="10" /></div>
                                                                </td>
                                                                <td height="23">
                                                                    <table width="95%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                            <td height="20" style="cursor: pointer" onmouseover="this.className='menu_span'" onmouseout="this.className='' "
                                                                                onmouseout="this.style.borderStyle='none'">
                                                                                <span class="STYLE3"><a href="/StatisticsSearch/SMSSendStatistics.aspx"  target="tab">短信发送统计</a></span>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td height="5" style="font-size:1px;">
                                                        <img src="/images/main_52.gif" width="151" height="5" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td height="23" background="/images/main_47.gif" id="imgmenu7" class="menu_title"
                                        onmouseover="this.className='menu_title2';" onclick="showsubmenu(7)" onmouseout="this.className='menu_title';"
                                        style="cursor: pointer">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="18%">
                                                    &nbsp;
                                                </td>
                                                <td width="82%" class="time">
                                                    通讯录管理
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td background="/images/main_51.gif" id="submenu7">
                                        <div class="sec_menu">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td>
                                                        <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                                                            <tr>
                                                                <td width="16%" height="25">
                                                                    <div align="center">
                                                                        <img src="/images/left.gif" width="10" height="10" /></div>
                                                                </td>
                                                                <td width="84%" height="23">
                                                                    <table width="95%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                            <td height="20" style="cursor: pointer" onmouseover="this.className='menu_span'" onmouseout="this.className=''">
                                                                            <span class="STYLE3"><a href="/AddressListManage/GroupInfo.aspx"  target="tab">群组管理</span>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="23">
                                                                    <div align="center">
                                                                        <img src="/images/left.gif" width="10" height="10" /></div>
                                                                </td>
                                                                <td height="23">
                                                                    <table width="95%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                            <td height="20" style="cursor: pointer" onmouseover="this.className='menu_span'" onmouseout="this.className='' "
                                                                                onmouseout="this.style.borderStyle='none'">
                                                                                <span class="STYLE3"><a href="/AddressListManage/GroupInfo.aspx"  target="tab">群组信息</span>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="23">
                                                                    <div align="center">
                                                                        <img src="/images/left.gif" width="10" height="10" /></div>
                                                                </td>
                                                                <td height="23">
                                                                    <table width="95%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                            <td height="20" style="cursor: pointer" onmouseover="this.className='menu_span'" onmouseout="this.className='' "
                                                                                onmouseout="this.style.borderStyle='none'">
                                                                                <span class="STYLE3"><a href="/AddressListManage/AddressListImport.aspx"  target="tab">通讯录导入</span>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td height="5" style="font-size:1px;">
                                                        <img src="/images/main_52.gif" width="151" height="5" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    
                                </tr>
                                <tr>
                                    
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td height="18" background="/images/main_58.gif">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td height="18" valign="bottom">
                            <div align="center" class="STYLE3">
                                版本：2012V1.0</div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
<script type="text/javascript">
    $(document).ready(function () {
        $(".sec_menu").find("span").parent().mousemove(function () {
            $(this).attr("class", "menu_span");
        });
        $(".sec_menu").find("span").parent().mouseout(function () {
            $(this).attr("class", 'STYLE3');
        });
    });
    function showsubmenu(sid) {
        whichEl = eval("submenu" + sid);
        imgmenu = eval("imgmenu" + sid);
        if (whichEl.style.display == "none") {
            $("#submenu" + sid).show(500);
            //eval("submenu" + sid + ".style.display=\"\";");
            $("#imgmenu" + sid).attr("background", "/images/main_47.gif");
        }
        else {
            $("#submenu" + sid).hide(500);
            //eval("submenu" + sid + ".style.display=\"none\";");
            $("#imgmenu" + sid).attr("background", "/images/main_48.gif");
        }
    }
</script>
</body>
</html>

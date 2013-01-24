<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserManage.aspx.cs" Inherits="UserManage_UserManage" %>

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
                                                                    <span class="STYLE5">你当前的位置</span>：[用户管理]-[用户管理]
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td><td width="54%">
                                                    <table border="0" align="right" cellpadding="0" cellspacing="0">
                                                        <tbody>
                                                            <tr>
                                                                <td width="60">
                                                                    <table width="87%" border="0" cellpadding="0" cellspacing="0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td class="STYLE1">
                                                                                    <div align="center">
                                                                                        <input type="checkbox" name="checkbox62" value="checkbox">
                                                                                    </div>
                                                                                </td>
                                                                                <td class="STYLE1">
                                                                                    <div align="center">
                                                                                        全选</div>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                                <td width="60">
                                                                    <table width="90%" border="0" cellpadding="0" cellspacing="0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td class="STYLE1">
                                                                                    <div align="center">
                                                                                        <img src="/images/22.gif" width="14" height="14"></div>
                                                                                </td>
                                                                                <td class="STYLE1">
                                                                                    <div align="center">
                                                                                        <asp:LinkButton ID="lbtnAdd" runat="server">新增</asp:LinkButton></div>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td><td width="52">
                                                                    <table width="88%" border="0" cellpadding="0" cellspacing="0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td class="STYLE1">
                                                                                    <div align="center">
                                                                                        <img src="/images/11.gif" width="14" height="14"></div>
                                                                                </td>
                                                                                <td class="STYLE1">
                                                                                    <div align="center">
                                                                                        <asp:LinkButton ID="lbtnDelete" runat="server">删除</asp:LinkButton></div>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
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
                                    <table width="70%" style=" height:60px;" align="center">
                                       <tr><td width="60">用户名:</td><td>
                                           <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td><td><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/cw.jpg" /></td></tr>
                                    </table>
                                    <asp:GridView ID="GridView1" runat="server" CssClass="table" Width="100%" border="0"
                                       Style="text-align: center; border:1px solid #B5D6E6; border-collapse:collapse;"  CellPadding="0" CellSpacing="0"
                                        onmouseover="changeto()" onmouseout="changeback()">
                                    </asp:GridView>
                                    <table class="table" cellspacing="0" cellpadding="0" onmouseover="changeto()"
                                        onmouseout="changeback()" id="MainContent_GridView1">
                                        <tbody>
                                            <tr>
                                                <th scope="col">
                                                    序号
                                                </th>
                                                <th scope="col">
                                                    用户代码
                                                </th>
                                                <th scope="col">
                                                    用户密码
                                                </th>
                                                <th scope="col">
                                                    用户类型
                                                </th>
                                                 <th scope="col">
                                                    单位名称
                                                </th>
                                                <th scope="col">
                                                    移动通道号码
                                                </th>
                                                <th scope="col">
                                                    电信通道号码
                                                </th>
                                                <th scope="col">
                                                    联通通道号码
                                                </th>
                                                 <th scope="col">
                                                    通道标识
                                                </th>
                                                <th scope="col">
                                                    是否签名
                                                </th>
                                                <th scope="col">
                                                    签名
                                                </th>
                                                <th scope="col">
                                                    是否绑定IP
                                                </th>
                                                 <th scope="col">
                                                    绑定IP
                                                </th>
                                                <th scope="col">
                                                    发送优先级
                                                </th>
                                                <th scope="col">
                                                    状态是否推送
                                                </th>
                                                <th scope="col">
                                                    上行是否推送
                                                </th>
                                                 <th scope="col">
                                                    上行推送地址
                                                </th>
                                                <th scope="col">
                                                    操作
                                                </th>
                                            </tr>
                                            <tr>
                                                <td style="">
                                                    1
                                                </td>
                                                <td style="">
                                                    aaa
                                                </td>
                                                <td style="">
                                                    aa
                                                </td>
                                                <td style="">
                                                    管理员
                                                </td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                
                                                <td><div align="center">
                                                        <span class="STYLE4">
                                                            <img src="/images/edt.gif" width="16" height="16">编辑&nbsp; &nbsp;<img src="/images/del.gif"
                                                                width="16" height="16">删除</span></div></td>
                                            </tr>
                                        </tbody>
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
                                                    &nbsp;&nbsp;共有
                                                    <asp:Label ID="Label1" runat="server" Text="120"></asp:Label>
                                                    条记录，当前第
                                                    <asp:Label ID="Label2" runat="server" Text="1"></asp:Label>/<asp:Label ID="Label3"
                                                        runat="server" Text="10"></asp:Label>
                                                    页
                                                </td>
                                                <td>
                                                    <table border="0" align="right" cellpadding="0" cellspacing="0">
                                                        <tbody>
                                                            <tr>
                                                                <td width="40">
                                                                    <asp:ImageButton ID="ImgFirst" ImageUrl="/images/first.gif" Width="37" Height="15"
                                                                        runat="server" />
                                                                </td>
                                                                <td width="45">
                                                                    <asp:ImageButton ID="ImgBack" ImageUrl="/images/back.gif" Width="43" Height="15" runat="server" />
                                                                </td>
                                                                <td width="45">
                                                                    <asp:ImageButton ID="ImgNext" ImageUrl="/images/next.gif" Width="43" Height="15" runat="server" />
                                                                </td>
                                                                <td width="40">
                                                                    <asp:ImageButton ID="Imglast" ImageUrl="/images/last.gif" Width="37" Height="15" runat="server" />
                                                                </td>
                                                                <td width="100">
                                                                    <div align="center">
                                                                        <span class="STYLE1">转到第
                                                                            <asp:TextBox ID="txtPage" class="txtpage" runat="server" MaxLength="6" size="4" Style="height: 12px;
                                                                                width: 20px; border: 1px solid #999999;"></asp:TextBox>
                                                                            页 </span>
                                                                    </div>
                                                                </td>
                                                                <td width="40">
                                                                    <asp:ImageButton ID="ImgGo" OnClientClick="return IsNumber($('.txtpage').val());" ImageUrl="/images/go.gif"
                                                                        Width="37" Height="15" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
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

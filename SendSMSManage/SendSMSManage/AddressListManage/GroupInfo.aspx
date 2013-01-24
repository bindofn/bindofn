<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GroupInfo.aspx.cs" Inherits="AddressListManage_GroupInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html  xmlns="http://www.w3.org/1999/xhtml"  style="height:100%;">
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
                                                                    <span class="STYLE5">你当前的位置</span>：[通讯录管理]-[群组信息]
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td><td width="54%">
                                                    &nbsp;
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
                                <td align="left">
                                    <asp:TreeView ID="TreeView1" runat="server" Width="20%" style=" float:left;">
                                    </asp:TreeView>
                                    <asp:GridView ID="GridView1" runat="server" CssClass="table" border="0"
                                       Style="text-align: center; border:1px solid #B5D6E6; border-collapse:collapse;"  CellPadding="0" CellSpacing="0"
                                        onmouseover="changeto()" onmouseout="changeback()" Width="80%">
                                    </asp:GridView>
                                    <table class="table" style="width:80%" cellspacing="0" cellpadding="0" onmouseover="changeto()"
                                        onmouseout="changeback()" id="MainContent_GridView1" align="left">
                                        <tbody>
                                            <tr>
                                                <th scope="col">
                                                    联系人姓名
                                                </th>
                                                <th scope="col">
                                                    联系人电话
                                                </th>
                                                <th scope="col">
                                                    性别
                                                </th>
                                                <th scope="col">
                                                    单位名称
                                                </th>
                                                <th scope="col">
                                                    部门
                                                </th>
                                                <th scope="col">
                                                    生日
                                                </th>
                                                <th scope="col">
                                                    qq
                                                </th>
                                                <th scope="col">
                                                    联系地址
                                                </th>
                                                <th scope="col">
                                                    操作
                                                </th>
                                            </tr>
                                            <tr>
                                                <td style="">
                                                   张三
                                                </td>
                                                <td style="">
                                                    138123456789
                                                </td>
                                                <td style="">
                                                    男
                                                </td>
                                                <td style="">
                                                    xxx
                                                </td>
                                                <td style="">
                                                    开发部
                                                </td>
                                                <td style="">
                                                    1991-7-1
                                                </td>
                                                <td style="">
                                                    123456789
                                                </td>
                                                <td style="">
                                                    aaaa
                                                </td>
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
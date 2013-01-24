<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SMSSendStatistics.aspx.cs" Inherits="StatisticsSearch_SMSSendStatistics" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html  xmlns="http://www.w3.org/1999/xhtml"  style="height:100%;">
<head>
<title></title>
    <link href="/Styles/easyui.css" rel="stylesheet" type="text/css" />
    <link href="/Styles/Site.css" rel="stylesheet" type="text/css" />
    <script src="/Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src="/Scripts/table.js" type="text/javascript"></script>
    <script src="/Scripts/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="/Scripts/easyui-lang-zh_CN.js" type="text/javascript"></script>
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
                                                                    <span class="STYLE5">你当前的位置</span>：[统计查询]-[短信发送统计]
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
                                <td>
                                    <table width="70%" style="height: 60px;" align="center">
                                        <tr>
                                            <td width="30">
                                                通道:
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlChannel" runat="server">
                                                    <asp:ListItem Value="1">中国电信</asp:ListItem>
                                                    <asp:ListItem Value="2">中国移动</asp:ListItem>
                                                    <asp:ListItem Value="3">中国联通</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td width="30">
                                                时间:
                                            </td>
                                            <td>
                                            <asp:TextBox ID="txtStartDate" runat="server" CssClass="easyui-datetimebox" 
                                                    Width="135px"></asp:TextBox>-<asp:TextBox ID="txtEndDate"
                                                    runat="server"  CssClass="easyui-datetimebox" Width="135px"></asp:TextBox>
                                            </td>
                                            <td width="60">
                                                查询类型:
                                            </td>
                                            <td>
                                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                                    <asp:ListItem Text="日报" Value="0" Selected="True"></asp:ListItem>
                                                    <asp:ListItem Text="月报" Value="1"></asp:ListItem>
                                                    <asp:ListItem Text="年报" Value="2"></asp:ListItem>
                                                </asp:RadioButtonList>
                                                
                                            </td>
                                            <td>
                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/cw.jpg" />
                                            </td>
                                        </tr>
                                    </table>
                                    <asp:GridView ID="GridView2" runat="server" CssClass="table" Width="100%" border="0"
                                        Style="text-align: center; border: 1px solid #B5D6E6; border-collapse: collapse;"
                                        CellPadding="0" CellSpacing="0" onmouseover="changeto()" onmouseout="changeback()">
                                    </asp:GridView>
                                    <table class="table" cellspacing="0" cellpadding="0"  onmouseover="changeto()"
                                        onmouseout="changeback()">
                                        <tbody>
                                            <tr>
                                                <th scope="col">
                                                    统计日期
                                                </th>
                                                <th scope="col">
                                                    发送条数
                                                </th>
                                                <th scope="col">
                                                    成功条数
                                                </th>
                                                <th scope="col">
                                                    失败条数
                                                </th>
                                                <th scope="col">
                                                    未知条数
                                                </th>
                                                <th scope="col">
                                                    成功率
                                                </th>
                                            </tr>
                                            <tr>
                                                <td style="">
                                                    2012-10-1
                                                </td>
                                                <td style="">
                                                    11
                                                </td>
                                                <td style="">
                                                    11
                                                </td>
                                                <td style="">
                                                    0
                                                </td>
                                                <td>
                                                    0
                                                </td>
                                                <td>
                                                    100%
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                     <p style="width:90%" align="right">当前查询合计成功数：<span class="STYLE2"><asp:Label ID="Label1" runat="server" Text="100"></asp:Label></span>
                                     合计失败数：<span class="STYLE2"><asp:Label ID="Label2" runat="server" Text="0"></asp:Label></span>
                                     成功率：<span class="STYLE2"><asp:Label ID="Label3" runat="server" Text="100%"></asp:Label></span>
                                     </p>
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
                                                    <asp:Label ID="Label4" runat="server" Text="120"></asp:Label>
                                                    条记录，当前第
                                                    <asp:Label ID="Label5" runat="server" Text="1"></asp:Label>/<asp:Label ID="Label6"
                                                        runat="server" Text="10"></asp:Label>
                                                    页
                                                </td>
                                                <td>
                                                    <table border="0" align="right" cellpadding="0" cellspacing="0">
                                                        <tbody>
                                                            <tr>
                                                                <td width="40">
                                                                    <asp:ImageButton ID="ImageButton3" ImageUrl="/images/first.gif" Width="37" Height="15"
                                                                        runat="server" />
                                                                </td>
                                                                <td width="45">
                                                                    <asp:ImageButton ID="ImageButton4" ImageUrl="/images/back.gif" Width="43" Height="15"
                                                                        runat="server" />
                                                                </td>
                                                                <td width="45">
                                                                    <asp:ImageButton ID="ImageButton5" ImageUrl="/images/next.gif" Width="43" Height="15"
                                                                        runat="server" />
                                                                </td>
                                                                <td width="40">
                                                                    <asp:ImageButton ID="ImageButton6" ImageUrl="/images/last.gif" Width="37" Height="15"
                                                                        runat="server" />
                                                                </td>
                                                                <td width="100">
                                                                    <div align="center">
                                                                        <span class="STYLE1">转到第
                                                                            <asp:TextBox ID="TextBox5" class="txtpage" runat="server" MaxLength="6" size="4" Style="height: 12px;
                                                                                width: 20px; border: 1px solid #999999;"></asp:TextBox>
                                                                            页 </span>
                                                                    </div>
                                                                </td>
                                                                <td width="40">
                                                                    <asp:ImageButton ID="ImageButton7" OnClientClick="return IsNumber($('.txtpage').val());"
                                                                        ImageUrl="/images/go.gif" Width="37" Height="15" runat="server" />
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
    </form>
 </body>
</html>

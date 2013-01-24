<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddressListSend.aspx.cs" Inherits="SMSSend_AddressListSend" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Styles/Site.css" rel="stylesheet" type="text/css" />
    <script src="/Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src="/Scripts/table.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
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
                                                                    <span class="STYLE5">你当前的位置</span>：[短信发送]-[通讯录发送]
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
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td width="90%" colspan="2">
                                                        <table class="table">
                                                    <tbody>
                                                        <tr>
                                                            <td class="f1" width="150px">
                                                                <span id="Span1">接收者手机号码</span>
                                                            </td>
                                                            <td colspan="2" align="left">
                                                                <asp:TextBox ID="TextBox2" runat="server" Width="300"></asp:TextBox>
                                                                <span id="Span3" style="color:Red;">*多个号码用逗号隔开</span>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="f1" colspan="3">
                                                                <span id="lbContent">短信内容</span>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3">
                                                            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="99%" Height="120"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td id="tdRad" colspan="3" align="left">
                                                                <span id="lbNo">当前字数:<asp:Label ID="Label1" runat="server" Text="0"></asp:Label>/180</span>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="f1" width="150">
                                                                发送时间
                                                            </td>
                                                            <td align="left" width="60">
                                                                <asp:DropDownList ID="DropDownList1" runat="server">
                                                                    <asp:ListItem Text="即时" Value="0" Selected="True"></asp:ListItem>
                                                                    <asp:ListItem Text="定时" Value="1"></asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" colspan="3">
                                                               <asp:Button ID="Button1" runat="server" Text="写完了发送" /><asp:Button ID="Button2" runat="server" Text="清空" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3" valign="top" align="left" style="height: 50px;">
                                                                注意：<br/><div id="divAdvert" style="display: inline;">
                                                                    1、发送信息时，手机只能接收到“内容”框中填写的内容，“附件”与“主题”都不会发送。在本平台的收件箱里能看到全部信息。<br>
                                                                    2、每条短信为64个字。超出部分将移动到第二条。请尽量不要使用空格之类的字符。如果学生家长的手机未订购，则无法收到信息。
                                                                    </div>
                                                
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                            <td width="10%" valign="top">
                                                <table class="table">
                                                    <tbody>
                                                       <tr>
                                                        <td class="f1">通讯录</td>
                                                       </tr>
                                                       <tr>
                                                       <td>
                                                           <asp:ListBox ID="ListBox2" runat="server" style="width:99%; height:285px;" 
                                                               SelectionMode="Multiple"> 
                                                                <asp:ListItem Value="13812345678">张三</asp:ListItem>
                                                                <asp:ListItem Value="13912345679">李四</asp:ListItem>
                                                          </asp:ListBox>
                                                         </td>
                                                       </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="50%">
                                                <table class="table"  cellspacing="0" cellpadding="0">
                                                    <tr>
                                                        <th>
                                                            短信模版
                                                        </th>
                                                        <th>
                                                            选择
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            节日快乐
                                                        </td>
                                                        <td width="40">
                                                            选择
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td width="50%" colspan="2">
                                                <table class="table"  cellspacing="0" cellpadding="0">
                                                    <tr>
                                                        <th>
                                                            常用短语
                                                        </th>
                                                        <th>
                                                            选择
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            节日快乐
                                                        </td>
                                                        <td width="40">
                                                            选择
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
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

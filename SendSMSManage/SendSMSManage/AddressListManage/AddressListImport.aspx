<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddressListImport.aspx.cs" Inherits="AddressListManage_AddressListImport" %>

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
                                                                    <span class="STYLE5">你当前的位置</span>：[通讯录管理]-[通讯录导入]
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
                                    <table>
                                        <tr>
                                            <td width="140">
                                                请选择导入通讯录文件：
                                            </td>
                                            <td>
                                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                            </td>
                                            <td>
                                                <asp:Button ID="Button1" runat="server" Text="导入" />
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
                                    &nbsp;
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

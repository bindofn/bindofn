<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DownInfo.aspx.cs" Inherits="StatisticsSearch_DownInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>下行详细信息</title>
    <link href="/Styles/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <table style="line-height: 40px; margin-top:20px; width:90%;" class="table" align="center">
        <tr>
            <td width="15%" align="right">
                发送号码:
            </td>
            <td width="18%" align="center">
                <span class="STYLE2">
                    <asp:Label ID="lblSrcNumber" runat="server" Text=""></asp:Label></span>
            </td>
            <td width="15%" align="right">
                目的号码:
            </td>
            <td width="18%" align="center">
                <span class="STYLE2">
                    <asp:Label ID="lblDstNumber" runat="server" Text=""></asp:Label></span>
            </td>
            <td width="15%" align="right">
                状态:
            </td>
            <td width="20%" align="center">
                <span class="STYLE2">
                    <asp:Label ID="lblstatus" runat="server" Text=""></asp:Label></span>
            </td>
        </tr>
        <tr>
            <td width="15%" align="right">
                内容:
            </td>
            <td colspan="5" align="center" style="height:100px;">
                <span class="STYLE2">
                    <asp:Label ID="lblContent" runat="server" Text=""></asp:Label></span>
            </td>
        </tr>
        <tr>
            <td width="15%" align="right">
                消息编号:
            </td>
            <td width="15%" align="center">
                <span class="STYLE2">
                    <asp:Label ID="lblMsgID" runat="server" Text=""></asp:Label></span>
            </td>
            <td width="15%" align="right">
                接收时间:
            </td>
            <td colspan="3" align="center">
                <span class="STYLE2">
                    <asp:Label ID="lbltime" runat="server" Text=""></asp:Label></span>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

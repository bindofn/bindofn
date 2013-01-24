<%@ Page Language="C#" AutoEventWireup="true" CodeFile="middle.aspx.cs" Inherits="middle" %>

<html xmlns="http://www.w3.org/1999/xhtml"  style="height:100%; width:100%;">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <style type="text/css">
        body
        {
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
        }
.navPoint{ COLOR: white; CURSOR: hand; FONT-FAMILY: Webdings; FONT-SIZE: 9pt; }

</style>
    
</head>
<body style="height:100%;overflow: auto;overflow-x:hidden;">
    <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" style="table-layout: fixed;">
        <tr>
            <td width="171" id="frmTitle" nowrap name="fmTitle" align="center" valign="top">
                <table width="171" height="100%" border="0" cellpadding="0" cellspacing="0" style="table-layout: fixed;">
                    <tr>
                        <td bgcolor="#1873aa" style="width: 6px;">
                            &nbsp;
                        </td>
                        <td width="168">
                            <iframe name="I1" height="100%" width="168" src="left.aspx" scrolling="auto" border="0" frameborder="0"
                             >浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。</iframe>
                        </td>
                    </tr>
                </table>
            </td>
            <td width="6" style="width: 6px;" valign="middle" bgcolor="1873aa" onclick="switchSysBar()">
                <span class="navPoint" id="switchPoint" title="关闭/打开左栏">
                    <img src="/images/main_55.gif" name="img1" width="6" height="40" id="img1"></span>
            </td>
            <td width="100%" align="center" valign="top">
                <iframe name="tab" height="100%" width="100%" border="0" frameborder="0" scrolling="auto"  src="/userinfo/userinfo.aspx"  target="tab">
                    浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。</iframe>
            </td>
        </tr>
    </table>
    <script type="text/javascript">
        function switchSysBar() {
            var ssrc = $("#img1").attr("src");
            if (ssrc == "/images/main_55.gif") {
                $("#img1").attr("src", "/images/main_55_1.gif");
                document.all("frmTitle").style.display = "none"; 
            }
            else {
                $("#img1").attr("src", "/images/main_55.gif");
                document.all("frmTitle").style.display = "" 
            }
        }
        </script>
</body>
</html>

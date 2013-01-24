<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DownInfoSearch.aspx.cs" Inherits="StatisticsSearch_DownInfoSearch" %>

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
    <style type="text/css">
        .style1
        {
            width: 119px;
        }
        .style2
        {
            width: 130px;
        }
        .style3
        {
            width: 129px;
        }
        .style4
        {
            width: 485px;
        }
    </style>
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
                                                                    <span class="STYLE5">你当前的位置</span>：[统计查询]-[下行明细查询]
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
                                <td align="center">
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
                                                接收号码:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtTelPhone" runat="server"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:ImageButton ID="ImgSearch" runat="server" ImageUrl="~/images/cw.jpg" 
                                                    onclick="ImgSearch_Click" OnClientClick="message();"/>
                                            </td>
                                        </tr>
                                    </table>
                                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                                    </asp:ScriptManager>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Font-Bold="True" 
                                                Font-Size="14px" style="line-height:40px; text-align:center;"></asp:Label>
                                            <asp:GridView ID="SMSGridView" runat="server" CssClass="table" Width="100%" border="0"
                                        Style="text-align: center; border: 1px solid #B5D6E6; border-collapse: collapse;"
                                        CellPadding="0" onmouseover="changeto()" onmouseout="changeback()" 
                                        AutoGenerateColumns="False">
                                        <Columns>
                                            <asp:BoundField DataField="SrcNumber" HeaderText="发送号码" 
                                                HeaderStyle-Width="180px" >
<HeaderStyle Width="180px"></HeaderStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="DstNumber" HeaderText="目的号码" 
                                                HeaderStyle-Width="120px" >
<HeaderStyle Width="120px"></HeaderStyle>
                                            </asp:BoundField>
                                            <asp:TemplateField HeaderText="状态">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%#(Eval("Status")).ToString()=="1"?"已发送":"未发送"%>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle Width="100px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="短信内容">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# (Eval("MsgContent")).ToString().Length<23?Eval("MsgContent"):(Eval("MsgContent")).ToString().Substring(0,22)+"..." %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle Width="300px" />
                                                <ItemStyle Wrap="True" />
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="SubmitID" HeaderText="任务编号" 
                                                HeaderStyle-Width="120px" >
<HeaderStyle Width="120px"></HeaderStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="SendTime" HeaderText="发送时间" 
                                                HeaderStyle-Width="150px" >
<HeaderStyle Width="150px"></HeaderStyle>
                                            </asp:BoundField>
                                            <asp:TemplateField HeaderText="详细信息">
                                                <ItemTemplate>
                                                    <a href="javascript:void(0)" class="STYLE2" onclick="var ddlChannel=$('#ddlChannel').val(); var top=(window.parent.screen.height-300)/2-20;var left=(window.parent.screen.width-550)/2;window.open ('/StatisticsSearch/DownInfo.aspx?submitid=<%#Eval("SubmitID") %>&SrcNumber=<%#Eval("SrcNumber") %>&content=<%#Eval("MsgContent") %>&dstnumber=<%#Eval("DstNumber") %>&ddlChannel='+ddlChannel+'','newwindow','height=300,width=550,top='+top+',left='+left+',toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no,alwaysRaised=true,z-look=yes');">详细信息</a>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                        </ContentTemplate>
                                         <Triggers>
                                           <asp:AsyncPostBackTrigger ControlID="ImgSearch" EventName="Click" />
                                           <asp:AsyncPostBackTrigger ControlID="ImgPageHome" EventName="Click" />
                                           <asp:AsyncPostBackTrigger ControlID="ImgPageUp" EventName="Click" />
                                           <asp:AsyncPostBackTrigger ControlID="ImgPageNext" EventName="Click" />
                                           <asp:AsyncPostBackTrigger ControlID="ImgPageLast" EventName="Click" />
                                           <asp:AsyncPostBackTrigger ControlID="ImgGo" EventName="Click" />
                                        </Triggers>
                                    </asp:UpdatePanel>
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
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tbody>
                                            <tr>
                                                <td class="STYLE4">
                                                    &nbsp;&nbsp;共有
                                                    <asp:Label ID="lblTotalCount" runat="server" Text="0"></asp:Label>
                                                    条记录，当前第<asp:Label ID="lblNumber" runat="server" Text="0"></asp:Label>页/共<asp:Label ID="lblTotalNumber"
                                                        runat="server" Text="0"></asp:Label>页
                                                </td>
                                                <td>
                                                    <table border="0" align="right" cellpadding="0" cellspacing="0">
                                                        <tbody> 
                                                            <tr>
                                                                <td width="40">
                                                                    <asp:ImageButton ID="ImgPageHome" ImageUrl="/images/first.gif" Width="37" Height="15"
                                                                        runat="server" onclick="ImgPageHome_Click"  OnClientClick="message();" 
                                                                        Enabled="False"/>
                                                                </td>
                                                                <td width="45">
                                                                    <asp:ImageButton ID="ImgPageUp" ImageUrl="/images/back.gif" Width="43" Height="15"
                                                                        runat="server" onclick="ImgPageUp_Click"  OnClientClick="message();" 
                                                                        Enabled="False"/>
                                                                </td>
                                                                <td width="45">
                                                                    <asp:ImageButton ID="ImgPageNext" ImageUrl="/images/next.gif" Width="43" Height="15"
                                                                        runat="server" onclick="ImgPageNext_Click"  OnClientClick="message();" 
                                                                        Enabled="False"/>
                                                                </td>
                                                                <td width="40">
                                                                    <asp:ImageButton ID="ImgPageLast" ImageUrl="/images/last.gif" Width="37" Height="15"
                                                                        runat="server" onclick="ImgPageLast_Click"  OnClientClick="message();" 
                                                                        Enabled="False"/>
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
                                                                    <asp:ImageButton ID="ImgGo" OnClientClick="isNum();"
                                                                        ImageUrl="/images/go.gif" Width="37" Height="15" runat="server" 
                                                                        onclick="ImgGo_Click" />
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    </ContentTemplate>
                                                    <Triggers>
                                                   <asp:AsyncPostBackTrigger ControlID="ImgSearch" EventName="Click" />
                                                   <asp:AsyncPostBackTrigger ControlID="ImgPageHome" EventName="Click" />
                                                   <asp:AsyncPostBackTrigger ControlID="ImgPageUp" EventName="Click" />
                                                   <asp:AsyncPostBackTrigger ControlID="ImgPageNext" EventName="Click" />
                                                   <asp:AsyncPostBackTrigger ControlID="ImgPageLast" EventName="Click" />
                                                   <asp:AsyncPostBackTrigger ControlID="ImgGo" EventName="Click" />
                                                    </Triggers>
                                                </asp:UpdatePanel>
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
</body></html>

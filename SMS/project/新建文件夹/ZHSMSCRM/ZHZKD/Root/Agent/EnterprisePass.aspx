﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnterprisePass.aspx.cs" Inherits="ZKD.Root.Agent.EnterprisePass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>企业密码重置</title>
    <link type="text/css" rel="stylesheet" href="../../scripts/ui/skins/Aqua/css/ligerui-all.css" />
    <link type="text/css" rel="stylesheet" href="../images/style.css" />
    <link type="text/css" rel="stylesheet" href="../../css/pagination.css" />
    <script type="text/javascript" src="../../scripts/jquery/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="../../scripts/ui/js/ligerBuild.min.js"></script>
    <script type="text/javascript" src="../js/function.js"></script>
    <script src="../../Script/formValidator/DateTimeMask.js" type="text/javascript"></script>
<%--    <script src="../../Script/formValidator/datepicker/calendar.js" type="text/javascript"></script>--%>
    <script src="../../Script/formValidator/datepicker/WdatePicker.js" type="text/javascript"></script>
    <script type="text/javascript" src="../../JavaScript/Prompt/ymPrompt.js"></script>
    <link rel="stylesheet" type="text/css" href="../../JavaScript/Prompt/skin/qq/ymPrompt.css" />
</head>
<body class="mainbody">
    <form id="form1" runat="server">
        <div class="navigation">
            <a href="javascript:history.go(-1);" class="back">后退</a>首页 &gt; 企业用户管理 &gt; 企业密码重置
        </div>
        <div id="contentTab">
            <div class="tab_con" style="display: block;">
                <table class="form_table">
                    <col width="150px">
                    <col>
                    <tbody>
                        <tr>
                            <th>企业帐号：</th>
                            <td>
                                <asp:Label ID="lbl_account" Text="" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <th>重置密码：</th>
                            <td>
                                <asp:Label ID="Label1" Text="666666" runat="server" Enabled="false"></asp:Label>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="foot_btn_box">
                <asp:Button ID="btnSubmit" runat="server" Text="密码重置" CssClass="btnSubmit" OnClick="btnSubmit_Click" />
                &nbsp;<input name="重置" type="reset" class="btnSubmit" value="重 置" />
            </div>
        </div>
    </form>
</body>
</html>


﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoleManage.aspx.cs" Inherits="ZHCRM.Root.Account.RoleManage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>角色管理</title>
    <link type="text/css" rel="stylesheet" href="../../scripts/ui/skins/Aqua/css/ligerui-all.css" />
    <link type="text/css" rel="stylesheet" href="../images/style.css" />
    <link type="text/css" rel="stylesheet" href="../../css/pagination.css" />
    <link type="text/css" rel="stylesheet" href="../../JavaScript/Prompt/gridview.css" />
    <script type="text/javascript" src="../../JavaScript/Prompt/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        $(function () {
            var color;
            $("#GridView1>tbody>tr:first~tr:even").css("backgroundColor", "#ebf5fc");
            $("#GridView1>tbody>tr:first~tr:odd").css("backgroundColor", "#d6e7fc");
            $("#GridView1>tbody>tr").mouseover(function () {
                color = $(this).css("backgroundColor");
                $(this).css("backgroundColor", "#fdfde2");
            });
            $("#GridView1>tbody>tr").mouseout(function () {
                $(this).css("backgroundColor", color);
            });
        });
    </script>
    <script type="text/javascript" src="../../scripts/jquery/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="../../scripts/ui/js/ligerBuild.min.js"></script>
    <script type="text/javascript" src="../js/function.js"></script>
    <script type="text/javascript" language="javascript" src="../../JavaScript/Prompt/ymPrompt.js"></script>
    <link rel="stylesheet" type="text/css" href="../../JavaScript/Prompt/skin/qq/ymPrompt.css" />
</head>
<body class="mainbody">
    <form id="form1" runat="server">
        <div class="navigation">首页 &gt; 角色管理 &gt; 管理列表</div>
        <div class="tools_box">
            <div class="tools_bar">
                <a href="RoleAdd.aspx" class="tools_btn"><span><b class="add">新增</b></span></a>
            </div>
        </div>
        <div>
            <asp:GridView ID="GridView1" CssClass="gridview" SkinID="GridViewSkin" runat="server" AutoGenerateColumns="False" DataKeyNames="roleID"
                Width="100%" OnRowDataBound="GridView1_RowDataBound" AllowPaging="True" OnDataBound="GridView1_DataBound"
                OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="15" OnRowDeleting="GridView1_RowDeleting">
                <PagerTemplate>
                    <table>
                        <tr>
                            <td style="text-align: left">
                                <asp:Label ID="MessageLabel" ForeColor="black" Text="页码:" runat="server" />
                                <asp:DropDownList ID="PageDropDownList" AutoPostBack="true" OnSelectedIndexChanged="PageDropDownList_SelectedIndexChanged"
                                    runat="server" />
                                <asp:LinkButton CommandName="Page" CommandArgument="First" ID="linkBtnFirst" runat="server">首页</asp:LinkButton>
                                <asp:LinkButton CommandName="Page" CommandArgument="Prev" ID="linkBtnPrev" runat="server">上一页</asp:LinkButton>
                                <asp:LinkButton CommandName="Page" CommandArgument="Next" ID="linkBtnNext" runat="server">下一页</asp:LinkButton>
                                <asp:LinkButton CommandName="Page" CommandArgument="Last" ID="linkBtnLast" runat="server">尾页</asp:LinkButton>
                            </td>
                            <td style="width: 460px"></td>
                            <td>
                                <asp:Label ID="CurrentPageLabel" ForeColor="black" runat="server" />
                            </td>
                        </tr>
                    </table>
                </PagerTemplate>
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="序号" />
                    <asp:BoundField DataField="roleID" HeaderText="角色编码" />
                    <asp:BoundField DataField="roleName" HeaderText="角色名称" />
                    <asp:BoundField DataField="remark" HeaderText="备注" />
                    <asp:BoundField DataField="addTime" HeaderText="添加时间" />
                    <asp:TemplateField HeaderText="角色编辑">
                        <ItemTemplate>
                            <a href="RoleEdit.aspx?roleID=<%# Eval("roleID")%>">角色编辑</a>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="角色权限编辑">
                        <ItemTemplate>
                            <a href="RolePermission.aspx?roleID=<%# Eval("roleID")%>">角色权限编辑</a>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="角色详情">
                        <ItemTemplate>
                            <a href="RoleDetail.aspx?roleID=<%# Eval("roleID")%>">角色详情</a>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField HeaderText="删除" ShowDeleteButton="True" DeleteText="删除">
                        <ControlStyle ForeColor="Black" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>



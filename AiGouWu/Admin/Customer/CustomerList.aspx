﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerList.aspx.cs" Inherits="AiGouWu.Admin.Customer.CustomerList" %>

<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>资讯管理</title>
    <link rel="stylesheet" type="text/css" href="../images/style.css" />
    <link rel="stylesheet" type="text/css" href="../images/pagination.css" />
    <script type="text/javascript" src="../../Content/Javascript/jquery-1.6.4.min.js"></script>
    <script type="text/javascript" src="../../Content/Javascript/jquery.pagination.js"></script>
    <script type="text/javascript" src="../js/function.js"></script>
    <script type="text/javascript">
           
        $(function() {
            $(".msgtable tr:nth-child(odd)").addClass("tr_bg"); //隔行变色
            $(".msgtable tr").hover(
			    function() {
			        $(this).addClass("tr_hover_col");
			    },
			    function() {
			        $(this).removeClass("tr_hover_col");
			    }
		    );
        });
    </script>
</head>
<body style="padding:10px;">
    <form id="form1" runat="server">
    <div class="navigation"><span class="add"><a href="#"></a></span><b>您当前的位置：首页 &gt; 会员客户管理 &gt; 会员列表</b></div>
    <div class="spClear"></div>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="50" align="center">请选择：</td>
        <td>
            <asp:DropDownList ID="ddlClassId" runat="server" CssClass="select" 
                onselectedindexchanged="ddlClassId_SelectedIndexChanged" 
                AutoPostBack="True"></asp:DropDownList>&nbsp;
           
        </td>
        <td width="50" align="right">关健字：</td>
        <td width="150"><asp:TextBox ID="txtKeywords" runat="server" CssClass="keyword"></asp:TextBox></td>
        <td width="60" align="center"><asp:Button ID="btnSelect" runat="server" Text="查询" 
                CssClass="submit" onclick="btnSelect_Click" /></td>
        </tr>
    </table>
    <div class="spClear"></div>

    <div class="spClear"></div>
    <asp:Repeater ID="rptList" runat="server" onitemcommand="rptList_ItemCommand">
    <HeaderTemplate>
    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="msgtable">
      <tr>
        <th width="6%">选择</th>
        <th width="6%">编号</th>
        <th width="13%" align="left">会员名称</th>
        <th width="13%">会员类型</th>
        <th width="13%">电话号码</th>
        <th width="13%">手机号码</th>
        <th width="13%">地址</th>
        <th width="16%">备注</th>      
        <th width="8%">操作</th>
      </tr>
      </HeaderTemplate>
      <ItemTemplate>
      <tr>
        <td align="center"><asp:CheckBox ID="cb_id" CssClass="checkall"  runat="server" /></td>
                <td align="center"><asp:Label ID="lbID" runat="server" Text='<%#Eval("id") %>'></asp:Label></td>
                <td ><%#Eval("username")%></td>
                <td align="center"><%#Eval("TypeName")%></td>
                <td align="center"><%#Eval("tel")%></td> 
                <td align="center"><%#Eval("mobile")%></td>   
                <td align="center"><%#Eval("address")%></td>   
                <td align="center"><%#Eval("remark")%></td>                 
                <td align="center"><span><a href="edit.aspx?id=<%#Eval("id") %>">修改</a></span></td>
      </tr>
      </ItemTemplate>
      <FooterTemplate>
      </table>
      </FooterTemplate>
      </asp:Repeater>

        <div style="line-height:30px;height:30px;">
            <div id="Pagination" class="right flickr"></div>
            <div class="w380">
                <span class="btn_all" onclick="checkAll(this);">全选</span>
                <span class="btn_bg">
                  <asp:LinkButton ID="lbtnDel" runat="server" 
                    OnClientClick="return confirm( '确定要删除这些记录吗？ ');" onclick="lbtnDel_Click">删 除</asp:LinkButton>
                </span>
            </div>
	</div>
    <div id="pageer">
    
        <webdiyer:AspNetPager ID="AspNetPager1" runat="server" 
            onpagechanged="AspNetPager1_PageChanged">
        </webdiyer:AspNetPager>
    
    </div>
    </form>
</body>
</html>

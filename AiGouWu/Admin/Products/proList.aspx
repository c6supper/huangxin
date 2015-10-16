﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="proList.aspx.cs" Inherits="AiGouWu.Admin.Products.proList" %>

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
    <div class="navigation"><span class="add"><a href="ProductAdd.aspx">商品发布</a></span><b>您当前的位置：首页 &gt; 商品管理 &gt; 商品列表</b></div>
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
        <th align="left">商品名</th>
        <th>图片</th>
        <th>商品类别</th>
        <th>商品类型</th>
        <th>单位</th>
        <th>成本价</th>
        <th>批发价</th>
        <th>零售价</th>
        <th>商品规格</th>
        <th>有效期</th>
        <th>操作</th>
      </tr>
      </HeaderTemplate>
      <ItemTemplate>
      <tr>
        <td align="center"><asp:CheckBox ID="cb_id" CssClass="checkall"  runat="server" /></td>
        <td align="center"><asp:Label ID="lbID" runat="server" Text='<%#Eval("product_id") %>'></asp:Label></td>
        <td ><%#Eval("product_name")%></td>
        <td><img src="../../ProImg/<%#Eval("smallimg") %>" width="100" height="100" /></td>
        <td align="center"><%#Eval("typeName")%></td>
        <td align="center"><%#Eval("catalogname")%></td>
        <td align="center"><%#Eval("units")%></td>  
        <td align="center"><%#Eval("cost_price")%></td>  
        <td align="center"><%#Eval("wholesale_price")%></td>  
        <td align="center"><%#Eval("retail_price")%></td>  
        <td align="center"><%#Eval("spec")%></td>  
        <td align="center"><%#Eval("expiry_date")%></td>  
             
        <td align="center">
        <span><asp:LinkButton ID="lbDelete"  CommandName="bdelete" CommandArgument='<%#Eval("product_id")%>' runat="server">删除</asp:LinkButton></span>
            
        <span><a href="proedit.aspx?id=<%#Eval("product_id") %>">修改</a></span>
        <span><a href="proimgslist.aspx?id=<%#Eval("product_id")%>">地址管理</a></span>
        </td>
      </tr>
      </ItemTemplate>
      <FooterTemplate>
      </table>
      </FooterTemplate>
      </asp:Repeater>

        <div style="line-height:30px;height:30px;">
            <div id="Pagination" class="right flickr"></div>
            <div >
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

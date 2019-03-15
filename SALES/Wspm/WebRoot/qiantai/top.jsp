<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>网上商城与拍卖</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="images/css.css" type="text/css" rel="stylesheet"/>
  </head>
  <body>
  <div align="center">
	<table border="0" width="851" cellspacing="0" cellpadding="0" id="table1" height="113" style="width: 851px; height: 113px;">
		<tr>
			<td width="152" style="border-style: solid; border-width: 1px" align="center" bordercolor="#C0C0C0">
			<img border="0" src="images/logo_sd.gif" width="140px" height="67px"></td>
			<td align="center">
			<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="638" height="73">
				<param name="movie" value="images/1155349183359.swf">
				<param name="quality" value="High">
				<embed src="images/1155349183359.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="638" height="73"></object>
			</td>
		</tr>
		<tr>
			<td background="images/tu_bg.gif" colspan="2" height="29">
			<div align="center">
				<table border="0" width="80%" id="table2" cellpadding="0" height="100%" cellspacing="0">
					<tr>
						<td align="center"><a href="qiantai/index.jsp">[ 首页 ]</a></td>
						<td align="center"><a href="qiantai/affiche.jsp">[ 便民公告 ]</a></td>
						<td align="center"><a href="qiantai/reg.jsp">[ 用户注册 ]</a></td>
						<td align="center"><a href="servlet/ShowUserServlet">[ 用户中心 ]</a></td>
						<td align="center"><a href="qiantai/search.jsp">[ 商品搜索 ]</a></td>
						<td align="center"><a href="servlet/ShoppingServlet">[ 购物车 ]</a></td>
						<td align="center"><a href="qiantai/auction_list.jsp">[ 拍卖物品 ]</a></td>
						<td align="center"><a href="qiantai/auction_goods.jsp">[ 我的竞拍品 ]</a></td>
						<td align="center"><a href="servlet/RemoveServlet?login=1">[ 注销退出 ]</a></td>
					</tr>
				</table>
			</div>
			</td>
		</tr>
	</table>
</div>
  </body>
</html>
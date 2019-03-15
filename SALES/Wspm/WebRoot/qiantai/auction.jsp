<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Language" content="zh-cn">
    <base href="<%=basePath%>">  
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <body>
  <form method="post" action="" name="form1">
  <jsp:include flush="true" page="/servlet/ListServlet"></jsp:include>
  <%
  ArrayList auction = (ArrayList)request.getAttribute("auction");
  int tem = 0;
  int x = 0;
  if(auction.size()%2 == 0){
  	tem = auction.size()/2;
  }else{
  	tem = auction.size()/2+1;
  }
  for(int j = 1;j <= tem;j++){
   %>
  <table border="0" width="100%" cellspacing="0" cellpadding="0" id="table1">
	<tr>
	<%
	for(int i = j*2-2;i < auction.size();i++){
		ArrayList auctionRow = (ArrayList)auction.get(i);
	 %>
		<td>
		<div align="center">
		<table border="0" cellpadding="2">
		<tr>
			<td colspan="2" bgcolor="#C0C0C0" align="center">类别：
			<%
			ArrayList type = (ArrayList)request.getAttribute("type");
			for(int k = 0;k < type.size();k++){
				ArrayList typeRow = (ArrayList)type.get(k);
				if(typeRow.get(0).equals(auctionRow.get(8))){
					%><%=typeRow.get(1) %><%
					break;
				}
			}
			 %>
			</td>
		</tr>
		<tr>
			<td rowspan="6"><a href="servlet/AuctionInfoServlet?usershow=1&id=<%=auctionRow.get(0) %>"><img src="<%=auctionRow.get(11) %>" width="100" height="140" title="点击查看该商品详细信息" border="0"/></a></td>
			<td title="点击查看该商品详细信息">商品名称：<a href="servlet/AuctionInfoServlet?usershow=1&id=<%=auctionRow.get(0) %>"><%=auctionRow.get(1) %></a></td>
		</tr>
		<tr>
			<td>拍卖底价：<%=auctionRow.get(5) %> 元</td>
		</tr>
		<tr>
			<td>现拍卖价：<%
			if(auctionRow.get(12) == null || auctionRow.get(12).equals("")){
			%><%=auctionRow.get(5) %> 元<%
			}else{
			 %>
			<%=auctionRow.get(12) %> 元<%} %>
			</td>
		</tr>
		<tr>
			<td>开始时间：<%=auctionRow.get(9).toString().substring(0,10) %></td>
		</tr>
		<tr>
			<td>结束时间：<%=auctionRow.get(10).toString().substring(0,10) %></td>
		</tr>
		<tr>
			<td align="center"><a href="servlet/AuctionInfoServlet?userprice=1&id=<%=auctionRow.get(0) %>">我要竞拍</a></td>
		</tr>
		</table>
		</div>
		</td>
		<%
		x++;
		if(x == 2){
			x = 0;
			break;
		}
		} %>
	</tr>
	</table>
	<%} %>
	</form>
  </body>
</html>
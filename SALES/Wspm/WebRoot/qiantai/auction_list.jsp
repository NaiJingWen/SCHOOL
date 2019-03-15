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
  </head>
<%
if(request.getSession().getAttribute("login") == null || request.getSession().getAttribute("login").equals("")){
	%><script>alert('您还没有登录!');window.navigate('../qiantai/index.jsp');</script><%
}
 %>
 <%
String ok = (String)request.getAttribute("ok");
if(ok != null && ok.equals("1")){
%><script>alert('加价成功，本商品竞拍结束后，如果您的出价最高，本商城将把通知发送到您的邮箱(Email)中!')</script><%
}
 %>
  <body>
   <jsp:include flush="true" page="top.jsp"/>
  <div align="center">
	<table border="0" width="800" cellspacing="0" cellpadding="0" id="table1" style="border-style: solid; border-width: 1px" bordercolor="#C0C0C0">
		<tr>
			<td rowspan="4" width="178" valign="top">
			<jsp:include flush="true" page="left.jsp"/></td>
			<td align="center" height="20"><font color="red">想要查看最新拍卖价格，请刷新网页！！！</font></td>
		</tr>
		<tr>
			<td valign="top" align="center" height="5"></td>
		</tr>
		<tr>
			<td valign="top">
			<jsp:include flush="true" page="auction.jsp"/>
			</td>
		</tr>
	</table>
	</div>
	<jsp:include flush="true" page="Copyright.jsp"/>
  </body>
</html>
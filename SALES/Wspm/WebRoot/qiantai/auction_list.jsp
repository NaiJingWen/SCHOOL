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
	%><script>alert('����û�е�¼!');window.navigate('../qiantai/index.jsp');</script><%
}
 %>
 <%
String ok = (String)request.getAttribute("ok");
if(ok != null && ok.equals("1")){
%><script>alert('�Ӽ۳ɹ�������Ʒ���Ľ�����������ĳ�����ߣ����̳ǽ���֪ͨ���͵���������(Email)��!')</script><%
}
 %>
  <body>
   <jsp:include flush="true" page="top.jsp"/>
  <div align="center">
	<table border="0" width="800" cellspacing="0" cellpadding="0" id="table1" style="border-style: solid; border-width: 1px" bordercolor="#C0C0C0">
		<tr>
			<td rowspan="4" width="178" valign="top">
			<jsp:include flush="true" page="left.jsp"/></td>
			<td align="center" height="20"><font color="red">��Ҫ�鿴���������۸���ˢ����ҳ������</font></td>
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
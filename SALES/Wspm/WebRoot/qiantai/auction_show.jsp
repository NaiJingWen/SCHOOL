<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>

<body>
<jsp:include flush="true" page="Servlet/ListServlet"/>
<jsp:inclued flush="true" page="top.jsp"/>
<div align="center">
<table border="0" width="800" cellspacing="0" cellpadding="0" id="table1"
style="border-style:solid;border-width:1px"bordercolor="#C0C0C0" height="600">
<tr>
<td rowspan="2" width="178" valign="top" style="border-left-width:1px;
border-right-style:solid;border-right-width:1px;border-top-width:1px;
border-botton-width:1px"><jsp:include flush="true" page="left.jsp"/></td>
<td align="center" valign="top">
<br>
公告详细信息<br>
<table border="1" width="610" bordercolor="#C0C0C0">
<%
ArrayList al=(ArrayList)request.getAttribute("affches");
ArrayList affiches=(ArrayList)al.get(0);
%>
<tr>
<td height="25" bgcolor="#66CCFF" align="right" width="70">公告名称：</td>
<td height="25" bgcolor="#FFE3BB" align="center">
<%=affiches.get(1)%></td>
</tr>
<tr>
<td height="25" bgcolor="#66CCFF" align="center">
公告内容：</td>
<td height="25" bgcolor="#66CCFF" align="center">
<%=affiches.get(2)%></td>
</tr>
<tr>
<td height="25" bgcolor="#66CCFF" align="center">
添加时间：</td>
<td height="25" bgcolor="#66CCFF" align="center">
<%String str[]=affiches.get(3).toString().substring(0,11).split("-");
%></td>
</tr>
</table>
</td>
</tr>
</table>
</div>
<jsp:include flush="true" page="Copyright.jsp"/>
</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'gonggao.jsp' starting page</title>
    
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

     <jsp:include flush="true" page="/servlet/ListServlet"/>
   <jsp:include flush="true" page="top.jsp"/>
   <div align="center">
   <table border="0" width="800" cellspacing="0" cellpadding="0" id="tabel" style="border-style:solid;border-width:1px" bordercolor="#COCOCO" height="600">
   <tr>
   <td rowspan="2" width="178" valign="top" style="border-left-width:1px;border-right-style:solid;border-right-width:1px;border-top-width:1px;border-bottom-width:1px"><jsp:include flush="true" page="left.jsp"/></td>
   <td align="center" valign="top">
   <br>
   公告信息<br>
   <table border="0" width="610" id="tabel" bgcolor="#CCFFCC">
   <tr>
   <%
   ArrayList books=(ArrayList)request.getAttribute("affiche");
   for(int i=0;i<books.size();i++){
   ArrayList alRow=(ArrayList)books.get(i);
    %>
   <tr>
   <td bgcolor="#FFE3BB" align="center" height="20">
   <%
   if(alRow.get(1).toString().length()>15){
   %><a href="servlet/AfficheShowServlet?usershow=<%=alRow.get(0)%>" title="<%=alRow.get(1)%>"><%=alRow.get(1).toString().substring(0,12) %>...</a><%
   }else{
   %>
   <td align="center" valign="top">
   <br>
   公告信息<br>
   <table border="0" width="610" id="tabel" bgcolor="#CCFFCC">
   <tr>
   <td align="center">公告名称</td>
   <td align="center">公告内容</td>
   <td align="center">添加时间</td>
   </tr>
   <%ArrayList books=(ArrList)request.getAttribute("affiche");
   for(int i=0;i<books.size();i++){
   ArrayList alRow=(ArrayList)books.get(i);
   %> 
   <tr>
   <td bgcolor="#FFE3BB" align="center" height=""20>
   <%
   if(alRow.get(1).toString().lenght()>15){
    %><a href="servel/AfficheShowServlet?usershow=<%=alRow.get(0)%>" title=<%=alRow.get(1) %>"><%=alRow.get(1).toString().substring(0,12) %>...</a><%
    }else{ 
    %><td bgcolor="#FFE3BB" align="center" height="20">
    <%
    if(alRow.get(2).toString().substring(0,22)
     %>...<%
     }else{ %><%=alRow.get(2) %><%
     }
      %>
   </td>
   <td bgcolor="#FFE3BB" align="center" height="20">
   <%
   String str[]=alRow.get(3).toString().substring(0,11).split("-");
    %>
   <%=str[0]%>年<%=str[1] %>月<%=str[2].toString().trim() %>日<%=alRow.get(3).toString().subString(11,16) %>
   </td>
   </tr>
   <%} %>
   </table>
   </td>
   </tr>
   </table>
   </div>
   <jsp:include flush="true" page="Copyright.jsp"/>
  </body>
</html>

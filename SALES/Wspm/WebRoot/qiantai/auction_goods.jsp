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
	
	<link rel="stylesheet" type="text/css" href="img/css.css">
	

  </head>
<%
if(request.getSession().getAttribute("login") == null || request.getSession().getAttribute("login").equals("")){
	%><script>alert('����û�е�¼!');window.navigate('../qiantai/index.jsp');</script><%
}
 %> 
  <body>
	<div align="center">
	<jsp:include flush="true" page="/servlet/ListServlet"/>
	<jsp:include flush="true" page="/qiantai/top.jsp"/>
  	<table border="0" width="800" id="table1" bgcolor="#CCFFCC">
		<tr>
			<td align="center">������Ʒ����</td>
			<td align="center">�׼�(Ԫ)</td>
			<td align="center">�ҵľ��ļ�(Ԫ)</td>
			<td align="center">��</td>
		</tr>
		<%
		ArrayList books = (ArrayList)request.getAttribute("auctionprice");
		ArrayList auctionware = (ArrayList)request.getAttribute("auctionware");
		ArrayList login = (ArrayList)session.getAttribute("login");
		int tem = 0;
		for(int i = 0;i < books.size();i++){
			ArrayList alRow = (ArrayList)books.get(i);
			if(!alRow.get(1).equals(login.get(0))){
				tem++;
				continue;
			}
		 %>
		<tr>
			<td bgcolor="#FFE3BB" align="center" height="20">
			<%
			for(int j = 0;j < auctionware.size();j++){
				ArrayList auctionwareRow = (ArrayList)auctionware.get(j);
				if(auctionwareRow.get(0).equals(alRow.get(2))){
					%><a href="servlet/AuctionInfoServlet?usershow=1&id=<%=alRow.get(2) %>"><%=auctionwareRow.get(1) %></a><%
					break;
				}
			}
			 %>
			</td>
			<td bgcolor="#FFE3BB" align="center" height="20">
			<%
			for(int j = 0;j < auctionware.size();j++){
				ArrayList auctionwareRow = (ArrayList)auctionware.get(j);
				if(auctionwareRow.get(0).equals(alRow.get(2))){
					%><%=auctionwareRow.get(5) %><%
					break;
				}
			}
			 %>
			</td>
			<td bgcolor="#FFE3BB" align="center" height="20"><%=alRow.get(3)%></td>
			<td bgcolor="#FFE3BB" align="center" height="20">
			<%
			if(alRow.get(4).equals("1")){
				%><font color="#ff0000">���ĳɹ�</font><% 
			} else {
				%>����δ�ɹ�<%
			}
			 %>
			</td>
		</tr>
		<%} %>
		<%if(tem == auctionware.size()){ %>
		<tr>
		<td colspan="4" align="center">��δ�μӾ�����Ʒ���������ĵ���Ʒ�ļ۸��ѱ����˳���</td>
		</tr>
		<%} %>
	</table>
  	</div>
  </body>
</html>
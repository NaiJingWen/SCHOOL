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
  <script language="JavaScript">
		function login11(xian,id)
			{
				
				if (document.form1.price.value == "" ) 
				{
					alert("���ľ��ļ۲���Ϊ��!");
					document.form1.price.focus();
					return false;
				}
				if (isNaN(document.form1.price.value)  )  
				{
					alert("���ľ��ļ۱���������!");
					document.form1.price.focus();
					return false;
				}
				if (document.form1.price.value <= xian  )  
				{
					alert("���ľ��ļ۱�������־��ļ�!");
					document.form1.price.focus();
					return false;
				}
				else
				{
					document.form1.action="servlet/AuctionAddPriceServlet?id="+id;
					document.form1.submit();
				}
			}
</script>
<%
if(request.getSession().getAttribute("login") == null || request.getSession().getAttribute("login").equals("")){
	%><script>alert('����û�е�¼!');window.navigate('../qiantai/index.jsp');</script><%
}
 %> 
 <%
String error = (String)request.getAttribute("error");
if(error != null && error.equals("1")){
%><script>alert('�����ļ۸������־��ļ۸�!')</script><%
}
 %>
  <body>
	<div align="center">
	<jsp:include flush="true" page="/servlet/ListServlet"/>
	<jsp:include flush="true" page="/qiantai/top.jsp"/>
	<form action="" method="post" name="form1">
	<table width="800" height="450" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-width: 1px; border-bottom-width: 1px" bordercolordark="#FFFFFF" bordercolorlight="#C0C0C0" bordercolor="#C0C0C0"><tr align="center">
		<td valign="top">
	<table border="1" width="43%" bordercolorlight="#C0C0C0">
	<%
 	 ArrayList type = (ArrayList)request.getAttribute("type");
 	 ArrayList al = (ArrayList)request.getAttribute("auctions");
 	 ArrayList auctionwares = (ArrayList)al.get(0);
	 %>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="center" colspan="2">������Ʒ��ϸ��Ϣ</td>
		</tr>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="right">��Ʒ���ƣ�</td>
			<td height="25" bgcolor="#FFE3BB">
			&nbsp;<%=auctionwares.get(1) %></td>
		</tr>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="right">�������ң�</td>
			<td height="25" bgcolor="#FFE3BB">
			&nbsp;<%=auctionwares.get(2) %></td>
		</tr>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="right">�������ڣ�</td>
			<td height="25" bgcolor="#FFE3BB">
			&nbsp;<%=auctionwares.get(3) %></td>
		</tr>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="right">��&nbsp;&nbsp;&nbsp; ��</td>
			<td height="25" bgcolor="#FFE3BB">
			&nbsp;<%=auctionwares.get(4) %></td>
		</tr>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="right">�����׼ۣ�</td>
			<td height="25" bgcolor="#FFE3BB">
			&nbsp;<%=auctionwares.get(5) %> Ԫ</td>
		</tr>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="right">��Ʒ���ܣ�</td>
			<td height="25" bgcolor="#FFE3BB">
			&nbsp;<%=auctionwares.get(7) %></td>
		</tr>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="right">��Ʒ���</td>
			<td height="25" bgcolor="#FFE3BB">
			<%
            for(int i = 0;i < type.size();i++){
            	ArrayList alRow = (ArrayList)type.get(i);
            	if(alRow.get(0).equals(auctionwares.get(8))){
            		%>&nbsp;<%=alRow.get(1) %><%
            		break;
            	}}%>
			</td>
		</tr>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="right">
			������ʼʱ�䣺</td>
			<td height="25" bgcolor="#FFE3BB">
			&nbsp;<%=auctionwares.get(9).toString().substring(0,10) %></td>
		</tr>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="right">
			��������ʱ�䣺</td>
			<td height="25" bgcolor="#FFE3BB">
			&nbsp;<%=auctionwares.get(10).toString().substring(0,10) %></td>
		</tr>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="right">
			�־��ļۣ�</td>
			<td height="25" bgcolor="#FFE3BB">
			<%
			if(auctionwares.get(12) == null || auctionwares.get(12).equals("")){
				%>&nbsp;<%=auctionwares.get(5) %> Ԫ<%
			}else{
			 %>
			&nbsp;<%=auctionwares.get(12) %> Ԫ
			<%} %></td>
		</tr>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="right">
			���ľ��ļۣ�</td>
			<td height="25" bgcolor="#FFE3BB">
			<input type="text" name="price" size="20"></td>
		</tr>
		<tr>
			<td height="25" bgcolor="#66CCFF" align="center" colspan="2">
			��<input type="button" value="�ύ�۸�" onclick="login11(
			<%
			if(auctionwares.get(12) == null || auctionwares.get(12).equals("")){
				%><%=auctionwares.get(5) %><%
			}else{
			 %><%=auctionwares.get(12) %><%} %>,<%=auctionwares.get(0) %>
			)"></td>
		</tr>
		</table>
		</td></tr></table>
	</form>
  	</div>
  	<jsp:include flush="true" page="Copyright.jsp"/>
  </body>
</html>
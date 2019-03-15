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
  
  <body>
  <jsp:include flush="true" page="/servlet/ListServlet"/>
  <%
  ArrayList al = (ArrayList)request.getAttribute("bookinf");
  ArrayList bookinf = (ArrayList)al.get(0);
  ArrayList type = (ArrayList)request.getAttribute("type");
  ArrayList tate = (ArrayList)request.getAttribute("tate");
   %>
   <jsp:include flush="true" page="top.jsp"/>
  <div align="center">
	<table border="0" width="800" cellspacing="0" cellpadding="0" id="table1" style="border-style: solid; border-width: 1px" bordercolor="#C0C0C0">
		<tr>
			<td rowspan="2" width="178" valign="top"><jsp:include flush="true" page="left.jsp"/></td>
			<td>
			<table border="1" width="100%" style="border-style: solid; border-width: 1px" bordercolorlight="#C0C0C0" bordercolordark="#FFFFFF" height="334">
		<tr>
			<td colspan="2" align="center">商品信息</td>
		</tr>
		<tr>
			<td rowspan="7" width="31%" align="center"><a target="_blank" href="<%=bookinf.get(11)%>"><img alt="点击浏览商品大图" src="<%=bookinf.get(11)%>" width="65" height="96" border="0"></td>
			<td height="30" width="67%">【商品名称】<%=bookinf.get(1)%></td>
		</tr>
		<tr>
			<td height="30" width="67%">【生产厂家】<%=bookinf.get(2)%></td>
		</tr>
		<tr>
			<td height="30" width="67%">【生产日期】<%=bookinf.get(3)%></td>
		</tr>
		<tr>
			<td height="30" width="67%">【规&nbsp;&nbsp;&nbsp; 格】<%=bookinf.get(4)%></td>
		</tr>
		<tr>
			<td height="30" width="67%">【商品库存】<%=bookinf.get(6)%> </td>
		</tr>
		<tr>
			<td height="30" width="67%">
			<%
            for(int i = 0;i < type.size();i++){
            	ArrayList alRow = (ArrayList)type.get(i);
            	if(alRow.get(0).equals(bookinf.get(8))){ 
            %>
             【所属类别】<%=alRow.get(1)%>
              <%break;}} %>
			</td>
		</tr>
		<tr>
			<td height="30" width="67%">
			<%
            for(int i = 0;i < tate.size();i++){
            	ArrayList alRow = (ArrayList)tate.get(i);
            	if(alRow.get(0).equals(bookinf.get(9))){ 
            %>
              【商品等级】<%=alRow.get(1)%>
              <%break;}} %>
			</td>
		</tr>
		<tr>
			<td rowspan="2" width="31%" align="center"><a target="_blank" href="<%=bookinf.get(11)%>"><img height="36px" src="images/view2.gif" width="115px" border="0"></a></td>
			<td height="30" width="67%">&nbsp;会员价：<%=bookinf.get(5)%> 元</td>
		</tr>
		<tr>
			<td height="30" width="67%">
  			<strong>&nbsp;VIP价</strong>：<font color="#ff9999">更优惠！</font></td>
		</tr>
		<tr>
			<td colspan="2" align="center" height="45"><a href="servlet/ShoppingServlet?bookId=<%=bookinf.get(0)%>"><img src="images/shopcart2.gif" border="0" alt=""></a></td>
		</tr>
	</table>
			</td>
		</tr>
		<tr>
			<td>
			<table border="1" width="100%" cellspacing="0" cellpadding="0" style="border-style: solid; border-width: 1px" bordercolorlight="#C0C0C0" bordercolordark="#FFFFFF">
		<tr>
			<td height="37"><img src="images/view0.gif"/></td>
		</tr>
		<tr>
			<td><textarea rows="10" name="S1" cols="85" disabled ><%=bookinf.get(7)%></textarea>
　</td>
		</tr>
	</table>
			</td>
		</tr>
	</table>
	</div>
	<jsp:include flush="true" page="Copyright.jsp"/>
  </body>
</html>
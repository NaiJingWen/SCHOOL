<?php 
session_start();
require("conn.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<style type="text/css">
.yes1 {
	text-align: center;
	font-size: 24px;
	font-weight: bold;
	font-family: "华文楷体";
}
.yes1 {
	text-align: center;
}
.yes1 {
	text-align: center;
}
.yes1 {
	text-align: center;
}
.yes2 {
	text-align: center;
	font-family: "华文楷体";
}
.yes2 {
	font-size: 16px;
}
.yes2 {
	font-size: 18px;
}
.yes2 {
	font-weight: bold;
	color: #FFF;
}
.yes3 {
}
.yes3 {
	color: #FFF;
	font-size: 24;
}
.yes3 {
	text-align: center;
}
.yes3 {
	text-align: left;
}
.yes4 {
	font-size: 18px;
	color: #FFF;
	font-family: "华文楷体";
	font-weight: bold;
	text-align: left;
}
.yes5 {
	text-align: left;
}
.yes5 {
	text-align: left;
}
.yes5 {
}
.yes5 {
	font-weight: bold;
	text-align: left;
}
.yes6 {
	font-family: "华文楷体";
}
.yes6 {
	font-size: 18px;
	color: #FFF;
	text-align: center;
}
.yes7 {
	text-align: center;
}
.yes7 {
}
.yes7 {
	text-align: left;
}
.yes7 {
	text-align: left;
}
.yes7 {
	text-align: left;
}
.yes8 {
	text-align: left;
}
.yes8 {
	text-align: center;
}
.yes8 {
	font-size: 18px;
	font-family: "华文楷体";
	color: #FFF;
}
.yes9 {
	text-align: center;
}
.yes11 {
	text-align: center;
}
.yes11 {
	text-align: center;
}
.yes12 {
	font-family: "华文楷体";
	font-size: 36px;
	font-weight: bold;
	text-align: left;
}
.yes13 {
	font-family: "华文楷体";
	font-size: 24px;
	text-align: left;
	font-weight: bold;
	color: #000;
	font-style: normal;
}
.yes14 {
	font-family: "华文楷体";
	font-size: 14px;
	font-style: italic;
	font-weight: bold;
}
.yes15 {
	color: #F00;
	font-size: 18px;
}
.yes16 {
	font-size: 16px;
	color: #000;
}
.yes17 {
	font-size: 24px;
}
.yes18 {
	text-align: center;
}
.yes000 {
	text-align: center;
}
a:link {
	text-decoration: none;
	color: #F60;
}
a:visited {
	text-decoration: none;
	color: #93F;
}
a:hover {
	text-decoration: none;
	color: #FF0;
}
a:active {
	text-decoration: none;
	color: #0F0;
}
.yes999 {
	text-align: left;
}
</style>
</head>

<body>


</table>
<table width="950" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"  align="center"><br>
	<form id="searchForm" action="./search.php" method="post">

					输入图书名称<input class="inputText" id="goodsName" size="20" onKeyPress="if(event.keyCode==13){searchFormSubmit();return false;}" name="goodsName" type="text" />

					<input type="submit" value="搜索">

	  </form></td><td height="30" align="center">
		<script type="text/javascript">

	        function login()
	        {
	           if(document.userLogin.name.value=="")
	           {
	               alert("请输入用户名");
return(false);
}
	           if(document.userLogin.Pwd.value=="")
	           {
	               alert("请输入密码");
				   
	              return(false);
	           }
   return(true);
	        }
			

	</script>
<?php
if($_SESSION[login]=="")
{
?>

<form action="login.php?act=login" name="userLogin" method="post" onSubmit="return login()">用户名：<input class="input" id="name" title="用户名不能为空" size="14" name="userName" type="text" />密　码：<input class="input" title="密码不能为空" type="Pwd" size="16" name="userPw"/>  <input type="submit" value="登  录"  style="border:#ccc 1px solid; background-color:#FFFFFF; font-size:12px; padding-top:3px;" />


<?php
} 

 else
  {
   ?>
			     欢迎您：<?php echo $_SESSION[login]?> &nbsp;<a href="./myorder.php">我的订单</a>&nbsp;
			    <a href="./logout.php">安全退出</a>  &nbsp;&nbsp;&nbsp;&nbsp;


<?php
	}

	?>
</td>
  </tr>
</table></form>
      </tr>
      <tr>
        <td><table width="80%" border="0" align="center">
          <tr bgcolor="#6699FF" class="yes2">
            <td width="10%" height="32"><a href="index.php">首页</a></td>
            <td width="10%"><a href="yushou.php">预售</a></td>
            <td width="10%"><a href="number.php">数字内容</a></td>
            <td width="10%"><a href="knowledge.php">知识服务</a></td>
            <td width="10%"><a href="reg.php">陪伴计划</a></td>
            <td width="10%"><a href="dianzhishu.php">电子书</a></td>
            <td width="10%"><a href="specialshop.php">特色书店</a></td>
            <td width="10%"><a href="goodprice.php">图好价</a></td>
          </tr>
        </table></td>
</tr>
    </table>
      <table width="100%" border="0" align="center">
        <tr>
          <td width="13%" height="455"><table width="100%" height="445" border="0" align="right">
            <tr>
              <td align="left" bgcolor="#3300FF" class="yes4"><a href="fenlei.php" class="yes999">图书分类</a></td>
            </tr>
            <tr>
              <td bgcolor="#3300FF" class="yes4"><span class="yes4"><span class="yes11"><a href="specialclass.php">特色分类</a></span></span></td>
              </tr>
            <tr>
              <td bgcolor="#3300FF" class="yes4">文学综合馆</td>
              </tr>
            <tr>
              <td bgcolor="#3300FF" class="yes4">童书馆</td>
              </tr>
            <tr>
              <td bgcolor="#3300FF" class="yes4">教育馆</td>
              </tr>
            <tr>
              <td bgcolor="#3300FF" class="yes4">人文社科馆</td>
              </tr>
            <tr>
              <td bgcolor="#3300FF" class="yes4">经管综合馆</td>
              </tr>
            <tr>
              <td bgcolor="#3300FF" class="yes4">励志成功馆</td>
              </tr>
            <tr>
              <td bgcolor="#3300FF" class="yes4">生活馆</td>
              </tr>
            <tr>
              <td bgcolor="#3300FF" class="yes4">艺术馆</td>
              </tr>
            <tr>
              <td height="28" bgcolor="#3300FF" class="yes4">科技馆</td>
              </tr>
            <tr>
              <td height="25" bgcolor="#3300FF" class="yes4">原版书</td>
              </tr>
            <tr>
              <td height="22" bgcolor="#3300FF" class="yes4"><a href="number.php">数字内容</a></td>
              </tr>
            <tr>
              <td height="25" bgcolor="#3300FF" class="yes4">杂志/期刊</td>
              </tr>
            <tr>
              <td height="43" bgcolor="#3300FF" class="yes4"><a href="specialshop.php">特色书店</a></td>
              </tr>
          </table></td>
          <td width="72%" align="center" valign="middle"><img src="images/5aaa498bN47677509.jpg" width="938" height="446" align="middle" /></td>
          <td width="15%"><table width="101%" height="453" border="0">
            <tr>
              <td height="109" colspan="2"><table width="101%" height="112" border="0">
                <tr>
                  <td width="54%" height="108"><img src="images/CI.jpg" width="98" height="102" align="right" /></td>
                  <td width="46%" bgcolor="#0066FF"><p class="yes4">刺</p>
                    <p class="yes4"><span class="yes8"></span>80.20元</p></td>
                </tr>
              </table></td>
            </tr>
            <tr>
              <td width="54%" height="116"><img src="images/believe.jpg" width="97" height="112" align="right" /></td>
              <td width="46%" bgcolor="#0066FF" class="yes5"><p class="yes5"><span class="yes6"><span class="yes4">谁会相信我</span></span></p>
                <p class="yes5"><span class="yes8">20.00元</span></p></td>
            </tr>
            <tr>
              <td><img src="images/red.jpg" width="100" height="100" align="right" /></td>
              <td bgcolor="#0066FF"><p class="yes5"><span class="yes6">红楼梦</span></p>
                <p class="yes5"><span class="yes6">39.00元</span></p></td>
            </tr>
            <tr>
              <td height="109"><img src="images/history.jpg" width="99" height="103" align="right" /></td>
              <td bgcolor="#0066FF"><p class="yes7"><span class="yes6"><span class="yes5">万物简史</span></span></p>
                <p class="yes7"><span class="yes6"><span class="yes5">39.99</span>元</span></p></td>
            </tr>
          </table></td>
        </tr>
      </table>
<table width="100%" border="0">
        <tr>
          <td height="282" bgcolor="#CCFFFF"><table width="100%" border="0">
</table>
<?php
require("header.php");
if($act=="save")
{
$sql="select * from `user` where name='$usernc'";
$res=mysql_query($sql);
if(!mysql_num_rows($res))
	{
	$sql="insert into `user` (name,pwd,dongjie,email,sfzh,tel,qq,dizhi,youbian,truename) values ('$usernc','$p1','$dongjie','$email','$sfzh','$tel','$qq','$dizhi','$youbian','$truename')";
$res=mysql_query($sql);
	if($res)
	{
	echo "<script>alert('注册成功');location.href='index.php';</script>";
	exit;
	}
	else
	{
	exit("失败了");
	}
	}

else
{
	echo "<SCRIPT LANGUAGE='JavaScript'>alert('失败,帐号已存在');history.back();</SCRIPT>";
	exit;
}
}
?><script language="javascript">
  function chkinput(form)
  {
    if(form.usernc.value=="")
	{
	 alert("请输入帐号!");
	 form.usernc.select();
	 return(false);
	}
	if(form.p1.value=="")
	{
	 alert("请输入注册密码!");
	 form.p1.select();
	 return(false);
	}
    if(form.p2.value=="")
	{
	 alert("请输入确认密码!");
	 form.p2.select();
	 return(false);
	 }
	if(form.p1.value.length<6)
	 {
	 alert("注册密码长度应大于6!");
	 form.p1.select();
	 return(false);
	 }
	if(form.p1.value!=form.p2.value)
	 {
	 alert("密码与重复密码不同!");
	 form.p1.select();
	 return(false);
	 }
   if(form.email.value=="")
	{
	 alert("请输入电子邮箱地址!");
	 form.email.select();
	 return(false);
	 }
	if(form.email.value.indexOf('@')<0)
	{
	 alert("请输入正确的电子邮箱地址!");
	 form.email.select();
	 return(false);
	 }
   if(form.tel.value=="")
	{
	 alert("请输入联系电话!");
	 form.tel.select();
	 return(false);
	 }
  if(form.truename.value=="")
	{
	 alert("请输入真实姓名!");
	 form.truename.select();
	 return(false);
	 }
  if(form.sfzh.value=="")
	{
	 alert("请输入身份证号!");
	 form.sfzh.select();
	 return(false);
	 }

   return(true);
  }
</script>

<table width="950" border="0" cellspacing="0" cellpadding="0" align="center">
 <tr>
    <td width="950" height="34" class="menu_bar">用户注册</td>
  </tr></table>
<form action="?act=save" name="f" method="post" onSubmit="return chkinput(this)">
		                        <table width="99%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
					              <tr align='center' bgcolor="#FFFFFF" height="22">
					                  <td align="right">用户帐号：</td>
					                  <td align="left">
					                      <input type="text" name="usernc" size="25" class="inputcss" >
					                  </td>
					              </tr>
					              <tr align='center' bgcolor="#FFFFFF" height="22">
					                  <td align="right">密码：</td>
					                  <td align="left">
                          <input type="password" name="p1" size="25" class="inputcss" >
					                  </td>
					              </tr>
					              <tr align='center' bgcolor="#FFFFFF" height="22">
					                  <td align="right">确认密码：</td>
					                  <td align="left">
                          <input type="password" name="p2" size="25" class="inputcss" >
					                  </td>
					              </tr><tr align='center' bgcolor="#FFFFFF" height="22">
					                  <td align="right">真实姓名：</td>
					                  <td align="left">
                          <input type="text" name="truename" size="25" class="inputcss" >

		                              </td>
					              </tr>
					              <tr align='center' bgcolor="#FFFFFF" height="22">
					                  <td align="right">邮箱：</td>
					                  <td align="left">
                          <input type="text" name="email" size="25" class="inputcss" >
					                  </td>
					              </tr>
					              <tr align='center' bgcolor="#FFFFFF" height="22">
					                  <td align="right">联系qq：</td>
				                    <td align="left">                          <input type="text" name="qq" size="25" class="inputcss" >
</td>
					              </tr>
					              <tr align='center' bgcolor="#FFFFFF" height="22">
					                  <td align="right">邮政编码：</td>
					                  <td align="left">
	 <input type="text" name="youbian" size="25" class="inputcss" >

		                              </td>
					              </tr>

								    <tr align='center' bgcolor="#FFFFFF" height="22">
					                  <td align="right">联系电话：</td>
					                  <td align="left">
                          <input type="text" name="tel" size="25" class="inputcss" >

		                              </td>
					              </tr>

								    <tr align='center' bgcolor="#FFFFFF" height="22">
					                  <td align="right">身份证号：</td>
					                  <td align="left">
                          <input type="text" name="sfzh" size="25" class="inputcss" >

		                              </td>
					              </tr>
								     <tr align='center' bgcolor="#FFFFFF" height="22">
					                  <td align="right">邮寄地址：</td>
					                  <td align="left">
                          <input type="text" name="dizhi" size="25" class="inputcss" >

		                              </td>
					              </tr>
                                     <tr align='center' bgcolor="#FFFFFF" height="22">
					                  <td align="right">&nbsp;</td>
					                  <td align="left"> <input type="submit" value="注 册 提 交"  style="border:#ccc 1px solid; background-color:#FFFFFF; font-size:12px; padding-top:3px;" /></td>
					              </tr>
		        				</table>

				            </form>


<?php
require("footer.php");
?>
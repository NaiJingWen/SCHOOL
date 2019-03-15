<?php
require("header.php");

?>
<table width="950" border="0" cellspacing="0" cellpadding="0" align="center">
 <tr>
    <td width="950" height="34" align="left" valign="middle" class="menu_bar">图书分类</td>
  </tr></table><table width="100%" cellpadding="0" cellspacing="0" border="0">
<?php
						$sql="select * from fenlei where reid=0";
$result=mysql_query($sql);
while($data=mysql_fetch_array($result))
{
						?>
		          <tr>
		             <td width="100%" height="28" bgcolor="#0099FF" id="roll-line-1607838439">
		                <div class="" style="padding:2px 0px;">

		                   <div class="f-left"><img src="./images/head-mark3.gif" align="middle" class="img-vm" border="0"/>
		                      <a href="./cat.php?dalei=<?php echo $data[id]?>">
		                         <span style="font-size:14px;color:red"><?php echo $data[name]?></span></a>->
<?php
							   	$sq="select * from fenlei where reid=$data[id]";
$res=mysql_query($sq);
while($d=mysql_fetch_array($res))
echo  '<a href="./cat.php?xiaolei='.$d[id].'">                        <span style="font-size:14px;">'.$d[name].'</span></a>&nbsp;';
						?>


		                   </div>

		                   <div class="clear"></div>
		                </div>
		              </td>

		          </tr> <?php
							}
							?>

		 </table><?php
require("footer.php");
?>
<?php
require("header.php");

?><table width="950" border="0" cellspacing="0" cellpadding="0" align="center">
 <tr>
    <td width="950" height="34" class="menu_bar">图书分类浏览</td>
  </tr></table>

	<table width="99%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
					              <tr align="center" bgcolor="#FAFAF1" height="22">
					                  <td>图书名称</td>
					                  <td>市场价</td>
					                  <td>会员价</td>
					                  <td>图书图片</td>
					                  <td>操作</td>
					              </tr>
<?php
if($dalei!="")
$sql="select * from book where dalei=$dalei order by bookID DESC";
else
$sql="select * from book where xiaolei=$xiaolei order by bookID DESC";

			$result=mysql_query($sql);
while($data=mysql_fetch_array($result)){


?>
								  <tr align='center' bgcolor="#FFFFFF" height="22">
									  <td><a href="goodsDetail.php?goodsId=<?php echo $data[bookID]?>"><?php echo $data[name]?></a></td>
									  <td>￥<?php echo $data[price]?><br/></td>
									  <td>￥<?php echo $data[preferprice]?></td>
									  <td><a href="goodsDetail.php?goodsId=<?php echo $data[bookID]?>"> <img width="60" height="60" src="<?php echo $data[picture]?>" border=0 /> </a></td>
									  <td><a href="cart.php?id=<?php echo $data[bookID]?>&act=buy"><img alt="" src="./images/icon_buy.gif" border=0/></a></td>
								  </tr>
<?php
}
	?>
		        			</table>


<?php
require("footer.php");
?>
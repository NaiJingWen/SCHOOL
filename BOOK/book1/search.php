<?php 
require("header.php");
?>

<table width="100%" border="0">
        <tr>
          <td height="102" bgcolor="#CCFFFF"><table width="100%" border="0">
          </table>
<table width="950" border="0" cellspacing="0" cellpadding="0" align="center">
              <tr>

 <table width="950" border="0" cellspacing="0" cellpadding="0" align="center">
 <tr>
    <td width="950" height="34" class="menu_bar">关键字:"<font color=red> <?php echo $goodsName?> </font>"的搜索结果</td>
  </tr></table>
 <table width="99%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
					              <tr align="center" bgcolor="#FAFAF1" height="22">
					                  <td>图书名称</td>
					                  <td>价格</td>
					                  <td>会员价</td>
					                  <td>图书图片</td>
					                  <td>操作</td>
					              </tr>
<?php

$sql="select * from book where Bookname like '%$goodsName%' order by bookID DESC";


			$result=mysql_query($sql);
while($data=mysql_fetch_array($result)){


?>
								  <tr align='center' bgcolor="#FFFFFF" height="22">
									  <td><a href="goodsDetail.php?goodsId=<?php echo $data[id]?>"><?php echo $data[Bookname]?></a></td>
									  <td>￥<?php echo $data[price]?><br/></td>
									  <td>￥<?php echo $data[preferprice]?></td>
									  <td><a href="goodsDetail.php?goodsId=<?php echo $data[id]?>"> <img width="60" height="60" src="<?php echo $data[picture]?>"/> </a></td>
									  <td><a href="cart.php?id=<?php echo $data[id]?>&act=buy"><img alt="" src="./images/icon_buy.gif" border=0/></a></td>
								  </tr>
<?php
}
	?></table>

          </table></td>
  </tr>

<?php 
require("footer.php");
?>

</body>
</html>
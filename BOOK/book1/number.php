<?php 
require("header.php");
?>

          
            <table width="100%" border="0">
              <tr>
                        <td colspan="5" bgcolor="#FF9999" class="yes12">数字内容</td>
  </tr>
  </table>
  <table width="99%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
					              <tr align="center" bgcolor="#FAFAF1" height="22">
					                  <td bgcolor="#33CCFF">图书名称</td>
				                    <td bgcolor="#33CCFF">市场价</td>
				                    <td bgcolor="#33CCFF">会员价</td>
				                    <td bgcolor="#33CCFF">图书图片</td>
					                  <td bgcolor="#33CCFF">操作</td>
					              </tr>
<?php

$sql="select * from book where numberserver=2 order by bookID DESC";


			$result=mysql_query($sql);
while($data=mysql_fetch_array($result)){

?>
	 <tr align='center' bgcolor="#FFFFFF" height="22">
		 <td bgcolor="#FFCCFF"><a href="goodsDetail.php?goodsId=<?php echo $data[bookID]?>"><?php echo $data[Bookname]?></a></td>
	    <td bgcolor="#FFCCFF">￥<?php echo $data[price]?><br/></td>
		 <td bgcolor="#FFCCFF">￥<?php echo $data[preferprice]?></td>
		 <td bgcolor="#FFCCFF"><a href="goodsDetail.php?goodsId=<?php echo $data[bookID]?>"> <img width="60" height="60" src="<?php echo $data[picture]?>" border=0/> </a></td>
		 <td bgcolor="#FFCCFF"><a href="cart.php?id=<?php echo $data[bookID]?>&act=buy"><img alt="" src="./images/icon_buy.gif" border=0 /></a></td>
	 </tr>
<?php
}
	?>
	</table>
 
<?php 
require("footer.php");
?>


</body>
</html>
<?php 
require("header.php");
?>

          
            <table width="100%" border="0">
              <tr>
                        <td colspan="5" bgcolor="#CCCCFF" class="yes12">特色书店</td>
  </tr>
  </table>
  <table width="99%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
					              <tr align="center" bgcolor="#FAFAF1" height="22">
					                  <td bgcolor="#FFCCFF">图书名称</td>
				                    <td bgcolor="#FFCCFF">市场价</td>
				                    <td bgcolor="#FFCCFF">会员价</td>
				                    <td bgcolor="#FFCCFF">图书图片</td>
					                  <td bgcolor="#FFCCFF">操作</td>
					              </tr>
<?php

$sql="select * from book where specialbookshop=5 order by bookID DESC";


			$result=mysql_query($sql);
while($data=mysql_fetch_array($result)){

?>
	 <tr align='center' bgcolor="#FFFFFF" height="22">
		 <td bgcolor="#FFFFCC"><a href="goodsDetail.php?goodsId=<?php echo $data[bookID]?>"><?php echo $data[Bookname]?></a></td>
	    <td bgcolor="#FFFFCC">￥<?php echo $data[price]?><br/></td>
		 <td bgcolor="#FFFFCC">￥<?php echo $data[preferprice]?></td>
		 <td bgcolor="#FFFFCC"><a href="goodsDetail.php?goodsId=<?php echo $data[bookID]?>"> <img width="60" height="60" src="<?php echo $data[picture]?>" border=0/> </a></td>
		 <td bgcolor="#FFFFCC"><a href="cart.php?id=<?php echo $data[bookID]?>&act=buy"><img alt="" src="./images/icon_buy.gif" border=0 /></a></td>
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
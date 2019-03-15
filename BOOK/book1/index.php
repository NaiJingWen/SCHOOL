<?php 
require("header.php");
?>

            <table width="100%" border="0">
              <tr>
                        <td colspan="5" bgcolor="#6666FF" class="yes12">最新图书</td>
  </tr>
  </table>
  
  <table width="1100" border="0" cellspacing="0" cellpadding="0" align="center">
     <tr>
<?php
$sql="select * from book order by bookID DESC limit 0,30";
$i=0;
$res=mysql_query($sql);
while($data=mysql_fetch_array($res))
{
	if($i%5==0 &&$i!=0) echo "</tr><tr><td colspan=5 height=10></td></tr><tr>";
	$i++;

?>
 <td bgcolor="#CCFFFF" >
 
 <TABLE  border=0 align="center" cellPadding=2 cellSpacing=1 bgColor=#8FCB69
               onMouseOver="this.style.backgroundColor='#FF6600'" onMouseOut="this.style.backgroundColor=''">
            
	<TBODY>
         <TR>
              <TD bgColor=#ffffff align=center>

  <a href="goodsDetail.php?goodsId=<?php echo $data[bookID]?>"><img src="<?php echo $data[picture]?>" 
  
      width="180" height="180" border="0"></a>

  </TD>
                </TR>
                <TR>
                <TD width=180 bgColor=#CCFFFF align=center>
              <a href="goodsDetail.php?bookID=<?php echo $data[bookID]?>">
			  <?php echo $data[Bookname]?></a>
             <br>
            <font color=blue> 价格:<?php echo $data[price]?><br>
            
           
             <font color=red>会员价:
			           <?php echo $data[preferprice]?>
            </TD>
             
                </TR>
              
              </TBODY>

      </table>
          </td>       <?php 
				
				}
				?>
        </tr>
          </table></td>
        </tr>
      </table>

<?php 
require("footer.php");
?>
</body>
</html>
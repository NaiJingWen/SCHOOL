<?php
error_reporting(E_ALL ^ E_NOTICE);//报错级别设置
     $conn=mysql_connect("localhost","root","root") or die("数据库服务器连接错误".mysql_error());
     mysql_select_db("www",$conn) or die("数据库访问错误".mysql_error());
     mysql_query("set names utf8");   //设置字符集
     date_default_timezone_set('PRC');  //设置时区


function get_name($id,$table)
{
	$sql="select * from $table where id=$id";
	$r=mysql_query($sql);
	$rows=mysql_fetch_array($r);

	return $rows[name];
}

	   ?>
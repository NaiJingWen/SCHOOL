package com;
import javax.swing.JOptionPane;
import javax.swing.table.AbstractTableModel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

//学生数据模型类
public class StudentModel extends AbstractTableModel{
	
	Vector rowData,colName;
	
	public StudentModel()
	{
		colName = new Vector();
		rowData = new Vector();
		
		//连接数据库，给Vector添加记录
		//添加列名
		colName.add("学号");
		colName.add("姓名");
		colName.add("性别");
		colName.add("生日");
		colName.add("记过次数");
		
		//添加行数据
		//连库查询
		Connection conn = null;
		Statement stmt =null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		//连接数据库，判断用户是否合法
		try {
			//1 加载驱动
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			
			//2 注册驱动程序,打开连接对象
			conn = DriverManager.getConnection("jdbc:sqlserver://127.0.0.1:1433;databaseName=jw", "sa", "sa");
////		3 获取语句对象
			stmt = conn.createStatement();	
//			4 执行操作
			rs = stmt.executeQuery("select * from Student");
			Vector vt ;//用于存放每一行数据
			while(rs.next())
			{
				vt = new Vector();
				vt.add(rs.getString("stu_no"));
				vt.add(rs.getString("StuName"));
				vt.add(rs.getString("ClassNo"));
				vt.add(rs.getString("Birthdate"));
				vt.add(rs.getString("stu_error"));
				rowData.add(vt);
			}

		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException ex) {
			// TODO Auto-generated catch block
			ex.printStackTrace();
		}
		finally
		{
			//5 释放语句对象，连接对象
			try
			{
				if(rs!=null) rs.close();
				if(stmt!=null) stmt.close();
				if(conn!=null) conn.close();
			}catch(Exception ex)
			{
				ex.printStackTrace();
			}
			
		}
	}
	
	//带sql参数构造方法
	public StudentModel(String strsql)
	{
		colName = new Vector();
		rowData = new Vector();
		
		//连接数据库，给Vector添加记录
		//添加列名
		colName.add("学号");
		colName.add("姓名");
		colName.add("性别");
		colName.add("生日");
		colName.add("记过次数");
		
		//添加行数据
		//连库查询
		Connection conn = null;
		Statement stmt =null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		//连接数据库，判断用户是否合法
		try {
			//1 加载驱动
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			//2 创建连接对象
			String url ="jdbc:sqlserver://127.0.0.1:1433;databaseName=jw";
			//2 注册驱动程序,打开连接对象
			conn = DriverManager.getConnection(url, "sa", "sa");
////		3 获取语句对象
			stmt = conn.createStatement();	
//			4 执行操作
			rs = stmt.executeQuery(strsql);
			Vector vt ;//用于存放每一行数据
			while(rs.next())
			{
				vt = new Vector();
				vt.add(rs.getString("stu_no"));
				vt.add(rs.getString("StuName"));
				vt.add(rs.getString("ClassNo"));
				vt.add(rs.getString("Birthdate"));
				vt.add(rs.getString("stu_error"));
				rowData.add(vt);
			}

		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException ex) {
			// TODO Auto-generated catch block
			ex.printStackTrace();
		}
		finally
		{
			//5 释放语句对象，连接对象
			try
			{
				if(rs!=null) rs.close();
				if(stmt!=null) stmt.close();
				if(conn!=null) conn.close();
			}catch(Exception ex)
			{
				ex.printStackTrace();
			}
			
		}
	}
	
	
	//重写方法
	//获取表格列数方法
	public int getColumnCount() {
		// TODO Auto-generated method stub
		return colName.size();//得到vector大小
	}
	
	//获取表格行数方法
	public int getRowCount() {
		// TODO Auto-generated method stub
		return rowData.size();
	}
	
	//根据行号，列号获取单元格的值
	public Object getValueAt(int rowIndex, int columnIndex) {
		// TODO Auto-generated method stub
		return ((Vector)rowData.get(rowIndex)).get(columnIndex);
	}
	
	//根据列号，得到列名方法
	public String getColumnName(int column)
	{
		return (String)colName.get(column);
	}

}

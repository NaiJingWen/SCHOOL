/**
 * 一个较为全面的学生管理系统(带界面)
 */
//学生管理类
package com;
import java.awt.*;
import javax.swing.*;

import java.awt.event.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class StudentManager extends JFrame implements ActionListener{
	StudentModel smodel;
	JTable table;
	JButton jb1,jb2,jb3;
	JPanel jp;
	JLabel jl;
	JTextField jtf;
	JButton jb4;
	JPanel jp1;
	
	
	public StudentManager()
	{
		jl = new JLabel("用户名");
		jtf = new JTextField(10);
		jb4 = new JButton("查询");
		jp1 = new JPanel();
		
		jp1.add(jl);
		jp1.add(jtf);
		jp1.add(jb4);
		
		//表格数据模型对象
		smodel = new StudentModel();
		//创建表格对象
		table = new JTable(smodel);
		
		jb1 = new JButton("添加");
		jb2 = new JButton("修改");
		jb3 = new JButton("删除");
		
		jp = new JPanel();
		
		jp.add(jb1);
		jp.add(jb2);
		jp.add(jb3);
		
		
		this.setTitle("学生管理系统");
		//添加到窗体
		JScrollPane jsp = new JScrollPane(table);
		this.add(jsp);
		
		this.add(jp,BorderLayout.SOUTH);
		this.add(jp1,BorderLayout.NORTH);
		
		
		jb3.addActionListener(this);
		jb1.addActionListener(this);
		jb2.addActionListener(this);
		jb4.addActionListener(this);
		
		//展现
		this.setSize(300,200);
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.setVisible(true);
		
	}
	
	public static void main(String[] args) {
		new StudentManager();
	}

	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		
		if(e.getSource()==jb3){
			//用户点击删除按钮
			//连库删除记录
			
			//获取用户选中行的索引
			int row = table.getSelectedRow();
			System.out.println(row);
			
			if(row==-1)
			{
				JOptionPane.showMessageDialog(this, "请选择一行进行删除");
				return;
			}
			
			//取得选中行第一列单元格的值
			String sno = (String)smodel.getValueAt(row, 0);
			System.out.println(sno);
			
			//连库删除记录
			Connection conn = null;
			Statement stmt =null;
			ResultSet rs = null;
			PreparedStatement pstmt = null;
			//连接数据库，判断用户是否合法
			try {
				//1 加载驱动
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				//2 创建连接对象
				
				//2 注册驱动程序,打开连接对象
				conn = DriverManager.getConnection("jdbc:sqlserver://127.0.0.1:1433;databaseName=jw", "sa", "sa");
				
////				3 获取语句对象
				String strsql = "delete from Student where stu_no=?";
				pstmt = conn.prepareStatement(strsql);
				pstmt.setString(1, sno);
				
////				4 执行操作
				pstmt.executeUpdate();
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
			
			//更新表格组件中的数据模型对象
			smodel = new StudentModel();
			table.setModel(smodel);//重新加载数据模型对象
			
		}
		else if(e.getSource()==jb1)
		{
			//点击添加
//			创建添加模式对话框
			new StudentAddDialog(this,"添加学生",true);
			//重新加载数据模型对象
			smodel = new StudentModel();
			table.setModel(smodel);
		}
		else if(e.getSource()==jb2)
		{
//			获取用户选中行的索引
			int row = table.getSelectedRow();
			if(row==-1)
			{
				JOptionPane.showMessageDialog(this, "请选择一行进行修改");
				return;
			}
			//点击修改
//			创建修改模式对话框
			StudentEditDialog sed = new StudentEditDialog(this,"修改学生",true,smodel,row);

			
			//重新加载数据模型对象
			smodel = new StudentModel();
			table.setModel(smodel);
		}
		else if(e.getSource()==jb4)
		{
			//点击查询
			String strsql = "select * from Student where StuName like '%"+jtf.getText()+"%'";
			smodel = new StudentModel(strsql);
			//给表格重新加载数据模型对象
			table.setModel(smodel);
		}
		
		
		
	}
	
}

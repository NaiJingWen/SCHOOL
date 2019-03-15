//添加学生对话框
package com;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.swing.*;

public class StudentAddDialog extends JDialog implements ActionListener{
	JLabel jl1,jl2,jl3,jl4,jl5;
	JButton jb1,jb2;
	JTextField jtf1,jtf2,jtf3,jtf4,jtf5;
	JPanel jp1,jp2,jp3;
	
	public StudentAddDialog(Frame owner, String title, boolean modal)
	{
		
		super(owner,title,modal);//调用父类构造方法，达到模式对话框效果
		jl1 = new JLabel("学号");
		jl2 = new JLabel("姓名");
		jl3 = new JLabel("性别");
		jl4 = new JLabel("生日");
		jl5 = new JLabel("记过次数");
		
		jtf1 = new JTextField();
		jtf2 = new JTextField();
		jtf3 = new JTextField();
		jtf4 = new JTextField();
		jtf5 = new JTextField();
		
		
		jb1 = new JButton("添加");
		jb2 = new JButton("取消");
		
		jp1 = new JPanel();
		jp2 = new JPanel();
		jp3 = new JPanel();
		
		
		//设置布局
		jp1.setLayout(new GridLayout(5,1));
		jp2.setLayout(new GridLayout(5,1));
		
		//添加组件
		jp1.add(jl1);
		jp1.add(jl2);
		jp1.add(jl3);
		jp1.add(jl4);
		jp1.add(jl5);
		
		jp2.add(jtf1);
		jp2.add(jtf2);
		jp2.add(jtf3);
		jp2.add(jtf4);
		jp2.add(jtf5);
		
		jp3.add(jb1);
		jp3.add(jb2);
		
		this.add(jp1,BorderLayout.WEST);
		this.add(jp2,BorderLayout.CENTER);
		this.add(jp3,BorderLayout.SOUTH);
		
		jb1.addActionListener(this);
		
//		展现
		this.setSize(300,200);
//		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.setVisible(true);
	}

	

	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		if(e.getSource()==jb1)
		{
//			连接数据库
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
              	stmt = conn.createStatement();
				
				//与编译语句对象
				String strsql = "insert into Student values(?,?,?,?,?)";
				pstmt = conn.prepareStatement(strsql);
				
				//给参数赋值
				pstmt.setString(1, jtf1.getText());
				pstmt.setString(2, jtf2.getText());
				pstmt.setString(3, jtf3.getText());
				pstmt.setString(4, jtf4.getText());
				pstmt.setString(5, jtf5.getText());
				
//				
////				4 执行操作
				pstmt.executeUpdate();
				
				this.dispose();//关闭对话框
				
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
	}
	
	
	
}
package com;
import javax.swing.*;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

//�޸�ѧ���Ի���
public class StudentEditDialog extends JDialog implements ActionListener{
	JLabel jl1,jl2,jl3,jl4,jl5;
	JButton jb1,jb2;
	JTextField jtf1,jtf2,jtf3,jtf4,jtf5;
	JPanel jp1,jp2,jp3;
	
	StudentModel smodel;
	int row ;//�û�ѡ���е�����
	
	public StudentEditDialog(Frame owner, String title, boolean modal,StudentModel smodel,int row)
	{
		
		
		super(owner,title,modal);//���ø��๹�췽�����ﵽģʽ�Ի���Ч��
		this.smodel = smodel;
		this.row = row;
		
		jl1 = new JLabel("ѧ��");
		jl2 = new JLabel("����");
		jl3 = new JLabel("�Ա�");
		jl4 = new JLabel("����");
		jl5 = new JLabel("�ǹ�����");
		
		//������ģ����ȡ�����ݣ����ı�������ʾ
		jtf1 = new JTextField((String)smodel.getValueAt(row, 0));
		jtf1.setEditable(false);
		jtf2 = new JTextField((String)smodel.getValueAt(row, 1));
		jtf3 = new JTextField((String)smodel.getValueAt(row, 2));
		jtf4 = new JTextField((String)smodel.getValueAt(row, 3));
		jtf5 = new JTextField((String)smodel.getValueAt(row, 4));
		
		
		jb1 = new JButton("�޸�");
		jb2 = new JButton("ȡ��");
		
		jp1 = new JPanel();
		jp2 = new JPanel();
		jp3 = new JPanel();
		
		
		//���ò���
		jp1.setLayout(new GridLayout(5,1));
		jp2.setLayout(new GridLayout(5,1));
		
		//������
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
		
//		չ��
		this.setSize(300,200);
//		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.setVisible(true);
	}

	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		if(e.getSource()==jb1){
			//�����޸ļ�¼
			Connection conn = null;
			Statement stmt =null;
			ResultSet rs = null;
			PreparedStatement pstmt = null;
			//�������ݿ⣬�ж��û��Ƿ�Ϸ�
			try {
				//1 ��������
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				//2 �������Ӷ���
				
				//2 ע����������,�����Ӷ���
				conn = DriverManager.getConnection("jdbc:sqlserver://127.0.0.1:1433;databaseName=jw", "sa", "sa");
				
////				3 ��ȡ������
//				stmt = conn.createStatement();
				
				//�����������
				String strsql = "update Student set StuName=?,ClassNo=?,Birthdate=?,stu_error=? where stu_no=?";
				pstmt = conn.prepareStatement(strsql);
				
				//��������ֵ
				pstmt.setString(1, jtf2.getText());
				pstmt.setString(2, jtf3.getText());
				pstmt.setString(3, jtf4.getText());
				pstmt.setString(4, jtf5.getText());
				pstmt.setString(5, jtf1.getText());
				
//				
////				4 ִ�в���
				pstmt.executeUpdate();
				
				this.dispose();//�رնԻ���
				
			} catch (ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (SQLException ex) {
				// TODO Auto-generated catch block
				ex.printStackTrace();
			}
			finally
			{
				//5 �ͷ����������Ӷ���
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

/**
 * һ����Ϊȫ���ѧ������ϵͳ(������)
 */
//ѧ��������
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
		jl = new JLabel("�û���");
		jtf = new JTextField(10);
		jb4 = new JButton("��ѯ");
		jp1 = new JPanel();
		
		jp1.add(jl);
		jp1.add(jtf);
		jp1.add(jb4);
		
		//�������ģ�Ͷ���
		smodel = new StudentModel();
		//����������
		table = new JTable(smodel);
		
		jb1 = new JButton("���");
		jb2 = new JButton("�޸�");
		jb3 = new JButton("ɾ��");
		
		jp = new JPanel();
		
		jp.add(jb1);
		jp.add(jb2);
		jp.add(jb3);
		
		
		this.setTitle("ѧ������ϵͳ");
		//��ӵ�����
		JScrollPane jsp = new JScrollPane(table);
		this.add(jsp);
		
		this.add(jp,BorderLayout.SOUTH);
		this.add(jp1,BorderLayout.NORTH);
		
		
		jb3.addActionListener(this);
		jb1.addActionListener(this);
		jb2.addActionListener(this);
		jb4.addActionListener(this);
		
		//չ��
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
			//�û����ɾ����ť
			//����ɾ����¼
			
			//��ȡ�û�ѡ���е�����
			int row = table.getSelectedRow();
			System.out.println(row);
			
			if(row==-1)
			{
				JOptionPane.showMessageDialog(this, "��ѡ��һ�н���ɾ��");
				return;
			}
			
			//ȡ��ѡ���е�һ�е�Ԫ���ֵ
			String sno = (String)smodel.getValueAt(row, 0);
			System.out.println(sno);
			
			//����ɾ����¼
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
				String strsql = "delete from Student where stu_no=?";
				pstmt = conn.prepareStatement(strsql);
				pstmt.setString(1, sno);
				
////				4 ִ�в���
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
			
			//���±������е�����ģ�Ͷ���
			smodel = new StudentModel();
			table.setModel(smodel);//���¼�������ģ�Ͷ���
			
		}
		else if(e.getSource()==jb1)
		{
			//������
//			�������ģʽ�Ի���
			new StudentAddDialog(this,"���ѧ��",true);
			//���¼�������ģ�Ͷ���
			smodel = new StudentModel();
			table.setModel(smodel);
		}
		else if(e.getSource()==jb2)
		{
//			��ȡ�û�ѡ���е�����
			int row = table.getSelectedRow();
			if(row==-1)
			{
				JOptionPane.showMessageDialog(this, "��ѡ��һ�н����޸�");
				return;
			}
			//����޸�
//			�����޸�ģʽ�Ի���
			StudentEditDialog sed = new StudentEditDialog(this,"�޸�ѧ��",true,smodel,row);

			
			//���¼�������ģ�Ͷ���
			smodel = new StudentModel();
			table.setModel(smodel);
		}
		else if(e.getSource()==jb4)
		{
			//�����ѯ
			String strsql = "select * from Student where StuName like '%"+jtf.getText()+"%'";
			smodel = new StudentModel(strsql);
			//��������¼�������ģ�Ͷ���
			table.setModel(smodel);
		}
		
		
		
	}
	
}

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

//ѧ������ģ����
public class StudentModel extends AbstractTableModel{
	
	Vector rowData,colName;
	
	public StudentModel()
	{
		colName = new Vector();
		rowData = new Vector();
		
		//�������ݿ⣬��Vector��Ӽ�¼
		//�������
		colName.add("ѧ��");
		colName.add("����");
		colName.add("�Ա�");
		colName.add("����");
		colName.add("�ǹ�����");
		
		//���������
		//�����ѯ
		Connection conn = null;
		Statement stmt =null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		//�������ݿ⣬�ж��û��Ƿ�Ϸ�
		try {
			//1 ��������
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			
			//2 ע����������,�����Ӷ���
			conn = DriverManager.getConnection("jdbc:sqlserver://127.0.0.1:1433;databaseName=jw", "sa", "sa");
////		3 ��ȡ������
			stmt = conn.createStatement();	
//			4 ִ�в���
			rs = stmt.executeQuery("select * from Student");
			Vector vt ;//���ڴ��ÿһ������
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
	
	//��sql�������췽��
	public StudentModel(String strsql)
	{
		colName = new Vector();
		rowData = new Vector();
		
		//�������ݿ⣬��Vector��Ӽ�¼
		//�������
		colName.add("ѧ��");
		colName.add("����");
		colName.add("�Ա�");
		colName.add("����");
		colName.add("�ǹ�����");
		
		//���������
		//�����ѯ
		Connection conn = null;
		Statement stmt =null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		//�������ݿ⣬�ж��û��Ƿ�Ϸ�
		try {
			//1 ��������
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			//2 �������Ӷ���
			String url ="jdbc:sqlserver://127.0.0.1:1433;databaseName=jw";
			//2 ע����������,�����Ӷ���
			conn = DriverManager.getConnection(url, "sa", "sa");
////		3 ��ȡ������
			stmt = conn.createStatement();	
//			4 ִ�в���
			rs = stmt.executeQuery(strsql);
			Vector vt ;//���ڴ��ÿһ������
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
	
	
	//��д����
	//��ȡ�����������
	public int getColumnCount() {
		// TODO Auto-generated method stub
		return colName.size();//�õ�vector��С
	}
	
	//��ȡ�����������
	public int getRowCount() {
		// TODO Auto-generated method stub
		return rowData.size();
	}
	
	//�����кţ��кŻ�ȡ��Ԫ���ֵ
	public Object getValueAt(int rowIndex, int columnIndex) {
		// TODO Auto-generated method stub
		return ((Vector)rowData.get(rowIndex)).get(columnIndex);
	}
	
	//�����кţ��õ���������
	public String getColumnName(int column)
	{
		return (String)colName.get(column);
	}

}

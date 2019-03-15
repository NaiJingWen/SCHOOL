package util;
import java.sql.*;
public class DBConn {
static{
	try{
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	}catch(Exception ex){
		ex.printStackTrace();
	}
}
public static Connection getConn(){
	try{
		Connection conn=DriverManager.getConnection
		("jdbc:sqlserver://localhost:1433;datebasename=Wspm","sa","123456");
		return conn;
	}catch(Exception ex){
		ex.printStackTrace();
		return null;
	}
}
public static void close(Connection conn,Statement st,ResultSet rs){
	if(rs!=null){
		try{
			rs.close();
		}catch(SQLException ex){
		}
	}
	if(st!=null){
		try{
			st.close();
		}catch(SQLException ex){
		}
}
	if(conn!=null){
		try{
			conn.close();
		}catch(SQLException ex){
		}
	}
}
}


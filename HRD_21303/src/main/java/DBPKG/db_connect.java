package DBPKG;

import java.sql.*;

public class db_connect {
	public static Connection getConnection() throws Exception{
		Connection con = null;
		String url = "jdbc:oracle:thin:@//localhost:1521/xe";
		String user = "system";
		String pwd = "1234";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection(url, user, pwd);
		}catch(Exception e){
			e.printStackTrace();
		}
		return con;
	}
}

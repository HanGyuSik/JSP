package com;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Jdbc {

	public static void main(String[] args) throws ClassNotFoundException, SQLException{
		String driver = "com.mysql.cj.jdbc.Driver";
		// 접근하고자 하는 데이터베이스 명
		String url = "jdbc:mysql://localhost:3306/world";
		// 접근하고자 하는 테이블 명
		String sql = "select * from country";
		
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, "musthave", "tiger");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		
		while(rs.next()) {
			// 요구하는 행(요소)
		System.out.println(rs.getString("GNP"));
		}
		rs.close();
		st.close();
		con.close();

	}

}

package com.Artist;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBconnect {
	
	private static String url="jdbc:mysql://localhost:3306/onlinemusicstore";
	private static String userName="root";
	private static String password ="lakshi1234";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			 con = DriverManager.getConnection(url,userName,password);
			
		}
		catch(Exception e) {
			System.out.println("Database connrction is not success.");
			
		}
		
		return con;
		
	}
}

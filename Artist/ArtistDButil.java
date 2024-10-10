package com.Artist;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class ArtistDButil {
	
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
    public static List<Artist> validate(String username, String password){
		
		ArrayList<Artist> art = new ArrayList<>();
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from artist where Username ='"+username+"' and Password = '"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String country = rs.getString(4);
				String bio = rs.getString(5);
				String Useru = rs.getString(6);
				String Passu = rs.getString(7);
				
				Artist c = new Artist(id,name, email, country,bio, Useru, Passu);
				art.add(c);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();	
		}
		return art;
		
	}

		
	public static boolean insertartist(String name,String email,String country, String bio, String username, String password) {
		
		boolean isSuccess = false;

		try {
            
			con = DBconnect.getConnection();
			stmt =con.createStatement();
			 
			String sql="insert into artist values(0,'"+name+"','"+email+"','"+country+"', '"+bio+"','"+username+"','"+password+"')";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs >  0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();	
		}
		
		return isSuccess;
	}
	
	public static boolean updateartist(String id,String name,String email,String country,String bio,String username,String password) {
		
		try {
			
			con = DBconnect.getConnection();
			stmt =con.createStatement();
			
			String sql="update artist set Name='"+name+"',Email='"+email+"',Country='"+country+"',Bio='"+bio+"',Username='"+username+"',Password='"+password+"'"+"where Id='"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs >  0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();	
		}
				
		return isSuccess;
	}
	public static List<Artist> getArtistDetails(String Id) {
    	
    	int convertedID = Integer.parseInt(Id);
    	
    	ArrayList<Artist> art = new ArrayList<>();
    	
    	try {
    		
    		con = DBconnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from artist where Id='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
    			String name = rs.getString(2);
    			String email = rs.getString(3);
    			String country = rs.getString(4);
    			String bio = rs.getString(5);
    			String username = rs.getString(6);
    			String password = rs.getString(7);
    			
    			Artist c = new Artist(id,name,email,country,bio,username,password);
    			art.add(c);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return art;	
    }
    
	public static boolean deleteArtist(String id) {
		
		int convId=Integer.parseInt(id);
		
		try {
			
			con =DBconnect.getConnection();
			stmt=con.createStatement();
			
			String sql="delete from artist where Id='"+convId+"'";
			
			int rs =stmt.executeUpdate(sql);
			
			if(rs >  0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();	
		}
		
		
		
		return isSuccess;
	}



}
 
package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import dbutil.DbUtil;
import pojo.LoginInfo;

public class LoginDao {

	public static boolean isUserValid(LoginInfo userDetails)
	{
		boolean validStatus = false;
		try
		{
			Connection conn = DbUtil.getConnection();
			Statement st= conn.createStatement();
			ResultSet rs= st.executeQuery("SELECT * FROM login_info WHERE user_name = '"+userDetails.getUserName()+"' AND password = '"+ userDetails.getPassword()+"'");
		    while(rs.next()) 
		    {
		        validStatus = true;	
		    }
		    
		    DbUtil.closeConnection(conn);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return validStatus;
		
	}
}

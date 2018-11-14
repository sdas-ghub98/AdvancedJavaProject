package JavaClasses;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerDAO 
{
	CustomerDetails c = new CustomerDetails();
	public void fetchRecord(String sql)
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/CinemaBookingSystem";
			String user="root";
			String pass="";
			Connection con = (Connection) DriverManager.getConnection(url,user,pass);
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				c.setName(rs.getString(1));
				c.setUserName(rs.getString(2));
				c.setPassword(rs.getString(3));
				c.setContactnum(rs.getString(4));
				c.setEmail(rs.getString(5));
				c.setCity(rs.getString(6));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}

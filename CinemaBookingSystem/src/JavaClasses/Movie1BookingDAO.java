package JavaClasses;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Movie1BookingDAO 
{
	Movie1Bookings m1b = new Movie1Bookings();
	public void fetchRecords(String sql)
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
				m1b.setUserName(rs.getString(1));
				m1b.setVenue(rs.getString(2));
				m1b.setTiming(rs.getTime(3));
				m1b.setSeatno(rs.getString(5));
				m1b.setPrice_paid(rs.getFloat(6));
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}		
	}
}

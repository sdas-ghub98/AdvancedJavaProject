package JavaClasses;
import java.sql.*;
public class CinemaDetailsDAO 
{
	String a,b,c,d,e;
	int f;
	CinemaDetails ct = new CinemaDetails();
	public CinemaDetails fetchRecord(String sql)
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/cinemabookingsystem";
			String user="root";
			String pass="";
			Connection con = (Connection) DriverManager.getConnection(url,user,pass);
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				a = rs.getString(1);
				b = rs.getString(2);
				c = rs.getString(3);
				d = rs.getString(4);
				e = rs.getString(5);
				f = rs.getInt(6);
			}
			con.close();
			/*System.out.println(a + " " + b + " " + c);
			System.out.println(d + " " + e + " " + f);*/
			ct.setName(a);
			ct.setGenre(b);
			ct.setCertification(c);
			ct.setDirector(d);
			ct.setDt(e);
			ct.setRun_time(f);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ct;
	}
}
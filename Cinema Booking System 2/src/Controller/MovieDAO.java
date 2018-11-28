package Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Model.Customer;
import Model.Movie;
import Model.MovieSeats;

public class MovieDAO {

	String url = "jdbc:mariadb://localhost:3306/advanced";
	String user = "root";
	String pass = "root";

	public Movie getMovieDetails(int id) {
		Movie movie = new Movie();

		try {
			Class.forName("org.mariadb.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			PreparedStatement ps = con.prepareStatement("select * from cinemadetails where Sno = ?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				movie.setName(rs.getString(2));
				movie.setGenre(rs.getString(3));
				movie.setCertification(rs.getString(4));
				movie.setCast(rs.getString(5));
				movie.setDirector(rs.getString(6));
				movie.setRelease(rs.getString(7));
				movie.setRuntime(rs.getInt(8));
				movie.setSynopsis(rs.getString(9));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return movie;
	}

	public int setCustomerDetails(Customer cust) {

		try {
			Class.forName("org.mariadb.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			PreparedStatement ps = con.prepareStatement("insert into customerdetails values(?, ?, ?, ?, ?, ?)");
			ps.setString(1, cust.getName());
			ps.setString(2, cust.getUsername());
			ps.setString(3, cust.getPassword());
			ps.setString(4, cust.getMobile());
			ps.setString(5, cust.getEmail());
			ps.setString(6, cust.getCity());
			ps.executeUpdate();

			return 0;
		} catch (Exception e) {
			return 1;
		}
	}

	public Customer getCustomerDetails(String user, String pass) {
		Customer cust = new Customer();

		try {
			Class.forName("org.mariadb.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, this.user, this.pass);
			PreparedStatement ps = con
					.prepareStatement("select * from customerdetails where Username = ? and Password = ?");
			ps.setString(1, user);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				cust.setName(rs.getString(1));
				cust.setUsername(rs.getString(2));
				cust.setPassword(rs.getString(3));
				cust.setMobile(rs.getString(4));
				cust.setEmail(rs.getString(5));
				cust.setCity(rs.getString(6));
			}

		} catch (Exception e) {

		}

		return cust;
	}

	public MovieSeats getMovieSeats(String movie, String time) {
		MovieSeats ms = new MovieSeats();
		String seats = "";

		String[] movies = { "babydriver", "blackpanther", "bohemianrhapsody", "captainamerica", "goosebumps",
				"justiceleague", "piratesofcaribbean", "pursuitofhappyness", "rogueone", "thehost" };

		for (String x : movies) {
			if (movie.contains(x)) {
				movie = x;
				break;
			}
		}
		System.out.println(movie);
		
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, this.user, this.pass);
			PreparedStatement ps = con.prepareStatement("select SeatNo from " + movie + " where Timing = ?");
			ps.setString(1, time);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				seats += rs.getString(1) + ",";
			}

			ms.setSeats(seats);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return ms;
	}

	public int pay(String seats, String user, String name, String time, String venue, String date, int price) {
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, this.user, this.pass);
			PreparedStatement ps = con.prepareStatement("insert into " + name + " values(?, ?, ?, ?, ?, ?)");
			ps.setString(1, user);
			ps.setString(2, venue);
			ps.setString(3, date);
			ps.setString(4, time);
			ps.setString(5, seats);
			ps.setInt(6, price);

			ps.executeUpdate();
			
			return 0;
		} catch (Exception e) {
			return 1;
		}
	}
}

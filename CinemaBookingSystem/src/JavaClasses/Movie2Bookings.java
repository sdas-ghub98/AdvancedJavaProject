package JavaClasses;

import java.sql.Time;

public class Movie2Bookings extends CustomerDetails 
{
	String venue,seatno;
	Time timing;
	Float price_paid;
	public String getVenue() {
		return venue;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}
	public String getSeatno() {
		return seatno;
	}
	public void setSeatno(String seatno) {
		this.seatno = seatno;
	}
	public Time getTiming() {
		return timing;
	}
	public void setTiming(Time timing) {
		this.timing = timing;
	}
	public Float getPrice_paid() {
		return price_paid;
	}
	public void setPrice_paid(Float price_paid) {
		this.price_paid = price_paid;
	}
}

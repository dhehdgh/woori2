package kr.co.dong.DTO;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class ratinglistDTO {

	private int rating;
	private int lowpoint;
	private int highpoint;
	
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public int getLowpoint() {
		return lowpoint;
	}
	public void setLowpoint(int lowpoint) {
		this.lowpoint = lowpoint;
	}
	public int getHighpoint() {
		return highpoint;
	}
	public void setHighpoint(int highpoint) {
		this.highpoint = highpoint;
	}
	@Override
	public String toString() {
		return "ratinglistDTO [rating=" + rating + ", lowpoint=" + lowpoint + ", highpoint=" + highpoint + "]";
	}
	
	
}

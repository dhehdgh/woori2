package kr.co.dong.DTO;

import lombok.Data;

@Data
public class ratinglistDTO {

	private int rating;			//등급
	private int lowpoint;		//낮은포인트
	private int highpoint;		//높은포인트
	
	
	
	@Override
	public String toString() {
		return "myratinglist [rating="+rating+", lowpoint="+lowpoint+", highpoint="+highpoint+"]";
	}
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
	
	
}

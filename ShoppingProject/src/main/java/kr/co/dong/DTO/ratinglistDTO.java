package kr.co.dong.DTO;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class ratinglistDTO {

	private int rating;
	private String rating_nm;
	private int lowpoint;
	private int highpoint;
	private int discount;
	private int accumulation;
	
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getRating_nm() {
		return rating_nm;
	}
	public void setRating_nm(String rating_nm) {
		this.rating_nm = rating_nm;
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
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public int getAccumulation() {
		return accumulation;
	}
	public void setAccumulation(int accumulation) {
		this.accumulation = accumulation;
	}
	@Override
	public String toString() {
		return "RankDTO [rating=" + rating + ", rating_nm=" + rating_nm + ", lowpoint=" + lowpoint + ", highpoint="
				+ highpoint + ", discount=" + discount + ", accumulation=" + accumulation + "]";
	}
}


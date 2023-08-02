package kr.co.dong.DTO;

import lombok.Data;

@Data
public class reviewDTO {
	
	public int itemnum;
	public int reviewno;
	public int membernum;
	public int rstar;
	public int reviewlike;
	public int reviewreport;
	public int del;
	public String rdate;
	public String rcontent;
	public String id;
	
	private int rstate;			//리뷰작성여부
	private int buynum;
	
	private String size;
	private String color;
	
	
	public int getRstate() {
		return rstate;
	}
	public void setRstate(int rstate) {
		this.rstate = rstate;
	}
	public int getBuynum() {
		return buynum;
	}
	public void setBuynum(int buynum) {
		this.buynum = buynum;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getItemnum() {
		return itemnum;
	}
	public void setItemnum(int itemnum) {
		this.itemnum = itemnum;
	}
	public int getReviewno() {
		return reviewno;
	}
	public void setReviewno(int reviewno) {
		this.reviewno = reviewno;
	}
	public int getMembernum() {
		return membernum;
	}
	public void setMembernum(int membernum) {
		this.membernum = membernum;
	}
	public int getRstar() {
		return rstar;
	}
	public void setRstar(int rstar) {
		this.rstar = rstar;
	}
	public int getReviewlike() {
		return reviewlike;
	}
	public void setReviewlike(int reviewlike) {
		this.reviewlike = reviewlike;
	}
	public int getReviewreport() {
		return reviewreport;
	}
	public void setReviewreport(int reviewreport) {
		this.reviewreport = reviewreport;
	}
	public int getDel() {
		return del;
	}
	public void setDel(int del) {
		this.del = del;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
	
	

}

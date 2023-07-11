package kr.co.dong.DTO;

public class ReviewDTO {
	private int reviewno;
	private int itemnum;
	private int membernum;
	private String rcontent;
	private String rdate;
	private int rstar;
	private int reviewlike;
	private int reviewreprot;
	private int rstate;
	private int del;
	
	
	public int getReviewno() {
		return reviewno;
	}
	public void setReviewno(int reviewno) {
		this.reviewno = reviewno;
	}
	public int getItemnum() {
		return itemnum;
	}
	public void setItemnum(int itemnum) {
		this.itemnum = itemnum;
	}
	public int getMembernum() {
		return membernum;
	}
	public void setMembernum(int membernum) {
		this.membernum = membernum;
	}
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
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
	public int getReviewreprot() {
		return reviewreprot;
	}
	public void setReviewreprot(int reviewreprot) {
		this.reviewreprot = reviewreprot;
	}
	public int getDel() {
		return del;
	}
	public void setDel(int del) {
		this.del = del;
	}
	public int getRstate() {
		return rstate;
	}
	public void setRstate(int rstate) {
		this.rstate = rstate;
	}
	@Override
	public String toString() {
		return "ReviewDTO [reviewno=" + reviewno + ", itemnum=" + itemnum + ", membernum=" + membernum + ", rcontent="
				+ rcontent + ", rdate=" + rdate + ", rstar=" + rstar + ", reviewlike=" + reviewlike + ", reviewreprot="
				+ reviewreprot + ", rstate=" + rstate + ", del=" + del + "]";
	}
	
}

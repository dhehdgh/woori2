package kr.co.dong.DTO;

public class dr_reviewDTO {
	private int drnum;
	private int reviewno;
	private String drcontent;
	private String drdate;
	@Override
	public String toString() {
		return "dr_reviewDTO [drnum=" + drnum + ", reviewno=" + reviewno + ", drcontent=" + drcontent + ", drdate="
				+ drdate + "]";
	}
	public int getDrnum() {
		return drnum;
	}
	public void setDrnum(int drnum) {
		this.drnum = drnum;
	}
	public int getReviewno() {
		return reviewno;
	}
	public void setReviewno(int reviewno) {
		this.reviewno = reviewno;
	}
	public String getDrcontent() {
		return drcontent;
	}
	public void setDrcontent(String drcontent) {
		this.drcontent = drcontent;
	}
	public String getDrdate() {
		return drdate;
	}
	public void setDrdate(String drdate) {
		this.drdate = drdate;
	}
	
	
	
	
}

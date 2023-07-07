package kr.co.dong.DTO;

public class Dr_reviewDTO {
	private int drnum;
	private int reviewno;
	private String drcontent;
	private String drdate;	
	private ReviewDTO reviewDTO;
	
	
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
	public ReviewDTO getReviewDTO() {
		return reviewDTO;
	}
	public void setReviewDTO(ReviewDTO reviewDTO) {
		this.reviewDTO = reviewDTO;
	}
	
	@Override
	public String toString() {
		return "Dr_reviewDTO [drnum=" + drnum + ", reviewno=" + reviewno + ", drcontent=" + drcontent + ", drdate="
				+ drdate + ", reviewDTO=" + reviewDTO + "]";
	}
}

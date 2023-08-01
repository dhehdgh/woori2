package kr.co.dong.DTO;

public class dr_reviewDTO {
	private int drnum;
	private int reviceno;
	private String drcontent;
	private String drdate;
	@Override
	public String toString() {
		return "dr_reviewDTO [drnum=" + drnum + ", reviceno=" + reviceno + ", drcontent=" + drcontent + ", drdate="
				+ drdate + "]";
	}
	public int getDrnum() {
		return drnum;
	}
	public void setDrnum(int drnum) {
		this.drnum = drnum;
	}
	public int getReviceno() {
		return reviceno;
	}
	public void setReviceno(int reviceno) {
		this.reviceno = reviceno;
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

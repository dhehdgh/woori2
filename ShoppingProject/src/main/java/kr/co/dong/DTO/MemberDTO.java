package kr.co.dong.DTO;

public class MemberDTO {
	private int membernum;
	private String id;
	private String pw;
	private String name;
	private String email;
	private String tel;
	private String birth;
	private int point;
	private int pointac;
	private String roadaddr;
	private String jibunaddr;
	private String detailaddr;
	private String extraaddr;
	private int postcode;
	private String joindate;
	private int state;
	private int authority;
	private int gender;
	private int agree;
	
	
	public int getMembernum() {
		return membernum;
	}
	public void setMembernum(int membernum) {
		this.membernum = membernum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getPointac() {
		return pointac;
	}
	public void setPointac(int pointac) {
		this.pointac = pointac;
	}
	public String getRoadaddr() {
		return roadaddr;
	}
	public void setRoadaddr(String roadaddr) {
		this.roadaddr = roadaddr;
	}
	public String getJibunaddr() {
		return jibunaddr;
	}
	public void setJibunaddr(String jibunaddr) {
		this.jibunaddr = jibunaddr;
	}
	public String getDetailaddr() {
		return detailaddr;
	}
	public void setDetailaddr(String detailaddr) {
		this.detailaddr = detailaddr;
	}
	public String getExtraaddr() {
		return extraaddr;
	}
	public void setExtraaddr(String extraaddr) {
		this.extraaddr = extraaddr;
	}
	public int getPostcode() {
		return postcode;
	}
	public void setPostcode(int postcode) {
		this.postcode = postcode;
	}
	public String getJoindate() {
		return joindate;
	}
	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getAuthority() {
		return authority;
	}
	public void setAuthority(int authority) {
		this.authority = authority;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public int getAgree() {
		return agree;
	}
	public void setAgree(int agree) {
		this.agree = agree;
	}
	
	@Override
	public String toString() {
		return "MemberDTO [membernum=" + membernum + ", id=" + id + ", pw=" + pw + ", name=" + name + ", email=" + email
				+ ", tel=" + tel + ", birth=" + birth + ", point=" + point + ", pointac=" + pointac + ", roadaddr="
				+ roadaddr + ", jibunaddr=" + jibunaddr + ", detailaddr=" + detailaddr + ", extraaddr=" + extraaddr
				+ ", postcode=" + postcode + ", joindate=" + joindate + ", state=" + state + ", authority=" + authority
				+ ", gender=" + gender + ", agree=" + agree + "]";
	}
	
	
	
}

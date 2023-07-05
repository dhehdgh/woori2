package kr.co.dong.DTO;

public class memberDTO {
	public int membernum;
	public String id;
	public String pw;
	public String email;
	public String tel;
	public String birth;
	public int point;
	public int pointac;
	public String roadaddr;
	public String jibunaddr;
	public String detailaddr;
	public String extraaddr;
	public int postcode;
	public String joindate;
	public int state;
	public int authority;
	public int gender;
	public int agree;
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
		return "memberDTO [membernum=" + membernum + ", id=" + id + ", pw=" + pw + ", email=" + email + ", tel=" + tel
				+ ", birth=" + birth + ", point=" + point + ", pointac=" + pointac + ", roadaddr=" + roadaddr
				+ ", jibunaddr=" + jibunaddr + ", detailaddr=" + detailaddr + ", extraaddr=" + extraaddr + ", postcode="
				+ postcode + ", joindate=" + joindate + ", state=" + state + ", authority=" + authority + ", gender="
				+ gender + ", agree=" + agree + "]";
	}
	
	

}

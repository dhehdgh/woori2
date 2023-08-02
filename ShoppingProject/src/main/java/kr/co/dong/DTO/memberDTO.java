package kr.co.dong.DTO;

import lombok.Data;

@Data
public class memberDTO {
	
	private int membernum;		//회원번호
	private String tel;
	private String id;			//회원아이디
	private String pw;			//회원비밀번호
	private String name;		//회원이름
	private String email;		//회원이메일
	private String birth;		//회원생일
	private int point;			//회원포인트
	private int pointac;		//회원누적포인트
	private String roadaddr;	//회원도로명주소
	private String jibunaddr;	//회원지번주소
	private String detailaddr;	//회원상세주소
	private String extraaddr;	//회원주소참고항목
	private int postcode;		//회원우편번호
	private String joindate;	//회원가입일
	private int state;			//회원상태
	private int authority;		//회원권한
	private int gender;			//회원성별
	private int agree;			//회원개인정보수집동의
	

	private itemDTO itemDTO;
	private dv_orderDTO dv_orderDTO;
	private codetableDTO codetableDTO;
	private imgDTO imgDTO;
	private cartDTO cartDTO;
	private addressDTO addressDTO;
	private boardDTO boardDTO;
	private dr_reviewDTO dr_reviewDTO;
	private help_boardDTO help_boardDTO;
	private itemreturnDTO itemreturnDTO;
	private iv_itemDTO iv_itemDTO;
	private mylistDTO mylistDTO;
	private ratinglistDTO ratinglistDTO;
	private reviewDTO reviewDTO;
	private dv_order_itemDTO dv_order_itemDTO;
	
	

	public dv_order_itemDTO getDv_order_itemDTO() {
		return dv_order_itemDTO;
	}

	public void setDv_order_itemDTO(dv_order_itemDTO dv_order_itemDTO) {
		this.dv_order_itemDTO = dv_order_itemDTO;
	}

	public itemDTO getItemDTO() {
		return itemDTO;
	}

	public void setItemDTO(itemDTO itemDTO) {
		this.itemDTO = itemDTO;
	}

	public dv_orderDTO getDv_orderDTO() {
		return dv_orderDTO;
	}

	public void setDv_orderDTO(dv_orderDTO dv_orderDTO) {
		this.dv_orderDTO = dv_orderDTO;
	}

	public codetableDTO getCodetableDTO() {
		return codetableDTO;
	}

	public void setCodetableDTO(codetableDTO codetableDTO) {
		this.codetableDTO = codetableDTO;
	}

	public imgDTO getImgDTO() {
		return imgDTO;
	}

	public void setImgDTO(imgDTO imgDTO) {
		this.imgDTO = imgDTO;
	}

	public cartDTO getCartDTO() {
		return cartDTO;
	}

	public void setCartDTO(cartDTO cartDTO) {
		this.cartDTO = cartDTO;
	}

	public boardDTO getBoardDTO() {
		return boardDTO;
	}

	public void setBoardDTO(boardDTO boardDTO) {
		this.boardDTO = boardDTO;
	}

	public dr_reviewDTO getDr_reviewDTO() {
		return dr_reviewDTO;
	}

	public void setDr_reviewDTO(dr_reviewDTO dr_reviewDTO) {
		this.dr_reviewDTO = dr_reviewDTO;
	}

	public help_boardDTO getHelp_boardDTO() {
		return help_boardDTO;
	}

	public void setHelp_boardDTO(help_boardDTO help_boardDTO) {
		this.help_boardDTO = help_boardDTO;
	}

	public itemreturnDTO getItemreturnDTO() {
		return itemreturnDTO;
	}

	public void setItemreturnDTO(itemreturnDTO itemreturnDTO) {
		this.itemreturnDTO = itemreturnDTO;
	}

	public iv_itemDTO getIv_itemDTO() {
		return iv_itemDTO;
	}

	public void setIv_itemDTO(iv_itemDTO iv_itemDTO) {
		this.iv_itemDTO = iv_itemDTO;
	}

	public mylistDTO getMylistDTO() {
		return mylistDTO;
	}

	public void setMylistDTO(mylistDTO mylistDTO) {
		this.mylistDTO = mylistDTO;
	}

	public ratinglistDTO getRatinglistDTO() {
		return ratinglistDTO;
	}

	public void setRatinglistDTO(ratinglistDTO ratinglistDTO) {
		this.ratinglistDTO = ratinglistDTO;
	}

	public reviewDTO getReviewDTO() {
		return reviewDTO;
	}

	public void setReviewDTO(reviewDTO reviewDTO) {
		this.reviewDTO = reviewDTO;
	}

	public addressDTO getAddressDTO() {
		return addressDTO;
	}

	public void setAddressDTO(addressDTO addressDTO) {
		this.addressDTO = addressDTO;
	}

	@Override
	public String toString() {
		return "memberDTO [membernum="+membernum+",tel= "+tel+", id="+id+", pw="+pw+", name="+name+", email="+email+", birth="+birth+", point="+
				point+", pointac="+pointac+", roadaddr="+roadaddr+", jibunaddr="+jibunaddr+", detailaddr="+detailaddr+", extraaddr="+
				extraaddr+", postcode="+postcode+", joindate="+joindate+", state="+state+", authority="+authority+", gender="+
				gender+", agree="+agree+"]";
	}
	
	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

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
	
	
}

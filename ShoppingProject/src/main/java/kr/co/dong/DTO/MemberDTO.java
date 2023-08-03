package kr.co.dong.DTO;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class memberDTO {
	
	private int usePoint;
	public int membernum;
	public String id;
	public String pw;
	public String name;	
	public String email;
	public String tel;
	public String birth;
	public int point;
	public int pointac;
	public int getUsePoint() {
		return usePoint;
	}
	public void setUsePoint(int usePoint) {
		this.usePoint = usePoint;
	}
	public String joindate;
	public int state;
	public String state_nm;
	public int authority;
	public String authority_nm;
	public int gender;
	public String gender_nm;
	public int agree;
	public String gen;
	public String roadaddr;
	public String jibunaddr;
	public String detailaddr;
	public String extraaddr;
	public int postcode;
	
	private itemDTO itemDTO;
	private dv_orderDTO dv_orderDTO;
	private codetableDTO codetableDTO;
	private imgDTO imgDTO;
	private cartDTO cartDTO;
	private boardDTO boardDTO;
	private dr_reviewDTO dr_reviewDTO;
	private help_boardDTO help_boardDTO;
	private itemreturnDTO itemreturnDTO;
	private iv_itemDTO iv_itemDTO;
	private mylistDTO mylistDTO;
	private ratinglistDTO ratinglistDTO;
	private reviewDTO reviewDTO;
	private dv_order_itemDTO dv_order_itemDTO;
	
	
	
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
	public dv_order_itemDTO getDv_order_itemDTO() {
		return dv_order_itemDTO;
	}
	public void setDv_order_itemDTO(dv_order_itemDTO dv_order_itemDTO) {
		this.dv_order_itemDTO = dv_order_itemDTO;
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
	public String getGen() {
		return gen;
	}
	public void setGen(String gen) {
		this.gen = gen;
	}
	private addressDTO addressDTO;
	public String deleteagree;
	
	public String getDeleteagree() {
		return deleteagree;
	}
	public void setDeleteagree(String deleteagree) {
		this.deleteagree = deleteagree;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	public addressDTO getAddressDTO() {
		return addressDTO;
	}
	public void setAddressDTO(addressDTO addressDTO) {
		this.addressDTO = addressDTO;
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
	
	
	public String getState_nm() {
		return state_nm;
	}
	public void setState_nm(String state_nm) {
		this.state_nm = state_nm;
	}
	public String getAuthority_nm() {
		return authority_nm;
	}
	public void setAuthority_nm(String authority_nm) {
		this.authority_nm = authority_nm;
	}
	public String getGender_nm() {
		return gender_nm;
	}
	public void setGender_nm(String gender_nm) {
		this.gender_nm = gender_nm;
	}
	@Override
	public String toString() {
		return "memberDTO [usePoint=" + usePoint + ", membernum=" + membernum + ", id=" + id + ", pw=" + pw + ", name="
				+ name + ", email=" + email + ", tel=" + tel + ", birth=" + birth + ", point=" + point + ", pointac="
				+ pointac + ", joindate=" + joindate + ", state=" + state + ", state_nm=" + state_nm + ", authority="
				+ authority + ", authority_nm=" + authority_nm + ", gender=" + gender + ", gender_nm=" + gender_nm
				+ ", agree=" + agree + ", gen=" + gen + ", roadaddr=" + roadaddr + ", jibunaddr=" + jibunaddr
				+ ", detailaddr=" + detailaddr + ", extraaddr=" + extraaddr + ", postcode=" + postcode + ", itemDTO="
				+ itemDTO + ", dv_orderDTO=" + dv_orderDTO + ", codetableDTO=" + codetableDTO + ", imgDTO=" + imgDTO
				+ ", cartDTO=" + cartDTO + ", boardDTO=" + boardDTO + ", dr_reviewDTO=" + dr_reviewDTO
				+ ", help_boardDTO=" + help_boardDTO + ", itemreturnDTO=" + itemreturnDTO + ", iv_itemDTO=" + iv_itemDTO
				+ ", mylistDTO=" + mylistDTO + ", ratinglistDTO=" + ratinglistDTO + ", reviewDTO=" + reviewDTO
				+ ", dv_order_itemDTO=" + dv_order_itemDTO + ", addressDTO=" + addressDTO + ", deleteagree="
				+ deleteagree + "]";
	}
}

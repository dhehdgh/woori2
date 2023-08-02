package kr.co.dong.DTO;

import lombok.Data;

@Data
public class itemreturnDTO {
	private int returnnum;		//반품번호
	private int buynum;		//주문번호
	private String returncontent;		//반품사유
	private String returndate;		//반품신청일
	private int state;			//상태
	private int type;			//신청타입
	private String recomdate;		//반품완료일
	private int dv_itemno;
	private String typename;
	
	
	
	public String getTypename() {
		return typename;
	}

	public void setTypename(String typename) {
		this.typename = typename;
	}
	private codetableDTO codetableDTO;
	private imgDTO imgDTO;
	private cartDTO cartDTO;
	private addressDTO addressDTO;
	private boardDTO boardDTO;
	private dr_reviewDTO dr_reviewDTO;
	private help_boardDTO help_boardDTO;
	private dv_orderDTO dv_orderDTO;
	private iv_itemDTO iv_itemDTO;
	private mylistDTO mylistDTO;
	private ratinglistDTO ratinglistDTO;
	private reviewDTO reviewDTO;
	private dv_order_itemDTO dv_order_itemDTO;
	
	
	
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

	public addressDTO getAddressDTO() {
		return addressDTO;
	}

	public void setAddressDTO(addressDTO addressDTO) {
		this.addressDTO = addressDTO;
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

	public dv_orderDTO getDv_orderDTO() {
		return dv_orderDTO;
	}

	public void setDv_orderDTO(dv_orderDTO dv_orderDTO) {
		this.dv_orderDTO = dv_orderDTO;
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
	public String pay;   //결제방식
	   public String sta;   //주문상태
	   public String color;   //상품색상
	   public String size;   //사이즈
	
	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}

	public String getSta() {
		return sta;
	}

	public void setSta(String sta) {
		this.sta = sta;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}
	private String itemsname;
	public String getItemsname() {
		return itemsname;
	}

	public void setItemsname(String itemsname) {
		this.itemsname = itemsname;
	}
	private String itembname;
	public String getItembname() {
		return itembname;
	}

	public void setItembname(String itembname) {
		this.itembname = itembname;
	}

	@Override
	public String toString() {
		return "itemreturnDTO [returnnum="+returnnum+", buynum="+buynum+", returncontent="+returncontent+
				", returndate="+returndate+", state="+state+", type="+type+", recomdate="+recomdate+", dv_itemno="+dv_itemno+"]";
	}
	
	public int getDv_itemno() {
		return dv_itemno;
	}

	public void setDv_itemno(int dv_itemno) {
		this.dv_itemno = dv_itemno;
	}

	public int getReturnnum() {
		return returnnum;
	}
	public void setReturnnum(int returnnum) {
		this.returnnum = returnnum;
	}
	public int getBuynum() {
		return buynum;
	}
	public void setBuynum(int buynum) {
		this.buynum = buynum;
	}
	public String getReturncontent() {
		return returncontent;
	}
	public void setReturncontent(String returncontent) {
		this.returncontent = returncontent;
	}
	public String getReturndate() {
		return returndate;
	}
	public void setReturndate(String returndate) {
		this.returndate = returndate;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getRecomdate() {
		return recomdate;
	}
	public void setRecomdate(String recomdate) {
		this.recomdate = recomdate;
	}
	
	
}

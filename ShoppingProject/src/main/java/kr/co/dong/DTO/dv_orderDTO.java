package kr.co.dong.DTO;

public class dv_orderDTO {
   public int buynum;
   public String buydate;
   public int paymethod;
   public String addrnum;
   public String deliverycom;
   public int state;
   public String deliveryday;
   public int paymemt;
   public int pointvalue;
   private int ordercnt;
   
   public int getOrdercnt() {
	return ordercnt;
}
public void setOrdercnt(int ordercnt) {
	this.ordercnt = ordercnt;
}
public int getSalevalue() {
	return salevalue;
}
public void setSalevalue(int salevalue) {
	this.salevalue = salevalue;
}
public int getPointvalue() {
      return pointvalue;
   }
   public void setPointvalue(int pointvalue) {
      this.pointvalue = pointvalue;
   }
   public int salevalue;
   public int review;
   
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
   
   public String pay;   //결제방식
   public String sta;   //주문상태
   public String color;   //상품색상
   public String size;   //사이즈
   private String keyword; //키워드
   private String searchtype; //서치타입
   private String reviewno;
   
   
   
   
   
   public String getReviewno() {
	return reviewno;
}
public void setReviewno(String reviewno) {
	this.reviewno = reviewno;
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
private int dv_itemno;
   public int getDv_itemno() {
      return dv_itemno;
   }
   public void setDv_itemno(int dv_itemno) {
      this.dv_itemno = dv_itemno;
   }
   private int cartno;
   public int getCartno() {
      return cartno;
   }
   public void setCartno(int cartno) {
      this.cartno = cartno;
   }
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
   public String getKeyword() {
      return keyword;
   }
   public void setKeyword(String keyword) {
      this.keyword = keyword;
   }
   public String getSearchtype() {
      return searchtype;
   }
   public void setSearchtype(String searchtype) {
      this.searchtype = searchtype;
   }
   
   
   public dv_order_itemDTO getDv_order_itemDTO() {
      return dv_order_itemDTO;
   }
   public void setDv_order_itemDTO(dv_order_itemDTO dv_order_itemDTO) {
      this.dv_order_itemDTO = dv_order_itemDTO;
   }
   
   
   public addressDTO getAddressDTO() {
      return addressDTO;
   }
   public void setAddressDTO(addressDTO addressDTO) {
      this.addressDTO = addressDTO;
   }
   public cartDTO getCartDTO() {
      return cartDTO;
   }
   public void setCartDTO(cartDTO cartDTO) {
      this.cartDTO = cartDTO;
   }
   private  itemDTO itemDTO; //상품DTO
   private memberDTO memberDTO; //회원DTO

   public memberDTO getMemberDTO() {
      return memberDTO;
   }
   public void setMemberDTO(memberDTO memberDTO) {
      this.memberDTO = memberDTO;
   }
   public itemDTO getItemDTO() {
      return itemDTO;
   }
   public void setItemDTO(itemDTO itemDTO) {
      this.itemDTO = itemDTO;
   }
   
   
   
   public int getBuynum() {
      return buynum;
   }
   public void setBuynum(int buynum) {
      this.buynum = buynum;
   }
   
   public String getBuydate() {
      return buydate;
   }
   public void setBuydate(String buydate) {
      this.buydate = buydate;
   }
   public int getPaymethod() {
      return paymethod;
   }
   public void setPaymethod(int paymethod) {
      this.paymethod = paymethod;
   }
   
   
   public String getAddrnum() {
      return addrnum;
   }
   public void setAddrnum(String addrnum) {
      this.addrnum = addrnum;
   }
   public String getDeliverycom() {
      return deliverycom;
   }
   public void setDeliverycom(String deliverycom) {
      this.deliverycom = deliverycom;
   }
   public int getState() {
      return state;
   }
   public void setState(int state) {
      this.state = state;
   }
   public String getDeliveryday() {
      return deliveryday;
   }
   public void setDeliveryday(String deliveryday) {
      this.deliveryday = deliveryday;
   }
   public int getPaymemt() {
      return paymemt;
   }
   public void setPaymemt(int paymemt) {
      this.paymemt = paymemt;
   }
   public int getReview() {
      return review;
   }
   public void setReview(int review) {
      this.review = review;
   }
   @Override
   public String toString() {
      return "dv_orderDTO [buynum=" + buynum + ", buydate=" + buydate + ", paymethod=" + paymethod + ", addrnum="
            + addrnum + ", deliverycom=" + deliverycom + ", state=" + state + ", deliveryday=" + deliveryday
            + ", paymemt=" + paymemt + ", pointvalue=" + pointvalue + ", salevalue=" + salevalue + ", review="
            + review + ", cartDTO=" + cartDTO + ", addressDTO=" + addressDTO + ", dv_order_itemDTO="
            + dv_order_itemDTO + ", pay=" + pay + ", sta=" + sta + ", color=" + color + ", size=" + size
            + ", keyword=" + keyword + ", searchtype=" + searchtype + ", dv_itemno=" + dv_itemno + ", cartno="
            + cartno + ", itemDTO=" + itemDTO + ", memberDTO=" + memberDTO + "]";
   }
   
   
   
   
   
   
   
   
   
   
   
   
}
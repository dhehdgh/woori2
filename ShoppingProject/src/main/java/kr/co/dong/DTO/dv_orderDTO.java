package kr.co.dong.DTO;

public class dv_orderDTO {
	public int buynum;
	public String buydate;
	public int paymethod;
	public String addrnum;
	public String deliverycom;
	public int state;
	public String deliveryday;
	public int payment;
	public int pointvalue;
	public int salevalue;
	public int review;
	
	
	public int getPointvalue() {
		return pointvalue;
	}
	public void setPointvalue(int pointvalue) {
		this.pointvalue = pointvalue;
	}
	
	
	private  cartDTO cartDTO; //장바구니DTO
	private  addressDTO addressDTO; //배송지DTO
	private  dv_order_itemDTO dv_order_itemDTO; //주문상품DTO
	public String pay;	//결제방식
	public String sta;	//주문상태
	public String color;	//상품색상
	public String size;	//사이즈
	private String keyword; //키워드
	private String searchtype; //서치타입
	
	
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
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
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
				+ ", payment=" + payment + ", pointvalue=" + pointvalue + ", salevalue=" + salevalue + ", review="
				+ review + ", cartDTO=" + cartDTO + ", addressDTO=" + addressDTO + ", dv_order_itemDTO="
				+ dv_order_itemDTO + ", pay=" + pay + ", sta=" + sta + ", color=" + color + ", size=" + size
				+ ", keyword=" + keyword + ", searchtype=" + searchtype + ", dv_itemno=" + dv_itemno + ", cartno="
				+ cartno + ", itemDTO=" + itemDTO + ", memberDTO=" + memberDTO + "]";
	}
	public int getSalevalue() {
		return salevalue;
	}
	public void setSalevalue(int salevalue) {
		this.salevalue = salevalue;
	}
	
	
	
	
	
	
	
	
	
	
	
	
}

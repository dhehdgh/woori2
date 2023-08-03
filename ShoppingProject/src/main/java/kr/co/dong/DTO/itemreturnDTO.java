package kr.co.dong.DTO;

public class itemreturnDTO {
	public int returnnum;
	public int buynum;
	public String returncontent;
	public String returndate;
	public int state;
	public String state_rt;
	public int type;
	private int dv_itemno;	
	public String recomdate;	//반품완료일
	public String itemsname; //대분류
	public String itembname;	//소분류
	public String typename;	//신청타입
	public String pay;	//결제방식
	public String sta;	//주문상태
	public String color;	//상품색상
	public String size;	//사이즈
	private String keyword; //키워드
	private String searchtype; //서치타입
	
	
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
	public int getDv_itemno() {
		return dv_itemno;
	}
	public void setDv_itemno(int dv_itemno) {
		this.dv_itemno = dv_itemno;
	}
	private  dv_order_itemDTO dv_order_itemDTO; //주문상품DTO
	
	
	public dv_order_itemDTO getDv_order_itemDTO() {
		return dv_order_itemDTO;
	}
	public void setDv_order_itemDTO(dv_order_itemDTO dv_order_itemDTO) {
		this.dv_order_itemDTO = dv_order_itemDTO;
	}
	public String getRecomdate() {
		return recomdate;
	}
	public void setRecomdate(String recomdate) {
		this.recomdate = recomdate;
	}
	public String getSta() {
		return sta;
	}
	public void setSta(String sta) {
		this.sta = sta;
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}
	private  dv_orderDTO dv_orderDTO; //주문
	private addressDTO addressDTO;
	public addressDTO getAddressDTO() {
		return addressDTO;
	}
	public void setAddressDTO(addressDTO addressDTO) {
		this.addressDTO = addressDTO;
	}
	private  itemDTO itemDTO;	//상품
	private  memberDTO memberDTO;	//멤버
	
	public memberDTO getMemberDTO() {
		return memberDTO;
	}
	public void setMemberDTO(memberDTO memberDTO) {
		this.memberDTO = memberDTO;
	}
	public String getItemsname() {
		return itemsname;
	}
	public void setItemsname(String itemsname) {
		this.itemsname = itemsname;
	}
	public String getItembname() {
		return itembname;
	}
	public void setItembname(String itembname) {
		this.itembname = itembname;
	}
	
	
	
	
	public String getState_rt() {
		return state_rt;
	}
	public void setState_rt(String state_rt) {
		this.state_rt = state_rt;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	public dv_orderDTO getDv_orderDTO() {
		return dv_orderDTO;
	}
	public void setDv_orderDTO(dv_orderDTO dv_orderDTO) {
		this.dv_orderDTO = dv_orderDTO;
	}
	public itemDTO getItemDTO() {
		return itemDTO;
	}
	public void setItemDTO(itemDTO itemDTO) {
		this.itemDTO = itemDTO;
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
	@Override
	public String toString() {
		return "itemreturnDTO [returnnum=" + returnnum + ", buynum=" + buynum + ", returncontent=" + returncontent
				+ ", returndate=" + returndate + ", state=" + state + ", state_rt=" + state_rt + ", type=" + type
				+ ", dv_itemno=" + dv_itemno + ", recomdate=" + recomdate + ", itemsname=" + itemsname + ", itembname="
				+ itembname + ", typename=" + typename + ", pay=" + pay + ", sta=" + sta + ", color=" + color
				+ ", size=" + size + ", keyword=" + keyword + ", searchtype=" + searchtype + ", dv_order_itemDTO="
				+ dv_order_itemDTO + ", dv_orderDTO=" + dv_orderDTO + ", addressDTO=" + addressDTO + ", itemDTO="
				+ itemDTO + ", memberDTO=" + memberDTO + "]";
	}
	
}

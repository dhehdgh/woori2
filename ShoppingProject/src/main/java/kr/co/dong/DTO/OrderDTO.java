package kr.co.dong.DTO;

public class OrderDTO {
	private int buynum;
	private int cartno;
	private String addrnum;
	private int paymethod;
	private String buydate;
	private String deliverycom;
	private int state;
	private String deliveryday;
	private CartDTO cartDTO;
	private AddressDTO addressDTO;
	
	
	public int getBuynum() {
		return buynum;
	}
	public void setBuynum(int buynum) {
		this.buynum = buynum;
	}
	public int getCartno() {
		return cartno;
	}
	public void setCartno(int cartno) {
		this.cartno = cartno;
	}
	public String getAddrnum() {
		return addrnum;
	}
	public void setAddrnum(String addrnum) {
		this.addrnum = addrnum;
	}
	public int getPaymethod() {
		return paymethod;
	}
	public void setPaymethod(int paymethod) {
		this.paymethod = paymethod;
	}
	public String getBuydate() {
		return buydate;
	}
	public void setBuydate(String buydate) {
		this.buydate = buydate;
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
	public CartDTO getCartDTO() {
		return cartDTO;
	}
	public void setCartDTO(CartDTO cartDTO) {
		this.cartDTO = cartDTO;
	}
	public AddressDTO getAddressDTO() {
		return addressDTO;
	}
	public void setAddressDTO(AddressDTO addressDTO) {
		this.addressDTO = addressDTO;
	}
	
	@Override
	public String toString() {
		return "OrderDTO [buynum=" + buynum + ", cartno=" + cartno + ", addrnum=" + addrnum + ", paymethod=" + paymethod
				+ ", buydate=" + buydate + ", deliverycom=" + deliverycom + ", state=" + state + ", deliveryday="
				+ deliveryday + ", cartDTO=" + cartDTO + ", addressDTO=" + addressDTO + "]";
	}
}

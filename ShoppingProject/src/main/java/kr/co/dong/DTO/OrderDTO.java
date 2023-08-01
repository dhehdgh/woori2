package kr.co.dong.DTO;

public class OrderDTO {
	private int buynum;
	private String addrnum;
	private String buydate;
	private String paymethod;
	private String deliverycom;
	private String state_nm;
	private int payment;
	private String deliveryday;
	private int rstate;
	private int salevalue;
	private int pointvalue;
	private AddressDTO addressDTO;
	public int getBuynum() {
		return buynum;
	}
	public void setBuynum(int buynum) {
		this.buynum = buynum;
	}
	public String getAddrnum() {
		return addrnum;
	}
	public void setAddrnum(String addrnum) {
		this.addrnum = addrnum;
	}
	public String getBuydate() {
		return buydate;
	}
	public void setBuydate(String buydate) {
		this.buydate = buydate;
	}
	public String getPaymethod() {
		return paymethod;
	}
	public void setPaymethod(String paymethod) {
		this.paymethod = paymethod;
	}
	public String getDeliverycom() {
		return deliverycom;
	}
	public void setDeliverycom(String deliverycom) {
		this.deliverycom = deliverycom;
	}
	public String getState_nm() {
		return state_nm;
	}
	public void setState_nm(String state_nm) {
		this.state_nm = state_nm;
	}
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
	}
	public String getDeliveryday() {
		return deliveryday;
	}
	public void setDeliveryday(String deliveryday) {
		this.deliveryday = deliveryday;
	}
	public int getRstate() {
		return rstate;
	}
	public void setRstate(int rstate) {
		this.rstate = rstate;
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
	public AddressDTO getAddressDTO() {
		return addressDTO;
	}
	public void setAddressDTO(AddressDTO addressDTO) {
		this.addressDTO = addressDTO;
	}
	@Override
	public String toString() {
		return "OrderDTO [buynum=" + buynum + ", addrnum=" + addrnum + ", buydate=" + buydate + ", paymethod="
				+ paymethod + ", deliverycom=" + deliverycom + ", state_nm=" + state_nm + ", payment=" + payment
				+ ", deliveryday=" + deliveryday + ", rstate=" + rstate + ", salevalue=" + salevalue + ", pointvalue="
				+ pointvalue + ", addressDTO=" + addressDTO + "]";
	}

}

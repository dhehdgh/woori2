package kr.co.dong.DTO;

public class dv_orderDTO {
	public int buynum;
	public int itemnum;
	public int membernum;
	public String buydate;
	public int ordercnt;
	public int paymethod;
	public String addr;
	public String deliverycom;
	public int state;
	public String deliveryday;
	public int getBuynum() {
		return buynum;
	}
	public void setBuynum(int buynum) {
		this.buynum = buynum;
	}
	public int getItemnum() {
		return itemnum;
	}
	public void setItemnum(int itemnum) {
		this.itemnum = itemnum;
	}
	public int getMembernum() {
		return membernum;
	}
	public void setMembernum(int membernum) {
		this.membernum = membernum;
	}
	public String getBuydate() {
		return buydate;
	}
	public void setBuydate(String buydate) {
		this.buydate = buydate;
	}
	public int getOrdercnt() {
		return ordercnt;
	}
	public void setOrdercnt(int ordercnt) {
		this.ordercnt = ordercnt;
	}
	public int getPaymethod() {
		return paymethod;
	}
	public void setPaymethod(int paymethod) {
		this.paymethod = paymethod;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
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
	@Override
	public String toString() {
		return "dv_orderDTO [buynum=" + buynum + ", itemnum=" + itemnum + ", membernum=" + membernum + ", buydate="
				+ buydate + ", ordercnt=" + ordercnt + ", paymethod=" + paymethod + ", addr=" + addr + ", deliverycom="
				+ deliverycom + ", state=" + state + ", deliveryday=" + deliveryday + "]";
	}
	
	
}

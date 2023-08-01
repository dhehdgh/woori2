package kr.co.dong.DTO;

public class ReturnDTO {
	private int returnnum;
	private int buynum;
	private int dv_itemno;
	private String returncontent;
	private String returndate;
	private String recomdate;
	private String state;
	private int type;
	private Dv_order_itemDTO dv_order_itemDTO;
	private OrderDTO orderDTO;
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
	public int getDv_itemno() {
		return dv_itemno;
	}
	public void setDv_itemno(int dv_itemno) {
		this.dv_itemno = dv_itemno;
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
	public String getRecomdate() {
		return recomdate;
	}
	public void setRecomdate(String recomdate) {
		this.recomdate = recomdate;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public Dv_order_itemDTO getDv_order_itemDTO() {
		return dv_order_itemDTO;
	}
	public void setDv_order_itemDTO(Dv_order_itemDTO dv_order_itemDTO) {
		this.dv_order_itemDTO = dv_order_itemDTO;
	}
	public OrderDTO getOrderDTO() {
		return orderDTO;
	}
	public void setOrderDTO(OrderDTO orderDTO) {
		this.orderDTO = orderDTO;
	}
	@Override
	public String toString() {
		return "ReturnDTO [returnnum=" + returnnum + ", buynum=" + buynum + ", dv_itemno=" + dv_itemno
				+ ", returncontent=" + returncontent + ", returndate=" + returndate + ", recomdate=" + recomdate
				+ ", state=" + state + ", type=" + type + ", dv_order_itemDTO=" + dv_order_itemDTO + ", orderDTO="
				+ orderDTO + "]";
	}
}

package com.playscent.model;

public class OrderPfDTO {
	 // 주문 식별자 주문 식별자
    private Double order_idx;

    // 주문자 아이디 주문자 아이디
    private String mem_id;

    // 주문 총금액 주문 총금액
    private Double total_amount;

    // 할인 금액 할인 금액
    private Double discount_amount;

    // 결제 대상 금액 결제 대상 금액
    private Double pay_amount;

    // 결제 수단 결제 수단
    private String pay_method;

    // 결제 금액 결제 금액
    private Double paid_amount;

    // 배송지 주소 배송지 주소
    private String deli_addr;

    // 수령인 이름 수령인 이름
    private String recipient_name;

    // 수령인 전화 수령인 전화
    private String recipient_phone;

    // 택배 메모 택배 메모
    private String deli_meo;

    // 주문 상태 주문 상태
    private String order_status;
    
    private int PF_IDX;    
    // 향수명 
    private String PF_NAME;
    private String PF_BRAND;
    private Double PF_PRICE;
    private int PF_QUANTITY;
    private String PF_IMAGE;
    
    
    // getter, setter
	public Double getOrder_idx() {
		return order_idx;
	}
	public void setOrder_idx(Double order_idx) {
		this.order_idx = order_idx;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public Double getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(Double total_amount) {
		this.total_amount = total_amount;
	}
	public Double getDiscount_amount() {
		return discount_amount;
	}
	public void setDiscount_amount(Double discount_amount) {
		this.discount_amount = discount_amount;
	}
	public Double getPay_amount() {
		return pay_amount;
	}
	public void setPay_amount(Double pay_amount) {
		this.pay_amount = pay_amount;
	}
	public String getPay_method() {
		return pay_method;
	}
	public void setPay_method(String pay_method) {
		this.pay_method = pay_method;
	}
	public Double getPaid_amount() {
		return paid_amount;
	}
	public void setPaid_amount(Double paid_amount) {
		this.paid_amount = paid_amount;
	}
	public String getDeli_addr() {
		return deli_addr;
	}
	public void setDeli_addr(String deli_addr) {
		this.deli_addr = deli_addr;
	}
	public String getRecipient_name() {
		return recipient_name;
	}
	public void setRecipient_name(String recipient_name) {
		this.recipient_name = recipient_name;
	}
	public String getRecipient_phone() {
		return recipient_phone;
	}
	public void setRecipient_phone(String recipient_phone) {
		this.recipient_phone = recipient_phone;
	}
	public String getDeli_meo() {
		return deli_meo;
	}
	public void setDeli_meo(String deli_meo) {
		this.deli_meo = deli_meo;
	}
	public String getOrder_status() {
		return order_status;
	}
	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}
	public int getPF_IDX() {
		return PF_IDX;
	}
	public void setPF_IDX(int pF_IDX) {
		PF_IDX = pF_IDX;
	}
	public String getPF_NAME() {
		return PF_NAME;
	}
	public void setPF_NAME(String pF_NAME) {
		PF_NAME = pF_NAME;
	}
	public String getPF_BRAND() {
		return PF_BRAND;
	}
	public void setPF_BRAND(String pF_BRAND) {
		PF_BRAND = pF_BRAND;
	}
	public Double getPF_PRICE() {
		return PF_PRICE;
	}
	public void setPF_PRICE(Double pF_PRICE) {
		PF_PRICE = pF_PRICE;
	}
	public int getPF_QUANTITY() {
		return PF_QUANTITY;
	}
	public void setPF_QUANTITY(int pF_QUANTITY) {
		PF_QUANTITY = pF_QUANTITY;
	}
	public String getPF_IMAGE() {
		return PF_IMAGE;
	}
	public void setPF_IMAGE(String pF_IMAGE) {
		PF_IMAGE = pF_IMAGE;
	}
	public OrderPfDTO(String mem_id, String recipient_name, String recipient_phone, int pF_IDX,
			String pF_NAME, String pF_BRAND, Double pF_PRICE, int pF_QUANTITY, String pF_IMAGE) {
		this.mem_id = mem_id;
		this.recipient_name = recipient_name;
		this.recipient_phone = recipient_phone;
		PF_IDX = pF_IDX;
		PF_NAME = pF_NAME;
		PF_BRAND = pF_BRAND;
		PF_PRICE = pF_PRICE;
		PF_QUANTITY = pF_QUANTITY;
		PF_IMAGE = pF_IMAGE;
	}
	public OrderPfDTO() {
	}

    
   

}

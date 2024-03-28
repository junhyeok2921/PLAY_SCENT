package com.playscent.model;

public class CartDTO {
	private int FAV_IDX; // 장바구니 식별자.
	private String MEM_ID;
	private int PF_IDX;
	private int PF_COUNT;
	private String CREATED_AT; 
	private String PF_BRAND;
	private String PF_NAME;
	private Double PF_PRICE;
	private String PF_IMAGE;


	//생성자
	public CartDTO(String MEM_ID, int PF_IDX, int PF_COUNT) {
		this.MEM_ID = MEM_ID;
		this.PF_IDX = PF_IDX;
		this.PF_COUNT = PF_COUNT;
	}
	
	public void setFAV_IDX(int fAV_IDX) {
		FAV_IDX = fAV_IDX;
	}

	// 오버로딩 생성자.
	public CartDTO(int fAV_IDX, String mEM_ID, int pF_IDX, int pF_COUNT, String cREATED_AT, String pF_BRAND,
			String pF_NAME, Double pF_PRICE, String pF_IMAGE) {
		FAV_IDX = fAV_IDX;
		MEM_ID = mEM_ID;
		PF_IDX = pF_IDX;
		PF_COUNT = pF_COUNT;
		CREATED_AT = cREATED_AT;
		PF_BRAND = pF_BRAND;
		PF_NAME = pF_NAME;
		PF_PRICE = pF_PRICE;
		PF_IMAGE = pF_IMAGE;
	}
	
	
	// getter, setter
	public String getMEM_ID() {
		return MEM_ID;
	}

	

	public void setMEM_ID(String mEM_ID) {
		MEM_ID = mEM_ID;
	}

	public int getPF_IDX() {
		return PF_IDX;
	}

	public void setPF_IDX(int pF_IDX) {
		PF_IDX = pF_IDX;
	}

	public int getPF_COUNT() {
		return PF_COUNT;
	}

	public void setPF_COUNT(int pF_COUNT) {
		PF_COUNT = pF_COUNT;
	}

	public String getCREATED_AT() {
		return CREATED_AT;
	}

	public void setCREATED_AT(String cREATED_AT) {
		CREATED_AT = cREATED_AT;
	}

	public String getPF_BRAND() {
		return PF_BRAND;
	}

	public void setPF_BRAND(String pF_BRAND) {
		PF_BRAND = pF_BRAND;
	}

	public String getPF_NAME() {
		return PF_NAME;
	}

	public void setPF_NAME(String pF_NAME) {
		PF_NAME = pF_NAME;
	}

	public Double getPF_PRICE() {
		return PF_PRICE;
	}

	public void setPF_PRICE(Double pF_PRICE) {
		PF_PRICE = pF_PRICE;
	}

	public String getPF_IMAGE() {
		return PF_IMAGE;
	}

	public void setPF_IMAGE(String pF_IMAGE) {
		PF_IMAGE = pF_IMAGE;
	}

	public int getFAV_IDX() {
		return FAV_IDX;
	}


	
	
	
	

}

package com.playscent.model;

public class CartDTO {
	private int FAV_IDX; // 장바구니 식별자.
	private String MEM_ID;
	private int PF_IDX;
	private int PF_COUNT;
	private String CREATED_AT; 

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
	public CartDTO(int fAV_IDX, String mEM_ID, int pF_IDX, int pF_COUNT, String cREATED_AT) {
		this.FAV_IDX = fAV_IDX;
		this.MEM_ID = mEM_ID;
		this.PF_IDX = pF_IDX;
		this.PF_COUNT = pF_COUNT;
		this.CREATED_AT = cREATED_AT;
	}


	// getter, setter
	public int getFAV_IDX() {
		return FAV_IDX;
	}
	
	
	public String getMEM_ID() {
		return MEM_ID;
	}

	

	public void setMEM_ID(String MEM_ID) {
		this.MEM_ID = MEM_ID;
	}

	public int getPF_IDX() {
		return PF_IDX;
	}

	public void setPF_IDX(int pF_IDX) {
		this.PF_IDX = pF_IDX;
	}

	public int getPF_COUNT() {
		return PF_COUNT;
	}

	public void setPF_COUNT(int pF_COUNT) {
		this.PF_COUNT = pF_COUNT;
	}

	public String getCREATED_AT() {
		return CREATED_AT;
	}

	public void setCREATED_AT(String cREATED_AT) {
		this.CREATED_AT = cREATED_AT;
	}

	
	

}

package com.playscent.model;

public class CartDTO {
	private String user_id;
	private int perfume_idx;
	private int perfume_count;
	private String created_at;

	//생성자
	
	public CartDTO(String user_id, int perfume_idx, int perfume_count) {
		this.user_id = user_id;
		this.perfume_idx = perfume_idx;
		this.perfume_count = perfume_count;
	}

	// getter, setter
	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getPerfume_idx() {
		return perfume_idx;
	}

	public void setPerfume_idx(int perfume_idx) {
		this.perfume_idx = perfume_idx;
	}

	public int getPerfume_count() {
		return perfume_count;
	}

	public void setPerfume_count(int perfume_count) {
		this.perfume_count = perfume_count;
	}

	public String getCreated_at() {
		return created_at;
	}

	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	
	
	
	
	
	
	
	

}

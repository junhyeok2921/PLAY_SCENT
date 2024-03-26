package com.playscent.model;

public class SelectedProductDTO {
    private	String mem_id;	
    private	int pf_inx;	
    private	int pf_count;	
    private	String created_at;
    
    
    // 생성자
	public SelectedProductDTO(String mem_id, int pf_inx, int pf_count, String created_at) {
		this.mem_id = mem_id;
		this.pf_inx = pf_inx;
		this.pf_count = pf_count;
		this.created_at = created_at;
	}

	
	// setter, getter

	public String getMem_id() {
		return mem_id;
	}


	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}


	public int getPf_inx() {
		return pf_inx;
	}


	public void setPf_inx(int pf_inx) {
		this.pf_inx = pf_inx;
	}


	public int getPf_count() {
		return pf_count;
	}


	public void setPf_count(int pf_count) {
		this.pf_count = pf_count;
	}


	public String getCreated_at() {
		return created_at;
	}


	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}	

    
}




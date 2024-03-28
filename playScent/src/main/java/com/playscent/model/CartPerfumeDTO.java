package com.playscent.model;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartPerfumeDTO { 
// 향수 식별자 향수 식별자 
	private int pf_idx;
 
// 향수 명 향수 명 
	private String pf_name;
	
// 향수 가격 향수 가격 
	private Double pf_price;
 
// 향수 브랜드 향수 브랜드 
	private String pf_brand;
	
// 향수 성별
	private String pf_genders;
	
// 향수 대표향 
	private String pf_accords;
	
// 향수 대표향 
	private String pf_image;
	
// 향수 수량 
	private int pf_quantity;
	
	private String PF_TOP;
	private String PF_MID;
	private String PF_BOTTOM;
	

	

// 생성자
public CartPerfumeDTO(String pf_name, Double pf_price, String pf_brand, String pf_genders,
		String pf_accords, String pf_image) {
//	this.pf_idx = pf_idx;
	this.pf_name = pf_name;
	this.pf_price = pf_price;
	this.pf_brand = pf_brand;
	this.pf_genders = pf_genders;
	this.pf_accords = pf_accords;
	this.pf_image = pf_image;
}


// getter, setter
public int getPf_idx() {
	return pf_idx;
}

public void setPf_idx(int pf_idx) {
	this.pf_idx = pf_idx;
}

public String getPf_name() {
	return pf_name;
}

public void setPf_name(String pf_name) {
	this.pf_name = pf_name;
}

public Double getPf_price() {
	return pf_price;
}

public void setPf_price(Double pf_price) {
	this.pf_price = pf_price;
}

public String getPf_brand() {
	return pf_brand;
}

public void setPf_brand(String pf_brand) {
	this.pf_brand = pf_brand;
}

public String getPf_genders() {
	return pf_genders;
}

public void setPf_genders(String pf_genders) {
	this.pf_genders = pf_genders;
}

public String getPf_accords() {
	return pf_accords;
}

public void setPf_accords(String pf_accords) {
	this.pf_accords = pf_accords;
}

public String getPf_image() {
	return pf_image;
}

public void setPf_image(String pf_image) {
	this.pf_image = pf_image;
}

public int getPf_quantity() {
	return pf_quantity;
}

public void setPf_quantity(int pf_quantity) {
	this.pf_quantity = pf_quantity;
}
	

	
	
}


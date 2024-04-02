package com.playscent.model;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ParseDTO {	
	private int PF_IDX;
	private String PF_NAME;
	private String PF_BRAND;
	private String PF_GENDERS;
	private String PF_Accords;
	private String PF_top;
	private String PF_mid;
	private String PF_bottom;
	private int PF_PRICE;
	private String PF_Image; 
	private String keyword;
	private String keybrand;
	
	
	

}

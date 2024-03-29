package com.playscent.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class ReveiwDTO {
	private int REVIEW_IDX;
	private int PF_IDX;
	private String MEM_ID;
	private String REVIEW_CONTENT;
	private String REVIEWED_AT;
	private String REVIEW_STAR;

}

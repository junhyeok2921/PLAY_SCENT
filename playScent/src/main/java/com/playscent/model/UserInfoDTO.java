package com.playscent.model;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class UserInfoDTO {
	// 회원 아이디 회원 아이디
    private String mem_id;
    
    // 회원 이름 회원 이름
    private String mem_name;

    // 회원 비밀번호 회원 비밀번호
    private String age;   

    // 회원 이메일 회원 이메일
    private String mem_email;

    // 회원 전화번호 회원 전화번호
    private String mem_phone;

    // 회원 성별 회원 성별
    private String mem_gender;

    // 회원 가입일자 회원 가입일자
    private String joined_at;

    // 회원 구분 회원 구분
    private String mem_type;
    
    // 회원 구분 프로필이미지
    private String PROFILE_IMAGE;
    
    
    
    // getter, setter
    public String getMemId() {
        return mem_id;
    }

    public void setMemId(String memId) {
        this.mem_id = mem_id;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getMemName() {
        return mem_name;
    }

    public void setMemName(String memName) {
        this.mem_name = mem_name;
    }

    public String getMemEmail() {
        return mem_email;
    }

    public void setMemEmail(String memEmail) {
        this.mem_email = mem_email;
    }

    public String getMemPhone() {
        return mem_phone;
    }

    public void setMemPhone(String memPhone) {
        this.mem_phone = mem_phone;
    }

    public String getMemGender() {
        return mem_gender;
    }

    public void setMemGender(String memGender) {
        this.mem_gender = mem_gender;
    }

    public String getJoinedAt() {
        return joined_at;
    }

    public void setJoinedAt(String joinedAt) {
        this.joined_at = joined_at;
    }

    public String getMemType() {
        return mem_type;
    }

    public void setMemType(String memType) {
        this.mem_type = mem_type;
    }

  
	
	

}

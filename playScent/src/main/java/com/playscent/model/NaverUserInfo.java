package com.playscent.model;

public class NaverUserInfo {
	
	private String age;
	private String email;
	private String gender;
	private String id;
	private String mobile;
	private String name;
	private String nickname;
	
	// 디폴트 생성자.
	public NaverUserInfo() {		
		
	}
	
	
	
	
	public NaverUserInfo(String age, String email, String gender, String id, String mobile, String name,
			String nickname) {
		this.age = age;
		this.email = email;
		this.gender = gender;
		this.id = id;
		this.mobile = mobile;
		this.name = name;
		this.nickname = nickname;
	}




	// getter, setter
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	
	
	
	
	

}

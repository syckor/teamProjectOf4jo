package com.sajo.domain;

//회원(Member table)VO
//멤버 변수는 private 데이터type 변수명; 로 설정
public class MemberVO {
	
	private String mid;
	private String mname;
	private String mpassword;
	private String month;
	private String year;
	private String day;
	private String gender;
	private String mail;
	private String mtel;
	private String mtype; 
	private String maddr; 
	
	private String birth;
	
	
	
	 
	public String getBirth() {
		return birth;
	}
	public void setBirth(String year, String month, String day) {
		this.birth = year+"/"+month+"/"+day;  
	}  
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	
	
	
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMpassword() {
		return mpassword;
	}
	public void setMpassword(String mpassword) {
		this.mpassword = mpassword;
	}

	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	} 
	public String getMtel() {
		return mtel;
	}
	public void setMtel(String mtel) {
		this.mtel = mtel;
	}
	public String getMtype() {
		return mtype;
	}
	public void setMtype(String mtype) {
		this.mtype = mtype;
	}
	public String getMaddr() {
		return maddr;
	}
	public void setMaddr(String maddr) {
		this.maddr = maddr;
	}
	
}

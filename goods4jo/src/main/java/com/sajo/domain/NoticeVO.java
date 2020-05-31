package com.sajo.domain;
//공지사항(Notice table)VO
//멤버 변수는 private 데이터type 변수명; 로 설정
public class NoticeVO {
	int ntno;
	String ntitle;
	String ncontent;
	
	public int getNtno() {
		return ntno;
	}
	public void setNtno(int ntno) {
		this.ntno = ntno;
	}
	public String getNtitle() {
		return ntitle;
	}
	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}
	public String getNcontent() {
		return ncontent;
	}
	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}
	
}

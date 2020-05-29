package com.sajo.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sajo.dao.MemberDAOImpl;
import com.sajo.domain.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDAOImpl memberDAO;
	 
	 
	/**
	  * 아이디 중복 체크하는 sql + 로그인 기능 sql
	  */
	  public MemberVO idCheck_Login( MemberVO vo) 
	  {
		  return memberDAO.idCheck(vo);
	  }
	  
	  
	  /** 
	   * 회원가입 sql 
	   */ 
	
	public int memberInsert(MemberVO vo) {
		return memberDAO.memberInsert(vo);
	}
}

package com.sajo.dao;

import com.sajo.domain.MemberVO;
import com.sajo.domain.SellerVO;

public interface MemberDAO {
	/**
	 * id 중복체트 기능 구현
	 */	
	MemberVO  idCheck( MemberVO vo );
	
	 
	/**
	 * tel 중복체트 기능 구현
	 */	 
	MemberVO  telCheck( MemberVO vo );
	
	
	/**
	 * 회원가입기능 구현
	 */
	int memberInsert(MemberVO vo); 
	
	/**
	 * 판매자 가입기능 구현
	 */
	int sellerInsert(SellerVO svo);
	
	/**
	 * 로그인 확인 기능 구현
	 */
	
	MemberVO memberLogin(MemberVO vo);
	/**
	 * 셀러회원 취소
	 */
	int sellerDelete(MemberVO vo);
	
	/**
	 * 셀러회원 취소시 타입을 소비자로 변경
	 */
	int changeMtype(MemberVO vo);
	
	
	
}
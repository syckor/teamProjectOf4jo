package com.sajo.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sajo.domain.MemberVO;
import com.sajo.domain.SellerVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	//아이디 중복체크
	public MemberVO idCheck(MemberVO vo) {
		System.out.println("===> MemberMapper idCheck 호출");
		return mybatis.selectOne("MemberDAO.idCheck", vo); 
	} 
	   
	//전화번호 중복체크
	public MemberVO telCheck(MemberVO vo) {
		System.out.println("===> MemberMapper telCheck 호출");
		return mybatis.selectOne("MemberDAO.telCheck", vo); 
	} 
    
	//회원가입  
	public int memberInsert(MemberVO vo) {
		System.out.println("===>  MemberMapper memberInsert() 호출");
		return mybatis.insert("MemberDAO.memberInsert", vo);
	}

	//로그인시 멤버체크
	public MemberVO memberLogin(MemberVO vo) { 
		System.out.println("===> MemberMapper idCheck 호출");
		return mybatis.selectOne("MemberDAO.idCheck", vo);
	}
	
	//회원가입시 판매자 회원등록
	public int sellerInsert(SellerVO svo) { 
		System.out.println("===>  MemberMapper sellerInsert() 호출");
		return mybatis.insert("MemberDAO.sellerInsert", svo);
	}

	//셀러회원 탈퇴
	public int sellerDelete(MemberVO vo) {
		System.out.println("===>  MemberMapper sellerDelete() 호출");
		return mybatis.delete("MemberDAO.sellerDelete", vo); 
	} 
	
	public int changeMtype(MemberVO vo) {
		System.out.println("===>  MemberMapper sellerDelete() 호출");
		return mybatis.update("MemberDAO.changeMtype", vo); 
	}
	
	//셀러회원 탈퇴
	public int memberDelete(MemberVO vo) {
		System.out.println("===>  MemberMapper memberDelete() 호출");
		return mybatis.delete("MemberDAO.memberDelete", vo);   
	} 

}

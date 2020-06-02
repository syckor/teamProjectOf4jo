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
	
	@Override
	public MemberVO idCheck(MemberVO vo) {
		System.out.println("===> MemberMapper idCheck 호출");
		return mybatis.selectOne("MemberDAO.idCheck", vo); 
	} 
	   
	@Override
	public MemberVO telCheck(MemberVO vo) {
		System.out.println("===> MemberMapper telCheck 호출");
		return mybatis.selectOne("MemberDAO.telCheck", vo); 
	} 
    
	@Override  
	public int memberInsert(MemberVO vo) {
		System.out.println("===>  MemberMapper memberInsert() 호출");
		return mybatis.insert("MemberDAO.memberInsert", vo);
	}

	@Override
	public MemberVO memberLogin(MemberVO vo) {
		System.out.println("===> MemberMapper idCheck 호출");
		return mybatis.selectOne("MemberDAO.idCheck", vo);
	}

	public int sellerInsert(SellerVO svo) {
		System.out.println("===>  MemberMapper sellerInsert() 호출");
		return mybatis.insert("MemberDAO.sellerInsert", svo);
	}

}

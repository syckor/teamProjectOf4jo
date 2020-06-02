package com.sajo.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sajo.domain.QnaVO;

@Repository("qnaDAO")
public class QnaDAOImpl implements QnaDAO{

	@Autowired
	private SqlSessionTemplate mybatis;//root-context 커넥션파일
	
	public void insertQna(QnaVO vo) {
		System.out.println("===> Mybatis insertQna() 호출");
		mybatis.insert("QnaDAO.insertQna", vo);

		
	}
	
	public List<QnaVO> getQnaList(QnaVO vo){
		System.out.println("===> Mybatis getQnaList() 호출");
		return mybatis.selectList("QnaDAO.getQnaList", vo);
	}

}

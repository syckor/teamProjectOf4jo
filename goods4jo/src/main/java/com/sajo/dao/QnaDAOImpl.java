package com.sajo.dao;

import java.util.HashMap;
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
	
	public QnaVO getQna(QnaVO vo) {
		System.out.println("===> Mybatis getQna()호출");
		return mybatis.selectOne("QnaDAO.getQna",vo);
	}

	public void deleteQna(int qno,int qpassword) {
		
	   HashMap<String, Integer> m=new HashMap<String, Integer>();
		m.put("qno", qno);
		m.put("qpassword",qpassword);
		System.out.println("===> Mybatis deleteQna()호출");
		mybatis.delete("QnaDAO.deleteQna",m);
		
	}
	
	public void answerQna(QnaVO vo) {
		System.out.println("===> Mybatis answerQna()호출");
		mybatis.update("QnaDAO.answerQna",vo);		
	}
	

}

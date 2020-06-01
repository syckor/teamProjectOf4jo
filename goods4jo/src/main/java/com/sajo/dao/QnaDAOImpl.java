package com.sajo.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sajo.domain.QnaVO;

@Repository("qnaDAO")
public class QnaDAOImpl implements QnaDAO{

	@Autowired
	private SqlSessionTemplate mybatis;//root-context 커넥션파일
	
	public int insertQna(QnaVO vo) {
		System.out.println("===> Mybatis insertBoard() 호출");
		int result=mybatis.insert("QnaDAO.insertQna", vo);
		mybatis.commit();
		return result;
		
	}

}

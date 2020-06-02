package com.sajo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sajo.dao.QnaDAOImpl;
import com.sajo.domain.QnaVO;

@Service("qnaService")
public class QnaServiceImpl implements QnaService{

	@Autowired
	private QnaDAOImpl qnaDAO;

	public void insertQna(QnaVO vo) {
		qnaDAO.insertQna(vo);
			}
	
	public List<QnaVO> getQnaList(QnaVO vo){
		System.out.println("service 호출");
		return qnaDAO.getQnaList(vo);
	}
}

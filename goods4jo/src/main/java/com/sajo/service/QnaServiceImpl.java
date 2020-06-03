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
		System.out.println("getQnaList service 호출");
		return qnaDAO.getQnaList(vo);
	}
	
	public QnaVO getQna(QnaVO vo) {
		System.out.println("getQna service 호출");
		return qnaDAO.getQna(vo);
	}
	
	public void deleteQna(int qno,int qpassword) {
		System.out.println("deleteQna service 호출");
		qnaDAO.deleteQna(qno,qpassword);
	}
	
	public void answerQna(QnaVO vo) {
		System.out.println("answerQna service 호출");
		qnaDAO.answerQna(vo);
	}
}

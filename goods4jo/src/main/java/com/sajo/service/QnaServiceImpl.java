package com.sajo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sajo.dao.QnaDAOImpl;
import com.sajo.domain.QnaVO;

@Service("qnaService")
public class QnaServiceImpl implements QnaService{

	@Autowired
	private QnaDAOImpl qnaDAO;

	public int insertQna(QnaVO vo) {
		return qnaDAO.insertQna(vo);
			}

}

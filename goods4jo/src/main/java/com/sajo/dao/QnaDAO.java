package com.sajo.dao;

import java.util.List;

import com.sajo.domain.QnaVO;

public interface QnaDAO {
	public void insertQna(QnaVO vo);
	
	public List<QnaVO> getQnaList(QnaVO vo) ;
}

package com.sajo.service;

import java.util.List;

import com.sajo.domain.QnaVO;

public interface QnaService {
	// CRUD 기능의 메소드 구현
	// 글 등록
	void insertQna(QnaVO vo);
	
	// 글 목록 조회
	List<QnaVO> getQnaList(QnaVO vo);
	
	// 글 상세 조회
	QnaVO getQna(QnaVO vo);
	
	// 글 삭제
	void deleteQna(int qno,int qpassword);
	
	// 답변 작성
	void answerQna(QnaVO vo);
}

package com.sajo.service;

import java.util.List;

import com.sajo.domain.QnaVO;
import com.sajo.domain.SellListVO;

public interface SellListService {
	// CRUD 기능의 메소드 구현

	// 글 목록 조회
	List<SellListVO> getSellList(String sellerid);


}

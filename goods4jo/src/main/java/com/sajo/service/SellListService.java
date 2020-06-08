package com.sajo.service;

import java.util.List;
import java.util.Map;

import com.sajo.domain.QnaVO;
import com.sajo.domain.SellListVO;

public interface SellListService {
	// CRUD 기능의 메소드 구현

	// 글 목록 조회
	List<SellListVO> getSellList(String sellerid);

	// 현금으로 결제한 건수 조회
	int getCashChart(String sellerid);
	
	// 카드로 결제한 건수 조회
	int getCardChart(String sellerid);
}

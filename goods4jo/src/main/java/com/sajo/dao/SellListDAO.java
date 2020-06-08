package com.sajo.dao;

import java.util.List;

import com.sajo.domain.NoticeVO;
import com.sajo.domain.SellListVO;


public interface SellListDAO {

	public List<SellListVO> getSellList(String sellerid) ;
}

package com.sajo.dao;

import java.util.List;
import java.util.Map;

import com.sajo.domain.SellListVO;


public interface SellListDAO {

	public List<SellListVO> getSellList(String sellerid) ;
	
	public int getCashChart(String sellerid) ;
	
	public int getCardChart(String sellerid) ;
}

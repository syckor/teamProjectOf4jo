package com.sajo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.sajo.dao.SellListDAOImpl;
import com.sajo.domain.SellListVO;

@Service("sellListService")
public class SellListServiceImpl implements SellListService{

	@Autowired
	private SellListDAOImpl sellListDAO;

	@Override
	public List<SellListVO> getSellList(String sellerid){
		System.out.println("getSellList service 호출");
		return sellListDAO.getSellList(sellerid);
	}

	@Override
	public int getCashChart(String sellerid) {
		System.out.println("getCashChart service 호출");
		return sellListDAO.getCashChart(sellerid);
	}
	
	@Override
	public int getCardChart(String sellerid) {
		System.out.println("getCardChart service 호출");
		return sellListDAO.getCardChart(sellerid);
	}
	
	
}

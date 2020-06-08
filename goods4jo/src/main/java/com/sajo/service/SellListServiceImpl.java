package com.sajo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sajo.dao.QnaDAOImpl;
import com.sajo.dao.SellListDAOImpl;
import com.sajo.domain.QnaVO;
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
	
	
}

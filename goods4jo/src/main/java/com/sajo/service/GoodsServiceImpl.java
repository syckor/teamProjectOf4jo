package com.sajo.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sajo.dao.GoodsDAO;
import com.sajo.domain.GoodsVO;

@Service("service")
public class GoodsServiceImpl  implements GoodsService{
	private int totalRecCount;		// 전체 레코드 수	
	private int pageTotalCount;		// 전체 페이지 수
	private int countPerPage = 6;	// 한페이지당 레코드 수
	
	
	@Autowired
	private GoodsDAO dao;

	@Override
	public int insertGoods(GoodsVO goods) {
		return dao.insertGoods(goods);
	}

	
	@Override
	public GoodsVO selectByGdate() {
		return dao.selectByGdate();
	}

	@Override
	public GoodsVO selectByGid(String gid) {
		return dao.selectByGid(gid);
	}


	@Override
	public List<GoodsVO> selectKakao() {
		return dao.selectKakao();
	}


	@Override
	public List<GoodsVO> selectLine() {
		return dao.selectLine();
	}


	@Override
	public List<GoodsVO> selectGeneral() {
		return dao.selectGeneral();
	}


	@Override
	public List<GoodsVO> selectAll() {
		return dao.selectAll();
	}


	@Override
	public int getTotalCount(String brend) {
		totalRecCount=dao.getTotalCount(brend);
		pageTotalCount=totalRecCount/countPerPage;
		if(totalRecCount % countPerPage>0) pageTotalCount++;
		return pageTotalCount;
	}


	@Override
	public List<HashMap<String, Object>> getBrendList(String brend,String pNum,String orderby) {

		int pageNum=1;
		if(pNum != null) pageNum = Integer.parseInt(pNum);
		
		int firstRow = (pageNum-1)*countPerPage+1;
		int endRow=pageNum*countPerPage;
		
		// 페이지 당 레코드를 검색해 온다면
		List <HashMap<String, Object>> List = dao.getBrendList(brend,orderby,firstRow, endRow);		
		return List;
	}


	@Override
	public int getSearchTotal(String keyword) {
		totalRecCount=dao.getSearchTotal(keyword);
		pageTotalCount=totalRecCount/countPerPage;
		if(totalRecCount % countPerPage>0) pageTotalCount++;
		return pageTotalCount;
	}


	@Override
	public List<HashMap> getSearchList(String keyword, String pNum) {

		int pageNum=1;
		if(pNum != null) pageNum = Integer.parseInt(pNum);
		
		int firstRow = (pageNum-1)*countPerPage+1;
		int endRow=pageNum*countPerPage;
		
		// 페이지 당 레코드를 검색해 온다면
		List <HashMap> List = dao.getSearchList(keyword,firstRow, endRow);		
		return List;
	}


	}

	

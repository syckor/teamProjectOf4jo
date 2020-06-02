package com.sajo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sajo.dao.GoodsDAO;
import com.sajo.domain.GoodsVO;

@Service("service")
public class GoodsServiceImpl  implements GoodsService{
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
	public GoodsVO selectByGid(GoodsVO goods) {
		return dao.selectByGid(goods);
	}

	
}

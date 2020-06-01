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
		System.out.println(goods.getCount()+"11111111111111111111111111111111111111111111111111111111111111111111111111111");
		return dao.insertGoods(goods);
	}

	
}

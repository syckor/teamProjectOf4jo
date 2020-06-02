package com.sajo.dao;

import com.sajo.domain.GoodsVO;

public interface GoodsDAO {
	
	int insertGoods(GoodsVO goods);
	GoodsVO selectByGdate();
	GoodsVO selectByGid(GoodsVO goods);
}
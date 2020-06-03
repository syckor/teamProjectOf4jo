package com.sajo.service;

import com.sajo.domain.GoodsVO;

public interface GoodsService {

	public int insertGoods(GoodsVO goods);
	public GoodsVO selectByGdate();
	public GoodsVO selectByGid(String gid);
}

package com.sajo.service;

import java.util.HashMap;
import java.util.List;

import com.sajo.domain.GoodsVO;

public interface GoodsService {

	public int insertGoods(GoodsVO goods);
	public GoodsVO selectByGdate();
	public GoodsVO selectByGid(String gid);
	public List<GoodsVO> selectKakao();
	public List<GoodsVO> selectLine();
	public List<GoodsVO> selectGeneral();
	public List<GoodsVO> selectAll();
	public int getTotalCount(String brend);
	public List<HashMap<String, Object>> getBrendList(String brend,String pNum);
}

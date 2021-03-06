package com.sajo.dao;

import java.util.HashMap;
import java.util.List;

import com.sajo.domain.GoodsVO;

public interface GoodsDAO {
	
	int insertGoods(GoodsVO goods);
	GoodsVO selectByGdate();
	GoodsVO selectByGid(String gid);
	public List<GoodsVO> selectKakao();
	public List<GoodsVO> selectLine();
	public List<GoodsVO> selectGeneral();
	public List<GoodsVO> selectAll();
	public int getTotalCount(String brend);
	public List<HashMap<String, Object>> getBrendList(String brend,String sort,int firstRow, int endRow);
	public int getSearchTotal(String keyword);
	public List<HashMap> getSearchList(String orderby,int firstRow, int endRow);
}
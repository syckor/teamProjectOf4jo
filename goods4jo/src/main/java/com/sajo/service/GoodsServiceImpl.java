package com.sajo.service;

import java.util.List;

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

	
}

package com.sajo.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sajo.domain.GoodsVO;

@Repository("dao")
public class GoodsDAOImpl implements GoodsDAO{

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public int insertGoods(GoodsVO goods) {
		System.out.println("===> GoodsMapper insertGoods 호출");
		return mybatis.insert("GoodsDAO.insertGoods", goods); 
	}

	@Override
	public GoodsVO selectByGdate() {
		System.out.println("===> GoodsMapper selectByGdate 호출");
		return mybatis.selectOne("GoodsDAO.selectByGdate");
	}


	@Override
	public GoodsVO selectByGid(String gid) {
		System.out.println("===> GoodsMapper selectByGid 호출");
		return mybatis.selectOne("GoodsDAO.selectByGid",gid);
	}
	
	

}

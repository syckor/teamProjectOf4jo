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
	
	

}

package com.sajo.dao;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sajo.domain.SellListVO;

@Repository("sellListDAO")
public class SellListDAOImpl implements SellListDAO {
	@Autowired
	private SqlSessionTemplate mybatis;// root-context 커넥션파일

	@Override
	public List<SellListVO> getSellList(String sellerid) {
		System.out.println("===> Mybatis getSellList() 호출");
		return mybatis.selectList("SellListDAO.getSellList", sellerid);
	}



	

}
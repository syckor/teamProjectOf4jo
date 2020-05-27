package com.sajo.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sajo.domain.testVO;

@Repository
public class testDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public testVO selectLogin(testVO vo) {
		return mybatis.selectOne("org.sajo.TestMapper.selectLogin",vo);
	}
}

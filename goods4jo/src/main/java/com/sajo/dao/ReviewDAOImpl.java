package com.sajo.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sajo.domain.ReviewVO;
@Repository("reviewDao")
public class ReviewDAOImpl implements ReviewDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public int insertReview(ReviewVO vo) {
		return mybatis.insert("ReviewDAO.insertReview",vo);
	}

}

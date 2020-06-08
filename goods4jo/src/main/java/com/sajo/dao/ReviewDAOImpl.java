package com.sajo.dao;

import java.util.HashMap;
import java.util.List;

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

	@Override
	public List<HashMap> selectByGid(String gid) {
		return mybatis.selectList("ReviewDAO.selectByGid",gid);
	}

}

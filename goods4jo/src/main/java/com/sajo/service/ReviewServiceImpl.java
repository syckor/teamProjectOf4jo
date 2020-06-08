package com.sajo.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sajo.dao.ReviewDAO;
import com.sajo.domain.ReviewVO;
@Service("reviewService")
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewDAO reviewDao;
	
	@Override
	public int insertReview(ReviewVO vo) {
		return reviewDao.insertReview(vo);
	}

	@Override
	public List<HashMap> selectByGid(String gid) {
		return reviewDao.selectByGid(gid);
	}

}

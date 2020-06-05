package com.sajo.service;

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
		reviewDao.insertReview(vo);
		return 0;
	}

}

package com.sajo.service;

import java.util.HashMap;
import java.util.List;

import com.sajo.domain.ReviewVO;

public interface ReviewService {

	public int insertReview(ReviewVO vo);
	public List<HashMap> selectByGid(String gid,String pNum);
	public int getBnoReviewCnt(int bno);
	public int getTotalCount(String gid);
}

package com.sajo.dao;

import java.util.HashMap;
import java.util.List;

import com.sajo.domain.ReviewVO;

public interface ReviewDAO {

	public int insertReview(ReviewVO vo);
	public List<HashMap> selectByGid(String gid,int startRow,int endRow);
	public int getBnoReviewCnt(int bno);
	public int getTotalCount(String gid);
}

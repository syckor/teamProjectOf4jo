package com.sajo.dao;

import java.util.HashMap;
import java.util.List;

import com.sajo.domain.ReviewVO;

public interface ReviewDAO {

	public int insertReview(ReviewVO vo);
	public List<HashMap> selectByGid(String gid);
}

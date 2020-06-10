package com.sajo.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sajo.dao.ReviewDAO;
import com.sajo.domain.ReviewVO;
@Service("reviewService")
public class ReviewServiceImpl implements ReviewService {
	private int totalRecCount;		// 전체 레코드 수	
	private int pageTotalCount;		// 전체 페이지 수
	private int countPerPage = 6;	// 한페이지당 레코드 수
	
	@Autowired
	private ReviewDAO reviewDao;
	
	@Override
	public int insertReview(ReviewVO vo) {
		return reviewDao.insertReview(vo);
	}

	@Override
	public List<HashMap> selectByGid(String gid,String pNum) {
		int pageNum=1;
		if(pNum != null) pageNum = Integer.parseInt(pNum);
		
		int firstRow = (pageNum-1)*countPerPage+1;
		int endRow=pageNum*countPerPage;
		
		// 페이지 당 레코드를 검색해 온다면
		List <HashMap> List = reviewDao.selectByGid(gid,firstRow,endRow);		
		return List;
	}

	@Override
	public int getBnoReviewCnt(int bno) {
		return reviewDao.getBnoReviewCnt(bno);
	}

	@Override
	public int getTotalCount(String gid) {
		totalRecCount=reviewDao.getTotalCount(gid);
		pageTotalCount=totalRecCount/countPerPage;
		if(totalRecCount % countPerPage>0) pageTotalCount++;
		return pageTotalCount;
	}

	@Override
	public int getReviewCount(String gid) {
		return reviewDao.getTotalCount(gid);
	}

}

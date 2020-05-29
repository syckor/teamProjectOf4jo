package com.sajo.service;

import java.util.List;

import com.sajo.domain.NoticeVO;


public interface NoticeService {
	// 글 목록 조회
		List<NoticeVO> notice(NoticeVO vo);
	}


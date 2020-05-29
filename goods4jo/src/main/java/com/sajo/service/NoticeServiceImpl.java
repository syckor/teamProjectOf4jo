package com.sajo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sajo.dao.NoticeDAOImpl;
import com.sajo.domain.NoticeVO;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private NoticeDAOImpl noticeDAO;

	public List<NoticeVO> notice(NoticeVO vo) {
		return noticeDAO.notice(vo);
}
}
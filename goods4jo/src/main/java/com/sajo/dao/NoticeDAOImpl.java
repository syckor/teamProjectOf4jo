package com.sajo.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sajo.domain.NoticeVO;

@Repository("noticeDAO")
public class NoticeDAOImpl implements NoticeDAO {
	@Autowired
	private SqlSessionTemplate mybatis;// root-context 커넥션파일

	public List<NoticeVO> notice(NoticeVO vo) {
		System.out.println("===> Mybatis notice() 호출");
		return mybatis.selectList("NoticeDAO.notice", vo);
	}

}
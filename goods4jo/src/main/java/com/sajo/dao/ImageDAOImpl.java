package com.sajo.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sajo.domain.ImageVO;

@Repository
public class ImageDAOImpl implements ImageDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public int insertImage(ImageVO vo) {
		System.out.println("===> ImageMapper insertImg 호출");
		return mybatis.insert("ImageDAO.insertImg", vo);
	}

	@Override
	public ImageVO selectByGid(ImageVO vo) {
		System.out.println("===> ImageMapper SelectByGid 호출");

		return mybatis.selectOne("ImageDAO.selectByGid",vo);
	}

}

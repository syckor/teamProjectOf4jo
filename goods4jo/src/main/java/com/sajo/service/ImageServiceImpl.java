package com.sajo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sajo.dao.ImageDAO;
import com.sajo.domain.ImageVO;

@Service("imgservice")
public class ImageServiceImpl implements ImageService {
	@Autowired
	private ImageDAO dao;

	@Override
	public int insertImage(ImageVO vo) {
		
		return dao.insertImage(vo);
	}

	@Override
	public ImageVO selectByGid(ImageVO vo) {
		return dao.selectByGid(vo);
	}

}

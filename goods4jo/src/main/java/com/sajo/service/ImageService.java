package com.sajo.service;

import com.sajo.domain.ImageVO;

public interface ImageService {

	public int insertImage(ImageVO vo);
	public ImageVO selectByGid(String gid);
}

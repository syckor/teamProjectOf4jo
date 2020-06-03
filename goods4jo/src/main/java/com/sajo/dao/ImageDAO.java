package com.sajo.dao;

import com.sajo.domain.ImageVO;

public interface ImageDAO {

	public int insertImage(ImageVO vo);
	public ImageVO selectByGid(String gid);
}

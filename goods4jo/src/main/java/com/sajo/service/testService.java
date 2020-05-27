package com.sajo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sajo.dao.testDAO;
import com.sajo.domain.testVO;

@Service
public class testService {
	@Autowired
	private testDAO dao;
	
	public testVO selectLogin(testVO vo) {
		return dao.selectLogin(vo);
	}
}

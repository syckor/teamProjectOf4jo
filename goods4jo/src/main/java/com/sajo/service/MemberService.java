package com.sajo.service;

import com.sajo.domain.MemberVO;

public interface MemberService {
	public MemberVO idCheck_Login( MemberVO vo);
	public int memberInsert(MemberVO vo);

}
 
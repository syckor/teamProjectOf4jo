package com.sajo.service;

import com.sajo.domain.MemberVO;
import com.sajo.domain.SellerVO;

public interface MemberService {
	public MemberVO idCheck_Login( MemberVO vo);
	public MemberVO telCheck_Login( MemberVO vo);
	public int memberInsert(MemberVO vo);
	public int sellerInsert(SellerVO svo);
	
}
 
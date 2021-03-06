package com.sajo.service;

import com.sajo.domain.MemberVO;
import com.sajo.domain.SellerVO;

public interface MemberService {
	public MemberVO idCheck_Login( MemberVO vo);
	public MemberVO telCheck_Login( MemberVO vo);
	public int memberInsert(MemberVO vo);
	public int sellerInsert(SellerVO svo);
	public int deleteSeller(MemberVO vo);
	public int changeMtype(MemberVO vo); 
	public int deleteMember(MemberVO vo);
	public int memberUpdate(MemberVO vo); 
	public int changeMtypeToSeller(MemberVO vo);
	public SellerVO getSellerInfo(SellerVO svo);
	 
}
  
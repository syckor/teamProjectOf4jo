package com.sajo.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sajo.domain.MemberVO;
import com.sajo.domain.SellerVO;
import com.sajo.service.MemberService;

@Controller
@RequestMapping("/member") 
public class MemberController {

	@RequestMapping("/{url}.sajo")
	public String regist(@PathVariable String url) {
		return "redirect:/main.sajo ";

	}// WEB-INF/views/member+url+.jsp 
	
	@RequestMapping("/loginpopup.sajo")
	public String loginpopup() {
		return "/loginpopup.sajo"; 
   
	} 
 
	
	@Autowired
	private MemberService memberService;

	
	@RequestMapping("/memberInsert.sajo")
	public String insert(MemberVO vo, SellerVO svo, HttpServletRequest request, HttpSession session,  
			@RequestParam(value = "year") String year,
			@RequestParam(value = "month") String month, 
			@RequestParam(value = "day") String day,
			@RequestParam(value = "loadaddr", required=false, defaultValue="0") String loadaddr,  
			@RequestParam(value = "postnumber", required=false, defaultValue="0") String postnumber,
			@RequestParam(value = "detailofaddr", required=false, defaultValue="0") String detailofaddr
			)   
	{  
		
		String seller = request.getParameter("seller");

		if (seller == null) { 
			seller = "소비자"; 
		}else {
			seller = "판매자";			
			  System.out.println(loadaddr);
			  System.out.println(postnumber);
			  System.out.println(detailofaddr);
			  svo.setMid(vo.getMid());
			  svo.setSaddr(loadaddr, detailofaddr);
			  System.out.println(svo.getSaddr());
		}
		
		vo.setMtype(seller);
		vo.setBirth(year, month, day);
		
		int result = memberService.memberInsert(vo);
		//seller가 판매자일 경우에만 seller테이블에 Insert실행
		if(seller.equals("판매자")) {
			memberService.sellerInsert(svo);
		}
		String message = "회원가입이 완료되었습니다. \n로그인해주세요";
		session.setAttribute("insertresult", message);
		return "redirect:/main.sajo ";   
		
		
	} 
	
	/*
	 *회원정보 수정
	 */	
	@RequestMapping("/memberModify.sajo")
	public String modifyMember(MemberVO vo, SellerVO svo, HttpServletRequest request, HttpSession session, 
			@RequestParam(value = "loadaddr1", required=false, defaultValue="0") String loadaddr,  
			@RequestParam(value = "postnumber1", required=false, defaultValue="0") String postnumber,
			@RequestParam(value = "detailofaddr1", required=false, defaultValue="0") String detailofaddr
			)    
	{   
		String message = "";
		int result = 0;
		int result1= 0;
		MemberVO mvo = (MemberVO)session.getAttribute("member"); 
		String seller = request.getParameter("addseller");
		vo.setMid(mvo.getMid()); 
		System.out.println(vo.getMid());
		if (seller == null) { 
			seller = "소비자"; 
		}else {
			seller = "판매자";			
			  svo.setMid(vo.getMid());
			  svo.setSaddr(loadaddr, detailofaddr);
		}		
		vo.setMtype(seller);	
		result1 = memberService.memberUpdate(vo);
		memberService.changeMtypeToSeller(vo);
		
		
		//seller가 판매자일 경우에만 seller테이블에 Insert실행
		if(seller.equals("판매자")) {
			result = memberService.sellerInsert(svo);
		}	
		if(result==1&result1==1) {
			session.setAttribute("updateresult", "회원정보수정");
		}
		return "redirect:/main.sajo ";    	
	}
	
	
	/*
	 *아이디 중복체크
	 */
	@ResponseBody//(****************비동기통신을 해주세요) AJAX통신을 하는애는 반드시 이 어노테이션이 있어야함 
	@RequestMapping(value = "/idCheck.sajo", produces="application/test; charset=UTF-8")
	public String idcheck(MemberVO vo) {
		MemberVO result = memberService.idCheck_Login(vo);
		String message = "중복된 아이디입니다";
		if(result==null) message="사용가능한 아이디입니다";
		 
		return message;
	} 
	
	/*
	 *전화번호 중복체크
	 */
	
	@ResponseBody//(****************비동기통신을 해주세요) AJAX통신을 하는애는 반드시 이 어노테이션이 있어야함 
	@RequestMapping(value = "/telCheck.sajo", produces="application/test; charset=UTF-8")
	public String telcheck(MemberVO vo) {
		MemberVO result = memberService.telCheck_Login(vo);
		String message = "중복된 전화번호입니다";
		if(result==null) message="사용가능한 전화번호입니다";
		 
		return message;
	} 
	
	/*
	 * 로그인 메쏘드
	 * 회원정보가 일반회원인지 셀러회원인지에 따라
	 * 세션 저장하는 개수가 달라진다
	 * 
	 */
	
	@RequestMapping("/login.sajo")
	public String login(MemberVO vo, SellerVO svo, HttpSession session) {//spring에서의 세션 사용법
		MemberVO result = memberService.idCheck_Login(vo);
		
		if(result==null||result.getMid()==null) {
			return "redirect:/main.sajo";  
		}else { 
			session.setAttribute("sessionTime", new Date().toLocaleString());
			session.setAttribute("member", result); 
			 
			if(result.getMtype().equals("판매자")) {
				SellerVO rsSeller = memberService.getSellerInfo(svo);
				session.setAttribute("seller", result.getMtype()); 
				session.setAttribute("seller", rsSeller);
				session.setAttribute("loginresult", "로그인 성공"); 
			} 
		} 
		
		return "redirect:/main.sajo";  
	} 	
	/*
	 * Logout 메쏘드
	 * 세션삭제 후 메인페이지로 돌림
	 */
	
	@RequestMapping("/logout.sajo") 
	public String logout(HttpSession session) {//spring에서의 세션 사용법		
			session.removeAttribute("member");	 
		return "redirect:/main.sajo";  
	} 
 
	/*
	 * 팝업창에서 받은 비밀번호를 확인 후 같으면 셀러회원 탈퇴
	 */
	@RequestMapping("/checkPass.sajo") 
	public String checkPass( HttpServletRequest request, HttpSession session, MemberVO vo,
			@RequestParam(value = "checkpassword") String pass) {
		 int result1=0;
		 int result2=0;
		 String message="";
		
		vo = (MemberVO)session.getAttribute("member");
		System.out.println(pass); 
		System.out.println(vo.getMpassword()); 
		System.out.println(vo.getMid());
		
		//비밀번호 비교 
		if(pass.equals(vo.getMpassword())){
			 result1 = memberService.deleteSeller(vo);
			 result2 = memberService.changeMtype(vo);			 
		} 
		if(result1==1&result2==1) {
			session.setAttribute("sdeleteresult", "회원정보수정");
			
		}
		vo.setDelete(message);
		return "redirect:/main.sajo";        
	}  
	
	 
	@RequestMapping("/deleteMember.sajo") 
	public String deleteMember( HttpServletRequest request, HttpSession session, MemberVO vo,
			@RequestParam(value = "pwfordelete") String pass) {
		vo = (MemberVO)session.getAttribute("member");
		System.out.println(pass); 
		System.out.println(vo.getMpassword()); 
		System.out.println(vo.getMid());
		
		//비밀번호 비교 
		if(pass.equals(vo.getMpassword())){
			 int result = memberService.deleteSeller(vo);
			 int result1 = memberService.deleteMember(vo);
			 String message="회원탈퇴 완료!";
			 
			 System.out.println(result);
			 System.out.println(result1); 
			 if(result1==1) {
				 session.removeAttribute("member");  
				 session.removeAttribute("seller");   
				 session.setAttribute("mdeleteresult", "회원정보수정"); 
			 } 	 
		}  
		return "redirect:/main.sajo";        
	}  
}

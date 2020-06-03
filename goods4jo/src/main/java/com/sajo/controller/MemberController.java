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
		return "/member/main.sajo" + url;

	}// WEB-INF/views/member+url+.jsp
 
	
	@Autowired
	private MemberService memberService;

	
	@RequestMapping("/memberInsert.sajo")
	public String insert(MemberVO vo, SellerVO svo, HttpServletRequest request, 
			@RequestParam(value = "year") String year,
			@RequestParam(value = "month") String month, 
			@RequestParam(value = "day") String day,
			@RequestParam(value = "loadaddr") String loadaddr,  
			@RequestParam(value = "postnumber") String postnumber,
			@RequestParam(value = "detailofaddr"/*, required=false, defaultValue="0"*/) String detailofaddr
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
		
		memberService.memberInsert(vo);
		//seller가 판매자일 경우에만 seller테이블에 Insert실행
		if(seller.equals("판매자")) {
			memberService.sellerInsert(svo);
		}	
		return "redirect:/main.sajo ";   
		
		
	}
	
	
	
	@ResponseBody//(****************비동기통신을 해주세요) AJAX통신을 하는애는 반드시 이 어노테이션이 있어야함 
	@RequestMapping(value = "/idCheck.sajo", produces="application/test; charset=UTF-8")
	public String idcheck(MemberVO vo) {
		MemberVO result = memberService.idCheck_Login(vo);
		String message = "중복된 아이디입니다";
		if(result==null) message="사용가능한 아이디입니다";
		 
		return message;
	} 
	
	
	@ResponseBody//(****************비동기통신을 해주세요) AJAX통신을 하는애는 반드시 이 어노테이션이 있어야함 
	@RequestMapping(value = "/telCheck.sajo", produces="application/test; charset=UTF-8")
	public String telcheck(MemberVO vo) {
		MemberVO result = memberService.telCheck_Login(vo);
		String message = "중복된 전화번호입니다";
		if(result==null) message="사용가능한 전화번호입니다";
		 
		return message;
	} 
	
	/*
	 * Spring에서 String을 리턴하면 뷰페이지 지정이 되버림
	 * 무조건 뷰페이지 지어되어서 화면이 변경되어야함(페이지전환)
	 * 
	 */
	
	@RequestMapping("/login.sajo")
	public String login(MemberVO vo, HttpSession session) {//spring에서의 세션 사용법
		MemberVO result = memberService.idCheck_Login(vo);
		if(result==null||result.getMid()==null) {
			return "redirect:/main.sajo";  
		}else { 
			session.setAttribute("sessionTime", new Date().toLocaleString());
			session.setAttribute("member", result); 
			 
			if(result.getMtype().equals("판매자")) {
				session.setAttribute("seller", result.getMtype());
			} 			 
		}
		System.out.println(session.getAttribute("memberId")+"님 로그인 성공");
		System.out.println(result.getMtype()); 
		return "redirect:/main.sajo";  
	} 	
	/*
	 * Logout 메쏘드
	 * 세션삭제 후 메인페이지로 돌림
	 */
	
	@RequestMapping("/logout.sajo") 
	public String logout(HttpSession session) {//spring에서의 세션 사용법		
			session.invalidate();	
		return "redirect:/main.sajo";  
	} 
 
	/*
	 * 팝업창에서 받은 비밀번호를 확인 후 같으면 셀러회원 탈퇴
	 */
	@RequestMapping("/checkPass.sajo") 
	public String checkPass( HttpServletRequest request, HttpSession session, MemberVO vo,
			@RequestParam(value = "checkpassword") String pass) {
		vo = (MemberVO)session.getAttribute("member");
		System.out.println(pass); 
		System.out.println(vo.getMpassword()); 
		System.out.println(vo.getMid());
		
		//비밀번호 비교 
		if(pass.equals(vo.getMpassword())){
			 memberService.deleteSeller(vo);
			 memberService.changeMtype(vo);
			 
		} 
		return "redirect:/main.sajo";        
	}  
}

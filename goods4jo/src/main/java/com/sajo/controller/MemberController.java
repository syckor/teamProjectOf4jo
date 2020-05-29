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
import com.sajo.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@RequestMapping("/{url}.sajo")
	public String regist(@PathVariable String url) {
		return "/member/" + url;
		
	}//WEB-INF/views/member+url+.jsp
	
	@Autowired
	private MemberService memberService;
	

	  @RequestMapping("/memberInsert.sajo") 
	  public String insert(MemberVO vo, HttpServletRequest request,
			  			@RequestParam(value = "year") String year,
			            @RequestParam(value = "month") String month,
			            @RequestParam(value = "day") String day
			          
			  ) { 
	  //db를 탐 서비스필요     
	  String seller = request.getParameter("seller");
	   System.out.println(year);
	   
	   if(seller==null) seller="소비자";
	   else seller="판매자";
	   
	   vo.setMtype(seller);  
	   vo.setBirth(year,month,day); 
	   
	   int result = memberService.memberInsert(vo);  
	  return "redirect:/index.sajo "; 
	  }
	 
	
	
	@ResponseBody//(****************비동기통신을 해주세요) AJAX통신을 하는애는 반드시 이 어노테이션이 있어야함 
	@RequestMapping(value = "/idCheck.sajo", produces="application/test; charset=UTF-8")
	public String idcheck(MemberVO vo) {
		MemberVO result = memberService.idCheck_Login(vo);
		String message = "중복된 아이디입니다";
		if(result==null) message="사용가능한 아이디입니다";
		
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
			return "/member/memberLogin";
		}else { 
			session.setAttribute("sessionTime", new Date().toLocaleString());
			session.setAttribute("memberName", result.getMname());
			session.setAttribute("memberId", result.getMid());
		}
		return "/index"; 
	} 
	
}

package com.sajo.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sajo.dao.MemberDAO;
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
	  public String insert(MemberVO vo, HttpServletRequest request ) {
	  //db를 탐 서비스필요 

	  int result = memberService.memberInsert(vo);  
	   String seller = request.getParameter("seller");
	   String year = request.getParameter("year");
	   String month = request.getParameter("month");
	   String day = request.getParameter("day");
	   System.out.println(year);
	   System.out.println(seller);
	   vo.setMtype(seller);
	   vo.setYear(year);
	   vo.setMonth(month);
	   vo.setDay(day);
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

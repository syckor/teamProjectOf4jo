package com.sajo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sajo.domain.QnaVO;
import com.sajo.service.QnaService;

@Controller
public class QnaController {

	@Autowired
	private QnaService qnaService;

	// QNA 화면 출력 및 리스트 보여주기
	@RequestMapping("/mail.sajo")
	public String getQnaList(QnaVO vo, Model model) {
		List<QnaVO> list = qnaService.getQnaList(vo);
		System.out.println(list);
		model.addAttribute("qnaList", list);
		return "board/mail";
	}

	// QNA 입력
	@RequestMapping("/{step}.sajo")
	public String insertQna(@PathVariable String step) {
		return step;
	}

	// QNA 저장
	@RequestMapping("/saveQna.sajo")
	public String saveQna(QnaVO vo) {
		qnaService.insertQna(vo);
		return "redirect:/mail.sajo";
	}

	// QNA 세부 보여주기
	@RequestMapping("/getQna.sajo")
	public String getQna(QnaVO vo, HttpSession session, Model model) {
		QnaVO result = qnaService.getQna(vo);
		model.addAttribute("qna", result);

		if (result.getQanswer() != null) {
			String message = "답변은 다음과 같습니다^^ : " + result.getQanswer();
			session.setAttribute("showAnswer", message);
		}
		return "board/getQna";
	}

	// QNA 삭제
	@RequestMapping("/deleteQna.sajo")
	public String deleteQna(String qno, String qpassword) {
		try {
			int no = Integer.parseInt(qno);
			int pass = Integer.parseInt(qpassword);
			qnaService.deleteQna(no, pass);
		} catch (NumberFormatException e) {
			
		}
		return "redirect:/mail.sajo";
	}

	// 답변 달기
	@RequestMapping("/answerQna.sajo")
	public String answerQna(@ModelAttribute("qna") QnaVO vo) {
		qnaService.answerQna(vo);
		return "redirect:/mail.sajo";
	}

}

package com.example.spring02.controller.member;



import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.spring02.model.member.dto.MemberVO;
import com.example.spring02.service.member.MemberService;


@Controller
@RequestMapping("/member/*") 
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService memberService;
	
	
	@RequestMapping("member/write.do")
	public String memberWrite(){
		return "member/member_write";
	}
	
	@RequestMapping("member/insert.do")
	public String insert(@ModelAttribute MemberVO vo){
		memberService.insertMember(vo);
		return "member/login";
	}
	
	
	@RequestMapping("login.do")
	public String login(){
		return "member/login";	// views/member/login.jsp濡� �룷�썙�뱶
	}
	
	
	@RequestMapping("loginCheck.do")
	public ModelAndView loginCheck(@ModelAttribute MemberVO vo, HttpSession session){
		boolean result = memberService.loginCheck(vo, session);
		ModelAndView mav = new ModelAndView();
		if (result == true) {
			mav.setViewName("home");
			mav.addObject("msg", "success");
		} else {	
			mav.setViewName("member/login");
			mav.addObject("msg", "failure");
		}
		return mav;
	}
	
	
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session){
		memberService.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home");
		mav.addObject("msg", "logout");
		return mav;
	}
	
	@RequestMapping("member/view.do")
	public String memberView(@ModelAttribute MemberVO vo, Model model) {
		model.addAttribute("dto", memberService.viewMember(vo));
		return "member/member_view";
	}
	
	@RequestMapping("member/update.do")
	public String memberUpdate(@ModelAttribute MemberVO vo, Model model) {
		boolean result = memberService.checkPw(vo.getUserId(), vo.getUserPw());
		if(result) {
			memberService.updateMember(vo);
			return "home";
		}else {
		MemberVO vo2 = memberService.viewMember(vo);
		vo.setUserRegdate(vo2.getUserRegdate());
		model.addAttribute("dto", vo);
		model.addAttribute("message", "비밀번호 불일치");
		return "member/member_view";
		}
	}
	
	@RequestMapping("member/delete.do")
	public String memberDelete(@ModelAttribute MemberVO vo, @RequestParam String userId, @RequestParam String userPw, Model model, HttpSession session) {
		boolean result = memberService.checkPw(userId, userPw);
		if(result) {
			session.invalidate();
			memberService.deleteMember(vo);
			return "home";
		}else {
			model.addAttribute("message", "비밀번호 불일치");
			model.addAttribute("dto", memberService.viewMember(vo));
			return "member/member_view";
		}
	}
	
	
		
	
}

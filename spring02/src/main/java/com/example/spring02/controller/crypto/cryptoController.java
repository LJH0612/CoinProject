package com.example.spring02.controller.crypto;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.spring02.model.inter.dto.InterVO;
import com.example.spring02.service.inter.InterService;


@Controller 
@RequestMapping("/crypto/*") 
public class cryptoController {
	
	@Inject
	InterService interService;

	private static final Logger logger = LoggerFactory.getLogger(cryptoController.class);
	
	
	@RequestMapping("crypto/sub0.do")
	public String sub0(){
		return "crypto/sub0";
	}
	
	@RequestMapping("crypto/sub1.do")
	public String sub1(){
		return "crypto/sub1";
	}
	
	
	@RequestMapping("crypto/sub2.do")
	public String sub2(){
		return "crypto/sub2";
	}
	
	@RequestMapping("crypto/sub3.do")
	public String sub3(){
		return "crypto/sub3";
	}
	
	@RequestMapping("crypto/sub4.do")
	public String sub4(){
		return "crypto/sub4";
	}
	
	@RequestMapping("crypto/sub5.do")
	public String sub5(){
		return "crypto/sub5";
	}
	
	@RequestMapping("crypto/sub6.do")
	public String sub6(){
		return "crypto/sub6";
	}
	
	@RequestMapping("crypto/sub7.do")
	public String sub7(){
		return "crypto/sub7";
	}
	
	@RequestMapping("crypto/sub8.do")
	public String sub8(){
		return "crypto/sub8";
	}
	
	@RequestMapping("crypto/sub9.do")
	public String sub9(){
		return "crypto/sub9";
	}

	// 비트코인
	@RequestMapping("crypto/interest1.do")
	public String interst(@ModelAttribute InterVO vo, HttpSession session, Model model) {
		String userId = (String) session.getAttribute("userId");
		int coinId = 1;
		vo.setUserId(userId);
		vo.setCoinId(coinId);
		List<InterVO> vo1 =  interService.viewInter(vo);
		
		for(int i=0; i < vo1.size(); i++) {
			InterVO str = vo1.get(i);
			InterVO str1 = vo1.get(0);
			System.out.println(str);
		  if(str1.getCoinName().equals(str.getCoinName())){
			  model.addAttribute("msg", "이미 관심등록이 되어있습니다!");
			  model.addAttribute("url", "/crypto/sub0.do");
		 
			  return "mypage/message(alert)"; 
		  }

		}
		
		interService.insertInter(vo);
		// 기존 코인 있는지 검사
		return "redirect:sub0.do";
	}

	// 이더리움
	@RequestMapping("crypto/interest2.do")
	public String interst2(@ModelAttribute InterVO vo, HttpSession session, Model model) {
		String userId = (String) session.getAttribute("userId");
		int coinId = 2;
		vo.setUserId(userId);
		vo.setCoinId(coinId);
		List<InterVO> vo1 =  interService.viewInter(vo);
		
		for(int i=0; i < vo1.size(); i++) {
			InterVO str = vo1.get(i);
			InterVO str1 = vo1.get(0);
			System.out.println(str);
		
		  if(str1.getCoinName().equals(str.getCoinName())){
			  model.addAttribute("msg", "이미 관심등록이 되어있습니다!");
			  model.addAttribute("url", "/crypto/sub1.do");
		 
			  return "mypage/message(alert)"; 
		  }

		}
		
		interService.insertInter(vo);
		// 기존 코인 있는지 검사
		return "redirect:sub1.do";
	}

	// 리플
	@RequestMapping("crypto/interest3.do")
	public String interst3(@ModelAttribute InterVO vo, HttpSession session, Model model) {
		String userId = (String) session.getAttribute("userId");
		int coinId = 3;
		vo.setUserId(userId);
		vo.setCoinId(coinId);
		List<InterVO> vo1 =  interService.viewInter(vo);
		
		for(int i=0; i < vo1.size(); i++) {
			InterVO str = vo1.get(i);
			InterVO str1 = vo1.get(0);
			System.out.println(str);
		  if(str1.getCoinName().equals(str.getCoinName())){
			  model.addAttribute("msg", "이미 관심등록이 되어있습니다!");
			  model.addAttribute("url", "/crypto/sub2.do");
		 
			  return "mypage/message(alert)"; 
		  }

		}
		interService.insertInter(vo);
		// 기존 코인 있는지 검사
		return "redirect:sub2.do";
	}

	// 비트코인 캐쉬
	@RequestMapping("crypto/interest4.do")
	public String interst4(@ModelAttribute InterVO vo, HttpSession session, Model model) {
		String userId = (String) session.getAttribute("userId");
		int coinId = 4;
		vo.setUserId(userId);
		vo.setCoinId(coinId);
		
List<InterVO> vo1 =  interService.viewInter(vo);
		
		for(int i=0; i < vo1.size(); i++) {
			InterVO str = vo1.get(i);
			InterVO str1 = vo1.get(0);
			System.out.println(str);
		  if(str1.getCoinName().equals(str.getCoinName())){
			  model.addAttribute("msg", "이미 관심등록이 되어있습니다!");
			  model.addAttribute("url", "/crypto/sub3.do");
		 
			  return "mypage/message(alert)"; 
		  }

		}
		
		
		interService.insertInter(vo);
		// 기존 코인 있는지 검사
		return "redirect:sub3.do";
	}

	// 라이트코인
	@RequestMapping("crypto/interest5.do")
	public String interst5(@ModelAttribute InterVO vo, HttpSession session, Model model) {
		String userId = (String) session.getAttribute("userId");
		int coinId = 5;
		vo.setUserId(userId);
		vo.setCoinId(coinId);
List<InterVO> vo1 =  interService.viewInter(vo);
		
		for(int i=0; i < vo1.size(); i++) {
			InterVO str = vo1.get(i);
			InterVO str1 = vo1.get(0);
			System.out.println(str);
		  if(str1.getCoinName().equals(str.getCoinName())){
			  model.addAttribute("msg", "이미 관심등록이 되어있습니다!");
			  model.addAttribute("url", "/crypto/sub4.do");
		 
			  return "mypage/message(alert)"; 
		  }

		}
		interService.insertInter(vo);
		// 기존 코인 있는지 검사
		return "redirect:sub4.do";
	}

	// 테더
	@RequestMapping("crypto/interest6.do")
	public String interst6(@ModelAttribute InterVO vo, HttpSession session, Model model) {
		String userId = (String) session.getAttribute("userId");
		int coinId = 6;
		vo.setUserId(userId);
		vo.setCoinId(coinId);
List<InterVO> vo1 =  interService.viewInter(vo);
		
		for(int i=0; i < vo1.size(); i++) {
			InterVO str = vo1.get(i);
			InterVO str1 = vo1.get(0);
			System.out.println(str);
		  if(str1.getCoinName().equals(str.getCoinName())){
			  model.addAttribute("msg", "이미 관심등록이 되어있습니다!");
			  model.addAttribute("url", "/crypto/sub5.do");
		 
			  return "mypage/message(alert)"; 
		  }

		}
		interService.insertInter(vo);
		// 기존 코인 있는지 검사
		return "redirect:sub5.do";
	}
	
}

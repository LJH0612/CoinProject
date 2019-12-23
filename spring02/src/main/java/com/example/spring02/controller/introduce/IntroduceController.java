package com.example.spring02.controller.introduce;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller 
@RequestMapping("/introduce/*") 
public class IntroduceController {

	private static final Logger logger = LoggerFactory.getLogger(IntroduceController.class);
	
	
	@RequestMapping("introduce/introduce1.do")
	public String introduce1(){
		return "introduce/introduce1";
	}
	
	@RequestMapping("introduce/introduce2.do")
	public String introduce2(){
		return "introduce/introduce2";
	}
	
	
	@RequestMapping("introduce/introduce3.do")
	public String introduce3(){
		return "introduce/introduce3";
	}
	

	@RequestMapping("introduce/map.do")
	public String map(){
		return "introduce/map";
	}
	
	
}

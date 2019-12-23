package com.example.spring02.controller.historicaldata;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller 
@RequestMapping("/historicaldata/*") 
public class HistoricaldataController {

	private static final Logger logger = LoggerFactory.getLogger(HistoricaldataController.class);
	
	
	@RequestMapping("historicaldata/his0.do")
	public String sub0(){
		return "historicaldata/his0";
	}
	
	@RequestMapping("historicaldata/his1.do")
	public String sub1(){
		return "historicaldata/his1";
	}
	
	
	@RequestMapping("historicaldata/his2.do")
	public String sub2(){
		return "historicaldata/his2";
	}
	
	@RequestMapping("historicaldata/his3.do")
	public String sub3(){
		return "historicaldata/his3";
	}
	
	@RequestMapping("historicaldata/his4.do")
	public String sub4(){
		return "historicaldata/his4";
	}
	
	@RequestMapping("historicaldata/his5.do")
	public String sub5(){
		return "historicaldata/his5";
	}
	
	@RequestMapping("historicaldata/his6.do")
	public String sub6(){
		return "historicaldata/his6";
	}
	
	@RequestMapping("historicaldata/his7.do")
	public String sub7(){
		return "historicaldata/his7";
	}
	
	@RequestMapping("historicaldata/his8.do")
	public String sub8(){
		return "historicaldata/his8";
	}
	
	@RequestMapping("historicaldata/his9.do")
	public String sub9(){
		return "historicaldata/his9";
	}
	
	
}

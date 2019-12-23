package com.example.spring02.controller.filtering;

import java.util.HashMap;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.spring02.model.filtering.dto.FilteringVO;
import com.example.spring02.service.filtering.FilteringService;

@Controller 
@RequestMapping("/mypage/*")
public class filteringController {
	
	
	private static final Logger logger = LoggerFactory.getLogger(filteringController.class);
	@Autowired
	SqlSession sqlSession;
	

	
	@Inject
	FilteringService filteringService;
	
				
	
	@RequestMapping("mypage/filtering.do")
	public String filtering( Model model) throws Exception {
		
		
		return "mypage/filtering";
	}
	
	@RequestMapping("mypage/filtering_output.do")
	public String filtering_output(@ModelAttribute FilteringVO vo, Model model,  HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		vo.toString();
		String t_Name = vo.getT_Name();
		HashMap<String, String> map = new HashMap<String, String>();

		System.out.println(t_Name);
		if(t_Name.equals("pre_bitcoin")) {
			map.put("Stocks", "비트코인 (BTC)");
			map.put("image", "bitcoin.png");
		}
		if(t_Name.equals("pre_ethereum")) {
			map.put("Stocks", "이더리움 (ETH)");
			map.put("image", "ethereum.png");
	
		}
		if(t_Name.equals("pre_xrp")) {
			map.put("Stocks", "리플 (XRP)");
			map.put("image", "ripple.png");
	
		}
		if(t_Name.equals("pre_bitcoincash")) {
			map.put("Stocks", "비트캐시 (BCH)");
			map.put("image", "bitcoin-cash.png");
			
		}
		if(t_Name.equals("pre_litecoin")) {
			map.put("Stocks", "라이트 코인 (LTC)");
			map.put("image", "litecoin.png");
		
		}
		if(t_Name.equals("pre_bitcoinsv")) {
			map.put("Stocks", "비트코인SV");
			map.put("image", "bitcoin-sv.png");
		
		}
		if(t_Name.equals("pre_tether")) {
			map.put("Stocks", "테더 (USDT)");
			map.put("image", "tether.png");

		}
		if(t_Name.equals("pre_binance")) {
			map.put("Stocks", "비이낸스 코인 (BNB)");
			map.put("image", "binance-coin.png");
	
		}
		if(t_Name.equals("pre_eos")) {
			map.put("Stocks", "이오스 (EOS)");
			map.put("image", "eos.png");
			
		}
		if(t_Name.equals("pre_monero")) {
			map.put("Stocks",  "모네로 (XMR");
			map.put("image", "monero.png");
		}
	
		FilteringVO v =filteringService.selectfiltering(vo);
		
		if(v.getDate().equals("fail")) {

			model.addAttribute("msg", "조건에 맞는 매도시기가 없습니다!");
			model.addAttribute("url", "/mypage/filtering.do");
			
			return "mypage/message(alert)";
		}
		else {
			model.addAttribute("map", map);
			model.addAttribute("dto", filteringService.selectfiltering(vo));
			
			return "mypage/filtering_output";
		}
	}
	

}








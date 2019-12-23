package com.example.spring02.controller.prediction;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.spring02.model.prediction.dto.PredictionVO;
import com.example.spring02.service.prediction.PredictionService;

@Controller 
@RequestMapping("/prediction/*") 
public class predictionController {

	private static final Logger logger = LoggerFactory.getLogger(predictionController.class);
	
	@Inject
	PredictionService service;
	
	@RequestMapping("prediction/pre0.do")
	public String pre0(Model model) throws Exception{
		logger.info("prediction/pre0");
		List<PredictionVO> bitcoin = service.selectBitCoin();
		model.addAttribute("bitcoin", bitcoin);
		return "prediction/pre0";
	}
	
	@RequestMapping("prediction/pre1.do")
	public String pre1(Model model) throws Exception{
		logger.info("prediction/pre1");
		List<PredictionVO> ethereum = service.selectEthereum();
		model.addAttribute("ethereum", ethereum);
		return "prediction/pre1";
	}
	
	@RequestMapping("prediction/pre2.do")
	public String pre2(Model model) throws Exception{
		logger.info("prediction/pre2");
		List<PredictionVO> xrp = service.selectXRP();
		model.addAttribute("xrp", xrp);
		return "prediction/pre2";
	}
	
	@RequestMapping("prediction/pre3.do")
	public String pre3(Model model) throws Exception{
		logger.info("prediction/pre3");
		List<PredictionVO> bitcoincash = service.selectBitcoincash();
		model.addAttribute("bitcoincash", bitcoincash);
		return "prediction/pre3";
	}
	
	@RequestMapping("prediction/pre4.do")
	public String pre4(Model model) throws Exception{
		logger.info("prediction/pre4");
		List<PredictionVO> Litecoin = service.selectLitecoin();
		model.addAttribute("Litecoin", Litecoin);
		return "prediction/pre4";
	}
	
	@RequestMapping("prediction/pre5.do")
	public String pre5(Model model) throws Exception{
		logger.info("prediction/pre5");
		List<PredictionVO> tether = service.selectTether();
		model.addAttribute("tether", tether);
		return "prediction/pre5";
	}
	
}
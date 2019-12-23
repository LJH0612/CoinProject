package com.example.spring02.service.prediction;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.spring02.model.prediction.dao.PredictionDAO;
import com.example.spring02.model.prediction.dto.PredictionVO;


@Service 
public class PredictionServiceImpl implements PredictionService {
	
	@Inject
	private PredictionDAO dao;
	
	
	@Override
	public List<PredictionVO> selectBitCoin() throws Exception {
		return dao.selectBitCoin();
	}
	
	@Override
	public List<PredictionVO> selectEthereum() throws Exception {
		return dao.selectEthereum();
	}
	
	@Override
	public List<PredictionVO> selectXRP() throws Exception {
		return dao.selectXRP();
	}
	
	@Override
	public List<PredictionVO> selectBitcoincash() throws Exception {
		return dao.selectBitcoincash();
	}
	
	@Override
	public List<PredictionVO> selectLitecoin() throws Exception {
		return dao.selectLitecoin();
	}
	
	@Override
	public List<PredictionVO> selectTether() throws Exception {
		return dao.selectTether();
	}
}
package com.example.spring02.model.prediction.dao;

import java.util.List;

import com.example.spring02.model.prediction.dto.PredictionVO;

public interface PredictionDAO {
	
	public List<PredictionVO> selectBitCoin() throws Exception;
	
	public List<PredictionVO> selectEthereum() throws Exception;
	
	public List<PredictionVO> selectXRP() throws Exception;
	
	public List<PredictionVO> selectBitcoincash() throws Exception;
	
	public List<PredictionVO> selectLitecoin() throws Exception;
	
	public List<PredictionVO> selectTether() throws Exception;

}

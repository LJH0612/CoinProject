package com.example.spring02.model.prediction.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.spring02.model.prediction.dto.PredictionVO;

@Repository
public class PredictionDAOImpl implements PredictionDAO {
 
    @Inject
    private SqlSession sqlSession;
    
    private static final String Namespace = "prediction";
    
    @Override
    public List<PredictionVO> selectBitCoin() throws Exception {
 
        return sqlSession.selectList(Namespace+".selectBitCoin");
    }
    
    @Override
    public List<PredictionVO> selectEthereum() throws Exception {
 
        return sqlSession.selectList(Namespace+".selectEthereum");
    }
    
    @Override
    public List<PredictionVO> selectXRP() throws Exception {
 
        return sqlSession.selectList(Namespace+".selectXRP");
    }
    
    @Override
    public List<PredictionVO> selectBitcoincash() throws Exception {
 
        return sqlSession.selectList(Namespace+".selectBitcoincash");
    }
    
    @Override
    public List<PredictionVO> selectLitecoin() throws Exception {
 
        return sqlSession.selectList(Namespace+".selectLitecoin");
    }
    
    @Override
    public List<PredictionVO> selectTether() throws Exception {
 
        return sqlSession.selectList(Namespace+".selectTether");
    }
 
}

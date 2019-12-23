package com.example.spring02.model.filetering.dao;



import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.spring02.model.filtering.dto.FilteringVO;




@Repository
public class FilteringDAOImpl implements FilteringDAO {
 
    @Inject
    private SqlSession sqlSession;
    
    private static final String Namespace = "filtering";
    
    
    
    @Override
    public FilteringVO selectfiltering(FilteringVO vo) throws Exception {
    	
    	int yeild = vo.getYeild();
    	double yeild_high = 0;
    	double yeild_low = 0;
    	double buy = vo.getBuy();
    	if(yeild == 0) {
    		yeild_low = buy;
    		yeild_high = buy*0.2+buy;
    	}
    	if(yeild == 1) {
    		yeild_low = buy*0.3+buy;
    		yeild_high = buy*0.4+buy;
    	}
    	if(yeild == 2) {
    		yeild_low = buy*0.5+buy;
    		yeild_high = buy*0.6+buy;
    	}
    	if(yeild == 3) {
    		yeild_low = buy*0.7+buy;
    		yeild_high = buy*0.8+buy;
    	}
    	if(yeild == 4) {
    		yeild_low = buy*0.9+buy;
    		yeild_high = buy*100+buy;
    	}
    	vo.setYeild_high(yeild_high);
    	vo.setYeild_low(yeild_low);

    	
        return sqlSession.selectOne(Namespace+".selectfiltering", vo);
    } 
 
}

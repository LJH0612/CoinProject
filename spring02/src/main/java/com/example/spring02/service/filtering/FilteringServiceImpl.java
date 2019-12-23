package com.example.spring02.service.filtering;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.spring02.model.filetering.dao.FilteringDAO;
import com.example.spring02.model.filtering.dto.FilteringVO;




@Service 
public class FilteringServiceImpl implements FilteringService {
	
	@Inject
	private FilteringDAO dao;

	
	
	@Override
	public FilteringVO selectfiltering(FilteringVO vo) throws Exception  {
		
		return dao.selectfiltering(vo);
	};


	
}
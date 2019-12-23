package com.example.spring02.service.filtering;

import com.example.spring02.model.filtering.dto.FilteringVO;

public interface FilteringService {
		
	public FilteringVO selectfiltering(FilteringVO vo) throws Exception;
}

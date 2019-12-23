package com.example.spring02.model.inter.dao;

import java.util.List;

import com.example.spring02.model.inter.dto.InterVO;

public interface InterDAO {
	public void insertInter(InterVO vo);
	
	public List<InterVO> viewInter(InterVO vo);
	
	public void deleteInter(InterVO vo);
	
}

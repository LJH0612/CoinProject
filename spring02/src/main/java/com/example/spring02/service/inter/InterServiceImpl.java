package com.example.spring02.service.inter;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.spring02.model.inter.dao.InterDAO;
import com.example.spring02.model.inter.dto.InterVO;
import com.example.spring02.model.member.dto.MemberVO;

@Service
public class InterServiceImpl implements InterService {
	
	@Inject
	InterDAO interDao;
	
	@Override
	public void insertInter(InterVO vo) {
		interDao.insertInter(vo);
	}

	@Override
	public List<InterVO> viewInter(InterVO vo) {
		return interDao.viewInter(vo);
	}
	
	@Override
	public void deleteInter(InterVO vo) {
		interDao.deleteInter(vo);
	}
}

package com.example.spring02.model.inter.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.spring02.model.inter.dto.InterVO;
import com.example.spring02.model.member.dto.MemberVO;

@Repository
public class InterDAOImpl implements InterDAO{
	
	@Inject
	SqlSession sqlSession;

	@Override
	public void insertInter(InterVO vo) {
		sqlSession.insert("interesting.insertInter", vo);
	}
	
	@Override
	public List<InterVO> viewInter(InterVO vo) {
		return sqlSession.selectList("interesting.viewInter", vo.getUserId());
	}
	
	@Override
	public void deleteInter(InterVO vo) {
		sqlSession.delete("interesting.deleteInter", vo);
	}
	
}

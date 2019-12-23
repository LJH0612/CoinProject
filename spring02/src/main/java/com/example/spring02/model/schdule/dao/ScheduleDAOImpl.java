package com.example.spring02.model.schdule.dao;

import java.util.ArrayList;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.example.spring02.model.calendar.dto.DateData;
import com.example.spring02.model.schedule.dto.ScheduleDto;

public class ScheduleDAOImpl implements ScheduleDao {
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public int schedule_add(ScheduleDto scheduleDto) {
		return sqlSession.insert("ScheduleDao.schedule_add", scheduleDto);
	}
	
	@Override
	public int before_schedule_add_search(ScheduleDto scheduleDto) {
		return sqlSession.selectOne("ScheduleDao.schedule_add_search", scheduleDto);
	}
	
	@Override
	public ArrayList<ScheduleDto> schedule_list(DateData dateData) {
		return sqlSession.selectOne("ScheduleDao.schedule_list", dateData);
	}
}

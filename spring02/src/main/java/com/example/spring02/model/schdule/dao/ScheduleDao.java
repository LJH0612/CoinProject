package com.example.spring02.model.schdule.dao;


import java.util.ArrayList;

import com.example.spring02.model.calendar.dto.DateData;
import com.example.spring02.model.schedule.dto.ScheduleDto;

public interface ScheduleDao {
	public int schedule_add(ScheduleDto scheduleDto);
	public int before_schedule_add_search(ScheduleDto scheduleDto);
	public ArrayList<ScheduleDto> schedule_list(DateData dateData);

}

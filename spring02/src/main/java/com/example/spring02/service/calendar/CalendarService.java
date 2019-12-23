package com.example.spring02.service.calendar;

import javax.servlet.http.HttpSession;

import com.example.spring02.model.calendar.dto.DateData;

public interface CalendarService {
	public void insertMember(DateData vo);
	
	public boolean loginCheck(DateData vo, HttpSession session);
	
	public DateData viewMember(DateData vo);

	public void logout(HttpSession session);
	
	public void updateMember(DateData vo);
	
	public void deleteMember(DateData vo);
	
	public boolean checkPw(String userId, String userPw);
}

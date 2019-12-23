package com.example.spring02.controller.calendar;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.spring02.model.calendar.dto.DateData;
import com.example.spring02.model.member.dto.MemberVO;
import com.example.spring02.model.inter.dto.InterVO;
import com.example.spring02.model.schdule.dao.ScheduleDao;
import com.example.spring02.model.schedule.dto.ScheduleDto;
import com.example.spring02.service.inter.InterService;
import com.example.spring02.service.member.MemberService;

@Controller
@RequestMapping("/mypage/*")
public class calendarController {

	private static final Logger logger = LoggerFactory.getLogger(calendarController.class);

	@Inject
	MemberService memberService;
	
	@Inject
	InterService interService;
	
	@Autowired
	SqlSession sqlSession;

	@RequestMapping("mypage/interview.do")
	public ModelAndView interView(InterVO vo, ModelAndView mav){
		String message2 = "false";
		
		mav.setViewName("mypage/calendar");
		mav.addObject("dto2", interService.viewInter(vo));
		
		return mav;
	}
	
	@RequestMapping("mypage/btnview.do")
	public String memberView(@ModelAttribute MemberVO vo, RedirectAttributes rttr){
		String message2 = "true";
		
		rttr.addFlashAttribute("dto", memberService.viewMember(vo));
		rttr.addFlashAttribute("message2", message2);
		return "redirect:calendar.do";
	}
	
	@RequestMapping("mypage/update.do")
	public String memberUpdate(@ModelAttribute MemberVO vo, @RequestParam String userId, @RequestParam String userPw,
			Model model, HttpSession session, RedirectAttributes rttr) {
		String message = "";
		String message2 = "true";
		boolean result = memberService.checkPw(vo.getUserId(), vo.getUserPw());
		if (result) {
			memberService.updateMember(vo);
			rttr.addFlashAttribute("dto", memberService.viewMember(vo));
			rttr.addFlashAttribute("message2", message2);
			return "redirect:calendar.do";
		} else {
			message = "비밀번호가 일치하지 않습니다.";
			rttr.addFlashAttribute("dto", memberService.viewMember(vo));
			rttr.addFlashAttribute("message1", message);
			rttr.addFlashAttribute("message2", message2);
			return "redirect:calendar.do";
		}
	}
	 

	@RequestMapping("mypage/delete.do")
	public String memberDelete(@ModelAttribute MemberVO vo, @RequestParam String userId, @RequestParam String userPw,
			Model model, HttpSession session, RedirectAttributes rttr) {
		String message = "";
		String message2 = "true";
		boolean result = memberService.checkPw(userId, userPw);
		if (result) {
			session.invalidate();
			memberService.deleteMember(vo);
			return "redirect:/";
		} else {
			message = "비밀번호가 일치하지 않습니다.";
			rttr.addFlashAttribute("dto", memberService.viewMember(vo));
			rttr.addFlashAttribute("message1", message);
			rttr.addFlashAttribute("message2", message2);
			return "redirect:calendar.do";
		}
	}

	@RequestMapping(value = "mypage/schedule_add.do", method = RequestMethod.GET)
	public String schedule_add(HttpServletRequest request, ScheduleDto scheduleDto, RedirectAttributes rttr) {
		ScheduleDao scheduleDao = sqlSession.getMapper(ScheduleDao.class);
		int count = scheduleDao.before_schedule_add_search(scheduleDto);
		String message = "";
		String url = "redirect:calendar.do";

		if (count >= 4) {
			message = "스케쥴은 최대 4개만 등록 가능합니다.";
		} else {
			scheduleDao.schedule_add(scheduleDto);
			message = "스케쥴이 등록되었습니다";
		}

		rttr.addFlashAttribute("message", message);
		return url;
	}

	@RequestMapping("mypage/calendar.do")
	public ModelAndView calendar(Model model, @ModelAttribute InterVO vo2, HttpServletRequest request, 
			DateData dateData, @ModelAttribute MemberVO vo ,RedirectAttributes rttr,ModelAndView mav) {
		String url = "redirect:calendar.do";
		Calendar cal = Calendar.getInstance();
		DateData calendarData;
		// 검색 날짜
		if (dateData.getDate().equals("") && dateData.getMonth().equals("")) {
			dateData = new DateData(String.valueOf(cal.get(Calendar.YEAR)), String.valueOf(cal.get(Calendar.MONTH)),
					String.valueOf(cal.get(Calendar.DATE)), null, null);
		}

		Map<String, Integer> today_info = dateData.today_info(dateData);
		List<DateData> dateList = new ArrayList<DateData>();

		// 검색 날짜 end
		ScheduleDao scheduleDao = sqlSession.getMapper(ScheduleDao.class);
		ArrayList<ScheduleDto> Schedule_list = scheduleDao.schedule_list(dateData);

		// 달력데이터에 넣기 위한 배열 추가
		ScheduleDto[][] schedule_data_arr = new ScheduleDto[32][4];

		if (Schedule_list.isEmpty() != true) {
			int j = 0;
			for (int i = 0; i < Schedule_list.size(); i++) {
				int date = Integer.parseInt(String.valueOf(Schedule_list.get(i).getSchedule_date()).substring(
						String.valueOf(Schedule_list.get(i).getSchedule_date()).length() - 2,
						String.valueOf(Schedule_list.get(i).getSchedule_date()).length()));
				if (i > 0) {
					int date_before = Integer.parseInt(String.valueOf(Schedule_list.get(i - 1).getSchedule_date())
							.substring(String.valueOf(Schedule_list.get(i - 1).getSchedule_date()).length() - 2,
									String.valueOf(Schedule_list.get(i - 1).getSchedule_date()).length()));
					if (date_before == date) {
						j = j + 1;
						schedule_data_arr[date][j] = Schedule_list.get(i);
					} else {
						j = 0;
						schedule_data_arr[date][j] = Schedule_list.get(i);
					}
				} else {
					schedule_data_arr[date][j] = Schedule_list.get(i);
				}
			}

			// 실질적인 달력 데이터 리스트에 데이터 삽입 시작.
			// 일단 시작 인덱스까지 아무것도 없는 데이터 삽입
			for (int i = 1; i < today_info.get("start"); i++) {
				calendarData = new DateData(null, null, null, null, null);
				dateList.add(calendarData);
			}

			// 날짜 삽입
			for (int i = today_info.get("startDay"); i <= today_info.get("endDay"); i++) {
				ScheduleDto[] schedule_data_arr3 = new ScheduleDto[4];
				schedule_data_arr3 = schedule_data_arr[i];

				if (i == today_info.get("today")) {
					calendarData = new DateData(String.valueOf(dateData.getYear()), String.valueOf(dateData.getMonth()),
							String.valueOf(i), "today", schedule_data_arr3);
				} else {
					calendarData = new DateData(String.valueOf(dateData.getYear()), String.valueOf(dateData.getMonth()),
							String.valueOf(i), "normal_date", schedule_data_arr3);
				}
				dateList.add(calendarData);

			}

			// 달력 빈 곳 빈 데이터로 삽입
			int index = 7 - dateList.size() % 7;

			if (dateList.size() % 7 != 0) {

				for (int i = 0; i < index; i++) {
					calendarData = new DateData(null, null, null, null, null);
					dateList.add(calendarData);
				}
			}

			// 배열에 담음
			model.addAttribute("dateList", dateList); // 날짜 데이터 배열
			model.addAttribute("today_info", today_info);
			mav.setViewName("mypage/calendar");
			mav.addObject("dto2", interService.viewInter(vo2));
			return mav;
		}

		// 실질적인 달력 데이터 리스트에 데이터 삽입 시작.
		// 일단 시작 인덱스까지 아무것도 없는 데이터 삽입
		for (int i = 1; i < today_info.get("start"); i++) {
			calendarData = new DateData(null, null, null, null, null);
			dateList.add(calendarData);
		}

		// 날짜 삽입
		for (int i = today_info.get("startDay"); i <= today_info.get("endDay"); i++) {
			ScheduleDto[] schedule_data_arr3 = new ScheduleDto[4];
			schedule_data_arr3 = schedule_data_arr[i];

			if (i == today_info.get("today")) {
				calendarData = new DateData(String.valueOf(dateData.getYear()), String.valueOf(dateData.getMonth()),
						String.valueOf(i), "today", schedule_data_arr3);
			} else {
				calendarData = new DateData(String.valueOf(dateData.getYear()), String.valueOf(dateData.getMonth()),
						String.valueOf(i), "normal_date", schedule_data_arr3);
			}
			dateList.add(calendarData);

		}

		// 달력 빈 곳 빈 데이터로 삽입
		int index = 7 - dateList.size() % 7;

		if (dateList.size() % 7 != 0) {

			for (int i = 0; i < index; i++) {
				calendarData = new DateData(null, null, null, null, null);
				dateList.add(calendarData);
			}
		}

		// 배열에 담음
		model.addAttribute("dateList", dateList); // 날짜 데이터 배열
		model.addAttribute("today_info", today_info);
		mav.setViewName("mypage/calendar");
		mav.addObject("dto2", interService.viewInter(vo2));
		

		return mav;
	}

}

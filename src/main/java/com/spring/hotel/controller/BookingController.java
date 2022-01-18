package com.spring.hotel.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.hotel.service.BookingService;
import com.spring.hotel.vo.BookingVO;
import com.spring.hotel.vo.QuestionListVO;

@Controller
@RequestMapping(value = "/booking")
public class BookingController {

	private static final Logger logger = LoggerFactory.getLogger(BookingController.class);

	@Autowired
	private BookingService service;

	@RequestMapping(value = "/booking", method = RequestMethod.GET)
	public String booking() {
		logger.info("booking(GET)메소드 실행");

		return "booking/booking";
	}

	@RequestMapping(value = "/booking", method = RequestMethod.POST)
	public String booking(String roomType, String bookingStart, String bookingEnd, int adult, int child,
			HttpSession session) {
		logger.info("booking(POST)메소드 실행");

		
		  logger.info("bookingStart : {}", bookingStart);
		  logger.info("bookingEnd : {}", bookingEnd);
		 /* 
		 * try { String strDate = bookingStart; String str1 = strDate.substring(6,10);
		 * String str2 = strDate.substring(0,2); String str3 = strDate.substring(3,5);
		 * 
		 * logger.info("str : {} ", str1); logger.info("str : {}", str2);
		 * logger.info("str : {}", str3);
		 * 
		 * strDate = str1 + str2 + str3; logger.info("최종 : {} ", strDate);
		 * 
		 * 
		 * 
		 * SimpleDateFormat dtFormat = new SimpleDateFormat("yyyyMMdd");
		 * SimpleDateFormat newDtFormat = new SimpleDateFormat("yyyy/MM/dd"); // String
		 * 타입을 Date 타입으로 변환 Date formatDate = dtFormat.parse(strDate); bookingStart =
		 * newDtFormat.format(formatDate); System.out.println("포맷 후 : " + bookingStart);
		 * } catch (ParseException e) { e.printStackTrace(); }
		 * 
		 * try { String strDate = bookingEnd; String str4 = strDate.substring(6,10);
		 * String str5 = strDate.substring(0,2); String str6 = strDate.substring(3,5);
		 * 
		 * logger.info("str : {} ", str4); logger.info("str : {}", str5);
		 * logger.info("str : {}", str6);
		 * 
		 * strDate = str4 + str5 + str6; logger.info("최종 : {} ", strDate);
		 * 
		 * SimpleDateFormat dtFormat = new SimpleDateFormat("yyyyMMdd");
		 * SimpleDateFormat newDtFormat = new SimpleDateFormat("yyyy/MM/dd"); // String
		 * 타입을 Date 타입으로 변환 Date formatDate = dtFormat.parse(strDate); bookingEnd =
		 * newDtFormat.format(formatDate); System.out.println("포맷 후 : " + bookingEnd); }
		 * catch (ParseException e) { e.printStackTrace(); }
		 * 
		 * 
		 * logger.info("bookingStart2 : {}", bookingStart);
		 * logger.info("bookingEnd2 : {}", bookingEnd);
		 */
		
		String memberId = (String) session.getAttribute("memberId");

		String path = service.booking(roomType, bookingStart, bookingEnd, adult, child, memberId);

		return path;
	}
	
	// 게시글 가져오기
	@RequestMapping(value = "/bookingList", method = RequestMethod.GET)
	public String questionList(Model model, HttpSession session) {
		logger.info("questionList 메소드 실행(GET)");
		
		String memberId = (String) session.getAttribute("memberId");
		
		ArrayList<BookingVO> bookingList = service.selectMyList(memberId);
		logger.info("memberId : {}", memberId);
		logger.info("bookingList:{}", bookingList);
		model.addAttribute("bookingList", bookingList);
		return "booking/bookingList";
	}
}

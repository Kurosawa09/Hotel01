package com.spring.hotel.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.hotel.service.HotelMemberService;
import com.spring.hotel.vo.HotelMemberVO;

@Controller
@RequestMapping(value="/member")
public class HotelMemberController {

	private static final Logger logger = LoggerFactory.getLogger(HotelMemberController.class);
	
	@Autowired
	private HotelMemberService service;
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() {
		logger.info("join(GET)메소드 실행");
		
		return "member/join";
	}

	// 회원가입
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(HotelMemberVO Member) {
		logger.info("join(POST)메소드 실행");
		
		String path = service.join(Member);

		logger.info("현재 등록된 사용자 정보: {}", Member);
		
		return path;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login()
	{
		logger.info("login 메소드 실행(GET)");
		
		return "member/login";
	}
	
	// 로그인
	@RequestMapping(value = "/login", method  = RequestMethod.POST)
	public String login(HttpSession session, String memberId, String memberPw) {
		logger.info("login 메소드 실행(POST)");
		
		logger.info("id: {}" , memberId);
		logger.info("password: {}", memberPw);
		
		
		String loginNm = service.selectMember(memberId, memberPw);
		logger.info("memberId: {}", memberId);
		logger.info("loginNm: {}", loginNm);
		
		
		String returnUrl = null;
		if(loginNm == null) {
			logger.info("로그인 실패");
			returnUrl = "redirect:/";
		}else {
			logger.info("로그인 성공");
			session.setAttribute("memberId", memberId);
			session.setAttribute("memberNm", loginNm);
			returnUrl = "redirect:/";
		}
		return returnUrl;
	}

	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		logger.info("logout 메소드 실행(GET)");
		session.invalidate();
		return "redirect:/";
	}
}



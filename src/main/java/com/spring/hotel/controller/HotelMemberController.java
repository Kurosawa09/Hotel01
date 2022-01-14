package com.spring.hotel.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	// 22-01-12 17:02 노채린 
	// 회원정보 페이지 불러오기
	@RequestMapping(value = "/memberInfo", method = RequestMethod.GET)
	public String memberInfo(){
		logger.info("memberInfo 메소드 실행(GET)");
		
		return "member/memberInfo";
	}

	// 22-01-12 18:12 노채린
	// 회원정보 관련 메소드
	@RequestMapping(value = "/memberInfo", method = RequestMethod.POST)
	public String memberInfo(String memberNm, String preMemberPw, String memberPw,
								String memberEmail, String memberTel, HttpSession session, Model model) {
		logger.info("memberInfo 메소드 실행(POST)");
		
	    String memberId = (String) session.getAttribute("memberId");
	    
	    // 입력받은 현재 비밀번호가 기존 비밀번호와 일치하는지 확인 (이하 비밀번호 검증이라 명명)
	    memberNm = service.confirmPw(memberId, preMemberPw);
	    // 회원정보가 일치하여 가져온 회원 이름
	    // logger.info("memberNm : {}", memberNm);

	    // 회원정보가 일치할 시
	    if (memberNm != null) {
	    	logger.info("회원정보 일치");
	    	
	    	// 회원 정보 수정 시도
	    	int result = service.updateMember(memberId, memberPw, memberNm, memberEmail, memberTel);
	 	    
	    	// 정보 수정 성공
	 	    if (result != 0) {
	 	    	logger.info("회원정보 수정 성공");
	 	    
	 	    // 정보 수정 실패
	 	    } else {
	 	    	logger.info("회원정보 수정 실패");
	 	         
	 	    }
	 	// 회원정보 불일치 시
	    } else {
	    	logger.info("회원정보 불일치");
	    }
	    
		return "member/memberInfo";
	}	
	// 22-01-13 11:31 노채린
	// 회원탈퇴 관련 메소드
	@RequestMapping(value = "/memberDelete", method = RequestMethod.GET)
	public String memberDelete(String memberPw, String memberId, HttpSession session) {
		logger.info("회원탈퇴 메소드 실행(GET)");
		
		memberId = (String) session.getAttribute("memberId");
		
		// 회원 탈퇴 시도
		int result = service.deleteMember(memberId, memberPw);
		
		// 정보 수정 성공
 	    if (result != 0) {
 	    	logger.info("회원탈퇴 성공");
 	    
 	    // 정보 수정 실패
 	    } else {
 	    	logger.info("회원탈퇴 실패");
 	         
 	    }
		return "member/memberDelete";
	}
	
}



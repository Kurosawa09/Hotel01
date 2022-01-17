package com.spring.hotel.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

// 22-01-13 18:20 노채린
public class LoginInterceptor extends HandlerInterceptorAdapter{
private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);
	
	// 콘트롤러의 메서드 실행 전에 처리
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
		throws Exception {
		
		// 세션의 로그인 정보 읽기
		HttpSession session = request.getSession();
		String loginId = (String) session.getAttribute("loginId");
		
		// 로그인되지 않은 경우 로그인 페이지로 이동
		if (loginId == null) {
			logger.info("인터셉트: 로그인 되지 않음.");
			// request.getContextPath()로 루트 경로를 구하여 절대 경로로 처리
			response.sendRedirect(request.getContextPath() + "/login");
			
			return false;
		}
		
		// 로그인 된 경우 요청한 경로로 진행
		return super.preHandle(request, response, handler);
	}
}

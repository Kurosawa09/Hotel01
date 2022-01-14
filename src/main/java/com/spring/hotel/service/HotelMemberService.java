package com.spring.hotel.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.spring.hotel.repository.HotelMemberRepository;
import com.spring.hotel.vo.HotelMemberVO;


@Service
public class HotelMemberService {

	@Autowired
	private HotelMemberRepository repository;
	
	@Autowired
	private HttpSession session;

	
	// 회원가입
	public String join(HotelMemberVO member) {
		int result = repository.join(member);
			
			String path;
			if(result == 0) {
				System.out.println("회원가입 실패");
				path = "redirect:/member/join";
			}else {
				System.out.println("회원가입 성공");
				path = "redirect:/";
			}
			
			return path;
		}

	
	// 로그인
	public String selectMember(String memberId, String memberPw) {
		HotelMemberVO loginMember = new HotelMemberVO();
		loginMember.setMemberId(memberId);
		loginMember.setMemberPw(memberPw);

		return repository.selectMember(loginMember);
	}
}

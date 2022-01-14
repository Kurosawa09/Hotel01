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

	// 비밀번호 검증 메소드
	public String confirmPw(String memberId, String preMemberPw) {
		String memberPw = preMemberPw;
		HotelMemberVO confirmMember = new HotelMemberVO();
		confirmMember.setMemberId(memberId);
		confirmMember.setMemberPw(memberPw);
		
		return repository.confirmPw(confirmMember);
	}


	public int updateMember(String memberId, String memberPw, String memberNm, String memberEmail,
			String memberTel) {
		HotelMemberVO updateMember = new HotelMemberVO();
		updateMember.setMemberId(memberId);
		updateMember.setMemberPw(memberPw);
		updateMember.setMemberNm(memberNm);
		updateMember.setMemberEmail(memberEmail);
		updateMember.setMemberTel(memberTel);
		
		return repository.updateMember(updateMember);
	}


	public int deleteMember(String memberId, String memberPw) {
		HotelMemberVO deleteMember = new HotelMemberVO();
		deleteMember.setMemberId(memberId);
		deleteMember.setMemberPw(memberPw);
		
		return repository.deleteMember(deleteMember);
	}

	public String idchk(String idChk) 
	{
		return repository.idChk(idChk);
	}

}

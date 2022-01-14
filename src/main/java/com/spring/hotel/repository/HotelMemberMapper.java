package com.spring.hotel.repository;

import com.spring.hotel.vo.HotelMemberVO;

public interface HotelMemberMapper {

	int join(HotelMemberVO Member);						// 회원가입

	String selectMember(HotelMemberVO loginMember);		// 로그인

	String confirmPw(HotelMemberVO confirmMember);		// 비밀번호 검증 메소드

	int updateMember(HotelMemberVO updateMember);		// 회원정보 수정 메소드

	int deleteMember(HotelMemberVO deleteMember);		// 회원탈퇴 메소드
	
	String idChk(String idChk);

}

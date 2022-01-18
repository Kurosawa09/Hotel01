package com.spring.hotel.repository;

import com.spring.hotel.vo.BookingVO;
import com.spring.hotel.vo.HotelMemberVO;

public interface HotelMemberMapper {

	int join(HotelMemberVO Member);						// 회원가입

	String selectMember(HotelMemberVO loginMember);		// 로그인

	String idChk(String idChk);

}

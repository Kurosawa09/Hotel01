package com.spring.hotel.vo;

import lombok.Data;

@Data
public class HotelMemberVO {

	private String memberId; // 회원 아이디
	private String memberPw; // 회원 비밀번호
	private String memberNm; // 회원 이름
	private String memberTel; // 회원 전화번호
	private String memberEmail; // 회원 이메일
	private int memberCode; // 관리자 식별 코드(회원=0)
}

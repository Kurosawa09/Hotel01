package com.spring.hotel.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hotel.vo.HotelMemberVO;

@Repository
public class HotelMemberRepository {

	@Autowired
	private SqlSession session;

	public int join(HotelMemberVO member) {
		int result = 0;
		HotelMemberMapper mapper = null;
		
		try {
			mapper = session.getMapper(HotelMemberMapper.class);
			result = mapper.join(member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	public String selectMember(HotelMemberVO loginMember) {
		String result = null;
		HotelMemberMapper mapper = null;
		
		try {
			mapper= session.getMapper(HotelMemberMapper.class);
			result = mapper.selectMember(loginMember);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public String confirmPw(HotelMemberVO confirmMember) {
		String result = null;
		HotelMemberMapper mapper = null;
		
		try {
			mapper= session.getMapper(HotelMemberMapper.class);
			result = mapper.confirmPw(confirmMember);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int updateMember(HotelMemberVO updateMember) {
		int result = 0;
		HotelMemberMapper mapper = null;
		
		try {
			mapper= session.getMapper(HotelMemberMapper.class);
			result = mapper.updateMember(updateMember);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int deleteMember(HotelMemberVO deleteMember) {
		int result = 0;
		HotelMemberMapper mapper = null;
		
		try {
			mapper= session.getMapper(HotelMemberMapper.class);
			result = mapper.deleteMember(deleteMember);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public String idChk(String idChk) 
	{
		String result = null;
		HotelMemberMapper mapper = null;
		
		try
		{
			mapper = session.getMapper(HotelMemberMapper.class);
			result = mapper.idChk(idChk);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return result;
	}

}

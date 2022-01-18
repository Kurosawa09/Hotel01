package com.spring.hotel.repository;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hotel.vo.BookingVO;
import com.spring.hotel.vo.QuestionListVO;


@Repository
public class BookingRepository {

	@Autowired
	private SqlSession session;

	public int booking(BookingVO booking) {
		int result = 0;
		BookingMapper mapper = null;
		
		try {
			mapper = session.getMapper(BookingMapper.class);
			result = mapper.booking(booking);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	public ArrayList<BookingVO> selectMyList(String memberId) {
		{
			ArrayList<BookingVO> result = null;      
		    BookingMapper mapper = null;
		      try 
		      {
		         mapper = session.getMapper(BookingMapper.class);
		         result = mapper.selectMyList(memberId);
		      } catch (Exception e) 
		      {
		         e.printStackTrace();
		      }      
		      return result;
		}
	}

}

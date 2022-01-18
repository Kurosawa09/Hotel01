package com.spring.hotel.repository;

import java.util.ArrayList;

import com.spring.hotel.vo.BookingVO;

public interface BookingMapper {

	int booking(BookingVO booking);

	ArrayList<BookingVO> selectMyList(String memberId);

}

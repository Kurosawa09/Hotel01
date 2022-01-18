package com.spring.hotel.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.spring.hotel.repository.BookingRepository;
import com.spring.hotel.vo.BookingVO;


@Service
public class BookingService {

	@Autowired
	private BookingRepository repository;
	
	@Autowired
	private HttpSession session;

	public String booking(BookingVO booking, String memberId) {
		booking.setMemberId(memberId);
		int result = repository.booking(booking);
		
		String path;
		if(result == 0) {
			System.out.println("예약 실패");
			path = "redirect:/booking/booking";
		}else {
			System.out.println("예약 성공");
			path = "redirect:/";
		}
		
		return path;
	}

	public String booking(String roomType, String bookingStart, String bookingEnd, int adult, int child, String memberId) {
		BookingVO booking = new BookingVO();
		booking.setRoomType(roomType);
		booking.setBookingStart(bookingStart);
		booking.setBookingEnd(bookingEnd);
		booking.setAdult(adult);
		booking.setChild(child);
		booking.setMemberId(memberId);
	
		int result = repository.booking(booking);
		
		String path;
		if(result == 0) {
			System.out.println("예약 실패");
			path = "redirect:/booking/booking";
		}else {
			System.out.println("예약 성공");
			path = "redirect:/";
		}
		
		return path;
	}

	public ArrayList<BookingVO> selectMyList(String memberId) {
		return repository.selectMyList(memberId);
	}

}

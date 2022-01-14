package com.spring.hotel.repository;

import java.util.ArrayList;

import com.spring.hotel.vo.QuestionListVO;

public interface QuestionListMapper 
{
	
	// 전체 글 보기 바라보기 뭐든 걍 보기 
	ArrayList<QuestionListVO> selectAllList();

	// 문의 게시판 작성
	int insertList(QuestionListVO newQuestion);

}

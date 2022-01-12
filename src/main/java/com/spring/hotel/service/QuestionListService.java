package com.spring.hotel.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.hotel.repository.QuestionListRepository;
import com.spring.hotel.vo.QuestionListVO;

@Service
public class QuestionListService 
{
	@Autowired
	private QuestionListRepository repository;

	//전체 글 목록 가져오기 보기 뭐든
	public ArrayList<QuestionListVO> selectAllList() 
	{
		return repository.selectAllList();
	}

	
	public boolean insertList(String memberNm, String listTitle, String listContent) 
	{
		QuestionListVO newQuestion = new QuestionListVO();
	      
		newQuestion.setMemberNm(memberNm);
	    newQuestion.setListTitle(listTitle);
	    newQuestion.setListContent(listContent);
	      
	    return repository.insertList(newQuestion) > 0;
	   
	}

}

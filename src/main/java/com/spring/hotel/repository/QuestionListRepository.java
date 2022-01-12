package com.spring.hotel.repository;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hotel.vo.QuestionListVO;

@Repository
public class QuestionListRepository 
{
	@Autowired
	private SqlSession session;
	
	public ArrayList<QuestionListVO> selectAllList() 
	{
		ArrayList<QuestionListVO> result = null;      
	      QuestionListMapper mapper = null;
	      try 
	      {
	         mapper = session.getMapper(QuestionListMapper.class);
	         result = mapper.selectAllList();
	      } catch (Exception e) 
	      {
	         e.printStackTrace();
	      }      
	      return result;
	   
	}

	public int insertList(QuestionListVO newQuestion) 
	{
		  int result = 0;
	      QuestionListMapper mapper = null;
	      
	      try 
	      {
	         mapper = session.getMapper(QuestionListMapper.class);
	         result = mapper.insertList(newQuestion);
	      } catch (Exception e) 
	      {
	         e.printStackTrace();
	      }      
	      return result;
	}

}

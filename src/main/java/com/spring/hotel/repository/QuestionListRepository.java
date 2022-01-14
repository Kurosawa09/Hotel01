package com.spring.hotel.repository;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hotel.vo.QuestionListVO;
import com.spring.hotel.vo.ReplyVO;




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

	public QuestionListVO selectQuestion(int listNum) {
		QuestionListVO result = null;		
		QuestionListMapper mapper = null;
		try {
			mapper = session.getMapper(QuestionListMapper.class);
			result = mapper.selectQuestion(listNum);
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return result;
	}

	public int deleteQuestion(int listNum) {
		int result = 0;
		QuestionListMapper mapper = null;
		try {
			mapper = session.getMapper(QuestionListMapper.class);
			result = mapper.deleteQuestion(listNum);
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return result;
	}

	public int updateList(QuestionListVO questionList) {
		int result = 0;
		QuestionListMapper mapper = null;
		
		try {
			mapper = session.getMapper(QuestionListMapper.class);
			
			result = mapper.updateList(questionList);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	public ArrayList<ReplyVO> readAllReply(int listNum) {
		ArrayList<ReplyVO> result = null;
		QuestionListMapper mapper = null;
		try {
			mapper = session.getMapper(QuestionListMapper.class);
			result = mapper.readAllReply(listNum);
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return result;
	}


	public int replyWrite(ReplyVO reply) {
		int result = 0;
		QuestionListMapper mapper = null;
		try {
			mapper = session.getMapper(QuestionListMapper.class);
			result = mapper.replyWrite(reply);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}


	public int deleteReply(int replyNum) {
		int result = 0;
		QuestionListMapper mapper = null;
		try {
			mapper = session.getMapper(QuestionListMapper.class);
			result = mapper.deleteReply(replyNum);
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return result;
	}


	public int deleteQuestionReply(int listNum) {
		int result = 0;
		QuestionListMapper mapper = null;
		try {
			mapper = session.getMapper(QuestionListMapper.class);
			result = mapper.deleteQuestionReply(listNum);
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return result;
	}


	public int updateReply(ReplyVO updateReply) {
		int result = 0;
		QuestionListMapper mapper = null;
		try {
			mapper = session.getMapper(QuestionListMapper.class);
			result = mapper.updateReply(updateReply);
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return result;
	}

}

package com.spring.hotel.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.hotel.repository.QuestionListRepository;
import com.spring.hotel.vo.QuestionListVO;
import com.spring.hotel.vo.ReplyVO;



@Service
public class QuestionListService 
{
	@Autowired
	private QuestionListRepository repository;

	// 게시글 가져오기
	public ArrayList<QuestionListVO> selectAllList() 
	{
		return repository.selectAllList();
	}

	// 글 작성
	public boolean insertList(String memberId,String memberNm, String listTitle, String listContent) 
	{
		QuestionListVO newQuestion = new QuestionListVO();
		newQuestion.setMemberId(memberId);
		newQuestion.setMemberNm(memberNm);
	    newQuestion.setListTitle(listTitle);
	    newQuestion.setListContent(listContent);
	      
	    return repository.insertList(newQuestion) > 0;
	}

	// 글 읽기
	public QuestionListVO selectQuestion(int listNum) {
		return repository.selectQuestion(listNum);
	}

	// 글 삭제
	public boolean deleteQuestion(int listNum) {
		return repository.deleteQuestion(listNum) > 0; 
	}

	// 글 수정
	public boolean updateList(QuestionListVO questionList, String memberNm) {
		questionList.setMemberNm(memberNm);
		return repository.updateList(questionList) > 0;
	}

	// 댓글 가져오기
	public ArrayList<ReplyVO> readAllReply(int listNum) {
		return repository.readAllReply(listNum);
	}

	// 댓글 작성
	public boolean replyWrite(String replyContent, int listNum, String memberId, String memberNm) {
		ReplyVO reply = new ReplyVO();
		reply.setReplyContent(replyContent);
		reply.setListNum(listNum);
		reply.setMemberId(memberId);
		reply.setMemberNm(memberNm);
		return repository.replyWrite(reply) > 0;
	}

	// 댓글 삭제
	public boolean deleteReply(int replyNum) {
		return repository.deleteReply(replyNum) > 0;
	}


	// 글을 삭제하기 위한 글에 있는 댓글 삭제
	public boolean deleteQuestionReply(int listNum) {
		return repository.deleteQuestionReply(listNum) > 0;
	}

	// 댓글 수정
	public boolean updateReply(ReplyVO updateReply) {
		return repository.updateReply(updateReply) > 0; 
	}
}

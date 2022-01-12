package com.spring.hotel.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.hotel.service.QuestionListService;
import com.spring.hotel.vo.QuestionListVO;


@Controller
@RequestMapping(value="/question")
public class QuestionListController 
{
	private static final Logger logger = LoggerFactory.getLogger(QuestionListController.class);
	
	@Autowired
	private QuestionListService service;
	
	// 게시글 불러오기
	@RequestMapping(value = "/questionList", method = RequestMethod.GET)
	public String questionList(Model model,HttpSession session) 
	{
	      logger.info("questionList 메소드 실행(GET)");
	      
	      ArrayList<QuestionListVO> questionList = service.selectAllList();
	      logger.info("questionList:{}",questionList);
	      
	      
	      model.addAttribute("questionList",questionList);
	      
	      return "question/questionList";
	}
	
	
	// 고객의 소리 글쓰기 이동
	@RequestMapping(value = "/questionListWrite", method = RequestMethod.GET)
	   public String questionListWrite(Model model,HttpSession session) {
	      logger.info("questionListWrite 메소드 실행(GET)");
	      
	      String memberNm = (String) session.getAttribute("memberNm");
	      model.addAttribute("memberNm",memberNm);
	            
	      return "question/questionListWrite";
	   }
	
	
	// 고객의 소리 작성하기
	@RequestMapping(value = "/questionListWrite", method = RequestMethod.POST)
	   public String questionListWrite(HttpSession session,String listTitle,String listContent) {
	      logger.info("questionListWrite 메소드 실행(POST)");
	      String memberNm = (String)session.getAttribute("memberNm");
	      logger.info("memberNm:{}",memberNm);
	      logger.info("listTitle:{}",listTitle);
	      logger.info("listContent:{}",listContent);
	      
	      
	      //   글 쓰기
	      boolean result = service.insertList(memberNm,listTitle,listContent);
	      
	      String returnUrl = null;
	      if(result) {
	         logger.info("게시글 작성 성공");
	         returnUrl="redirect:/question/questionList";
	      }else {
	         logger.info("게시글 작성 실패");
	         returnUrl="question/questionListWrite";
	      }
	      return returnUrl;
	   }
	
}



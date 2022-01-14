<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
	<link rel="stylesheet" type="text/css" href="/resources/css/join.css">
	<script type = "text/javascript" src="/resources/js/jquery-3.6.0.min.js">
	function checkForm()
	{
		var memberId = document.getElementById("memberID").value; 
		var memberPw = document.getElementById("memberPW").value;
		var memberNm = document.getElementById("memberNm").value;
		var memberTel = document.getElementById("memberTel").value; 
		var memberEmail = document.getElementById("memberEmail").value; 
		var memberCode = document.getElementById("memberCode").value; 
		
		
		if ( memberId.length == 0 )
		{
			alert("ID를 입력해주세요.");
			return false;
		} // if
		
		if ( memberPw.length == 0 )
		{
			alert("PW를 입력해주세요.");
			return false;
		} // if
		
		if ( memberNm.length == 0 )
		{
			alert("Nm를 입력해주세요.");
			return false;
		} // if
		if ( memberTel.length == 0 )
		{
			alert("tel를 입력해주세요.");
			return false;
		} // if
		if ( memberEmail.length == 0 )
		{
			alert("Email를 입력해주세요.");
			return false;
		} // if
		
		if ( memberCode.length == 0 )
		{
			alert("Code를 입력해주세요.");
			return false;
		} // if
		
		
			
		return true;
	} // checkForm()
	
	</script>
</head>

  <body width="100%" height="100%">
    <form action="/member/join" method="post" class="loginForm">
      <h2>Sign Up</h2>
      <div class="idForm">
        <input type="text" class="id" placeholder="ID" id = "memberId">
      </div>
      <div class="passForm">
        <input type="password" class="pw" placeholder="PW" id="memberPw">
      </div>
      <div class="passForm">
        <input type="password" class="pwChk" placeholder="PWChk" >
      </div>
      <div class="passForm">
        <input type="text" class="name" placeholder="Name" id="memberNm">
      </div>
      <div class="passForm">
        <input type="text" class="tel" placeholder="tel" id="memberTel">
      </div>
      <div class="passForm">
        <input type="text" class="email" placeholder="email" id="memberEmail">
      </div>
      
      <button type="submit" class="btn" button ="button()">
        Sign Up
      </button>
      <div class="bottomText">
        Find ID or password <a href="#">보류</a>
      </div>
    </form>
  </body>
</html>
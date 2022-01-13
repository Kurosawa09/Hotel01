<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
	<link rel="stylesheet" type="text/css" href="/resources/css/join.css">
	<script type = "text/javascript" src="/resources/js/jquery-3.6.0.min.js"></script>
	<script type = "text/javascript">
	
	function checkForm()
	{
		var memberId = document.getElementById("memberId").value; 
		var memberPw = document.getElementById("memberPw").value;
 	    var memberChk = document.getElementById("memberChk").value;		
		var memberNm = document.getElementById("memberNm").value;
		var memberTel = document.getElementById("memberTel").value; 
		var memberEmail = document.getElementById("memberEmail").value;  
		
		function email_check( email ) {
		    var regex=/([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		    return (memberEmail != '' && memberEmail != 'undefined' && regex.test(memberEmail));
		}
		
		 if ( memberId.length == 0 )
		{
			alert("ID를 입력해주세요.");
			return false;
		} // if
		
		if ( 3 > memberId.length > 14 )
		{
			alert("ID 4글자 이상 13글자 이하로 입력해주세요.");
			return false;
		} // if
		
		if ( memberPw.length == 0 )
		{
			alert("PW를 입력해주세요.");
			return false;
		} // if
		
		if ( memberPw != memberChk )
		{
			alert("PW가 다릅니다 확인해 주세요");
			return false;
		} // if
		
		if ( 3 > memberPw.length > 14 )
		{
			alert("PW를 4글자 이상 13글자 이하로 입력해주세요.");
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
		
		if ( memberTel.length < 11)
		{
			alert("전화번호를 정확히 입력해주세요.");
			return false;
		} // if
		
		if ( memberEmail.length == 0 )
		{	
			alert("Email를 입력해주세요.");
			return false;
		} // if

 
		 if ( ! email_check(memberEmail) ) {
			 alert("Email를 입력해주세요.");
			}
			
		return true;
	} // checkForm()
	</script>
	
</head>

  <body width="100%" height="100%">
    <form action="/member/join" method="post" class="loginForm" onsubmit = "return checkForm();">
      <h2>Sign Up</h2>
      <div class="idForm">
        <input type="text" class="id" placeholder="ID" id = "memberId" name = "memberId">
      </div>
      <div class="passForm">
        <input type="password" class="pw" placeholder="PW" id = "memberPw"  name="memberPw">
      </div>
      <div class="passForm">
        <input type="password" class="pwChk" id="memberChk" placeholder="PWChk" >
      </div>
      <div class="passForm">
        <input type="text" class="name" placeholder="Name" id = "memberNm" name="memberNm">
      </div>
      <div class="passForm">
        <input type="text" class="tel" placeholder="tel" id = "memberTel" name="memberTel">
      </div>
      <div class="passForm">
        <input type="text" class="email" placeholder="email" id ="memberEmail" name="memberEmail">
      </div>
      
      <button type="submit" class="btn">
        Sign Up
      </button>
      <div class="bottomText">
        Find ID or password <a href="#">보류</a>
      </div>
    </form>
  </body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
	<link rel="stylesheet" type="text/css" href="/resources/css/join.css">
<<<<<<< HEAD
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
=======
	<script type = "text/javascript" src="/resources/js/jquery-3.6.0.min.js"></script>
	<script type = "text/javascript">
	
	
	function checkForm()
	{
		// ID중복검사를 통과했는지 여부를 저장하는 변수
		var isIdChecked = false;

		// AJAX 방식으로 ID 중복검사를 실행하는 함수
	function idChk()
{
	$.ajax
	({
		url: "/member/idChk",
		data:
		{
			idChk: $("#memberID").val()
		},
		success: function(res)
		{
			if (res == "available")
			{
				isIdChecked = confirm("회원 가입이 가능한 ID 입니다. 사용하시겠습니까?");
				if(isIdChked) // 확인을 누른 경우
				{// 더이상 값을 변경하지 못하게 입력란을 읽기 전용으로 바꾸고 ID중복검사 버튼을 비활성화
					$("#memberID").attr("readonly" , "readonly");
					$("input:button").attr("disabled", "disabled");
					
				}// 이거 if 밖으로 빼지마 빼면 별개로 동작해
			}
			else
			{
				alert("이미 가입된 ID입니다.");
			}
		}
	});
}

		// 회원 가입 페이지에서 사용자가 입력한 데이터의 유효성을 검사하는 함수
		function formCheck() 
		{
			if (!isIdChecked) // ID중복검사를 통과하지 못한 경우 
			{
				alert("ID중복검사를 실시해주세요.");
				
				return false;
			}
		
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
>>>>>>> origin/kimtaewoo
		{
			alert("ID를 입력해주세요.");
			return false;
		} // if
		
<<<<<<< HEAD
=======
		if ( 3 > memberId.length > 14 )
		{
			alert("ID 4글자 이상 13글자 이하로 입력해주세요.");
			return false;
		} // if
		
>>>>>>> origin/kimtaewoo
		if ( memberPw.length == 0 )
		{
			alert("PW를 입력해주세요.");
			return false;
		} // if
		
<<<<<<< HEAD
=======
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
		
>>>>>>> origin/kimtaewoo
		if ( memberNm.length == 0 )
		{
			alert("Nm를 입력해주세요.");
			return false;
		} // if
<<<<<<< HEAD
=======
		
		
>>>>>>> origin/kimtaewoo
		if ( memberTel.length == 0 )
		{
			alert("tel를 입력해주세요.");
			return false;
		} // if
<<<<<<< HEAD
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
=======
		
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
        <input type="text" class="id" placeholder="ID" id = "memberId" name = "memberId" oninput="checkId()">   	
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
      <input type = "button" value = "ID중복검사" onclick = "idChk();"><br>
      <button type="submit" class="btn">
               회원가입	
>>>>>>> origin/kimtaewoo
      </button>
      <div class="bottomText">
        Find ID or password <a href="#">보류</a>
      </div>
    </form>
  </body>
</html>
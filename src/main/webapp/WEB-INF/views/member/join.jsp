<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<<<<<<< HEAD
    <link rel="stylesheet" type="text/css" href="/resources/css/join.css">	
=======
<head>
	
>>>>>>> origin/hataein
	<link href="https://fonts.googleapis.com/css?family=Crimson+Text:300,400,700|Rubik:300,400,700,900" rel="stylesheet">
    
    <link rel="stylesheet" href="/resources/css/styles-merged.css">
    <link rel="stylesheet" href="/resources/css/style.min.css">
     <link rel="stylesheet" href="/resources/css/join.css">
     
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>uiCookies:Atlantis &mdash; Free Bootstrap Theme, Free Responsive Bootstrap Website Template</title>
    <meta name="description" content="Free Bootstrap Theme by uicookies.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
<<<<<<< HEAD
    
=======
	
>>>>>>> origin/hataein
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
				{
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
<<<<<<< HEAD
		
=======
>>>>>>> origin/hataein
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
<<<<<<< HEAD
=======
		
		

>>>>>>> origin/hataein
		if ( memberTel.length == 0 )
		{
			alert("tel를 입력해주세요.");
			return false;
		} // if
<<<<<<< HEAD

=======
>>>>>>> origin/hataein
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
}
	</script>
</head>
<body>
  <!-- START: header -->
<form>
  <header role="banner" class="probootstrap-header">
    <!-- <div class="container"> -->
    <div class="row">
        <a href="index.html" class="probootstrap-logo visible-xs"><img src="/resources/img/logo_sm.png" class="hires" width="120" height="33" alt="Free Bootstrap Template by uicookies.com"></a>
        
        <a href="#" class="probootstrap-burger-menu visible-xs"><i>Menu</i></a>
        <div class="mobile-menu-overlay"></div>

        <nav role="navigation" class="probootstrap-nav hidden-xs">
          <ul class="probootstrap-main-nav">
            <li><a href="rooms.html">호텔방 소개</a></li>
            <li><a href="reservation.html">예약</a></li>
            <li class="hidden-xs probootstrap-logo-center"><a href="/"><img src="/resources/img/logo_md.png" class="hires" width="181" height="50" alt="Free Bootstrap Template by uicookies.com"></a></li>
            <li><a href="/question/questionList">후기</a></li>
            <c:if test="${empty memberId }">
            	<li><a href="/member/join">회원가입</a></li>
            	<li><a href="/member/login">로그인</a></li>
            </c:if>         
            <c:if test="${not empty memberId }">
            	<li><a href="/member/join">회원 정보 수정</a></li>
            	<li><a href="/member/logout">Logout</a></li>
            </c:if>

          </ul>
          <div class="extra-text visible-xs">
            <a href="#" class="probootstrap-burger-menu"><i>Menu</i></a>
            <h5>Connect With Us</h5>
            <ul class="social-buttons">
              <li><a href="#"><i class="icon-twitter"></i></a></li>
              <li><a href="#"><i class="icon-facebook2"></i></a></li>
              <li><a href="#"><i class="icon-instagram2"></i></a></li>
            </ul>
          </div>
        </nav>
        </div>
    <!-- </div> -->
    
  </header>
  </form>
  <!-- END: header -->
  
  <form class = "loginForm" action = "/question/questionListWrite" method = "post">
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
<<<<<<< HEAD
      <button type="submit" class="btn">
      	회원가입
      </button>
=======
      
		<script>
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
	

      <button type="submit" class="btn">
      	회원가입
      </button>
    
>>>>>>> origin/hataein
      <div class="bottomText">
        Find ID or password 
        <a href="#">보류</a>
      </div> 
      <div class="row mt40">
        <div class="col-md-12 text-center">
          <ul class="probootstrap-footer-social">
            <li><a href=""><i class="icon-twitter"></i></a></li>
            <li><a href=""><i class="icon-facebook"></i></a></li>
            <li><a href=""><i class="icon-instagram2"></i></a></li>
          </ul>
          <p>
            <small>&copy; 2017 <a href="https://uicookies.com/" target="_blank">uiCookies:Atlantis</a>. All Rights Reserved. <br> Designed &amp; Developed by <a href="https://uicookies.com/" target="_blank">uicookies.com</a> Demo Images: Unsplash.com &amp; Pexels.com</small>
          </p>
        </div>
      </div>
   </form>
  </body>
  
  
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <link href="https://fonts.googleapis.com/css?family=Crimson+Text:300,400,700|Rubik:300,400,700,900" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/styles-merged.css">
    <link rel="stylesheet" href="/resources/css/style.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/login.css">
    
</head>

<body width="100%" height="100%">

  <!-- START: header -->

  <header role="banner" class="probootstrap-header">
    <!-- <div class="container"> -->
    <div class="row">
        <a href="index.html" class="probootstrap-logo visible-xs"><img src="/resources/img/logo_sm.png" class="hires" width="120" height="33" alt="Free Bootstrap Template by uicookies.com"></a>
        
        <a href="#" class="probootstrap-burger-menu visible-xs"><i>Menu</i></a>
        <div class="mobile-menu-overlay"></div>

        <nav role="navigation" class="probootstrap-nav hidden-xs">
          <ul class="probootstrap-main-nav">
            <li><a href="/">Home</a></li>
            <li><a href="rooms.html">Our Rooms</a></li>
            <li><a href="reservation.html">Reservation</a></li>
            <li class="hidden-xs probootstrap-logo-center"><a href="index.html"><img src="/resources/img/logo_md.png" class="hires" width="181" height="50" alt="Free Bootstrap Template by uicookies.com"></a></li>
            <li><a href="/question/questionList">후기</a></li>
            
            <c:if test="${empty memberId }">
            	<li><a href="/member/join">Sign up</a></li>
            	<li class="active"><a href="/member/login">Sign in</a></li>
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
  <!-- END: header -->
	<form action="/member/login" method="post" class="loginForm">
		<h2>Sign in</h2>
     	<div class="idForm">
        	<input type="text" class ="id" name = "memberId" placeholder="ID">
        </div>
		<div class="passForm">
			<input type="password" class = "pw" name = "memberPw" placeholder="PW">
	    </div>
	    <button type="submit" class="btn">
	    	Sign In
	    </button>
	    <div class="bottomText">
     		Don't you have ID? <a href="#">sign up</a>
     	</div>
    </form>
</body>				
</html>
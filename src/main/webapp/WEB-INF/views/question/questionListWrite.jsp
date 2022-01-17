<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language = "java" contentType = "text/html; charset = UTF-8"
    pageEncoding = "UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset = "UTF-8">
<title>새 글 작성</title>
<head>
    <link rel="stylesheet" type="text/css" href="/resources/css/board.css">
	<link href="https://fonts.googleapis.com/css?family=Crimson+Text:300,400,700|Rubik:300,400,700,900" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/styles-merged.css">
    <link rel="stylesheet" href="/resources/css/style.min.css">
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>uiCookies:Atlantis &mdash; Free Bootstrap Theme, Free Responsive Bootstrap Website Template</title>
    <meta name="description" content="Free Bootstrap Theme by uicookies.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
  
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
  <!-- 폼으로 감싸안음 -->
  <!-- END: header -->
  
  	<form>
  	<h2>후기 글 작성</h2>
		<div class = "textForm">
		
		<p>저희 문라이트는 언제나 고객님의 목소리를 듣고 있습니다</p>
		<p>소중한 의견은 앞으로 더 나은 서비스를 만드는데 힘이 될수 있습니다</p>
		</div>
	</form>
	
	
	<form action = "/question/questionListWrite" method = "post" class = "form">
		<table border = "1" class = "table">
			<tr>
				<th>
					<td class = "td1">제목</td>
					<td class = "td3">
					<input class = "td3" type = "text" name = "listTitle" placeholder = "문의 내용을 상세히 적어주시면 답변에 도움이 됩니다">	
					</td>
				<th>
			</tr>
			<tr>
				<th>
					<td class = "td2">내용</td>
					<td class = "td4">
					<input class = "td4" name = "listContent" placeholder = "불건전한 내용 작성시 고지 없지 삭제되오니 주의 바랍니다">
					</td>
				<th>
			</tr>
				
			
			</table>
			<button type = "submit" class = "btn1">
				작성하기
			</button>
			<button type = "button" class = "btn1">
				취소하기
			</button>
	</form>
	
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
  
  
</body>
</html>
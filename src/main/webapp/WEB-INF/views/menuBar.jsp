<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language = "java" contentType = "text/html; charset = UTF-8"
    pageEncoding = "UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div style = "width: 100%; height: 60px; background-color: #FFDE33; position: fixed; top: 0; left: 0; text-align: center;">
		
		<input type = "button" value = "HOME" onclick = "location.href='/';">
		<c:if test = "${empty memberNN }">
			<input type = "button" value = "회원 가입" onclick = "location.href='/member/join';">
			<input type = "button" value = "로그인" onclick = "location.href='/member/login';">
		</c:if>
		<c:if test = "${not empty memberNN }">
			<input type = "button" value = "로그아웃" onclick = "location.href='/member/logout';">
			<input type = "button" value = "게시판" onclick = "location.href='/board/boardList';">
		</c:if>
	</div>
	<div style = "width: 100%; height: 60px;">
		
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 목록</title>
<link rel="stylesheet" type="text/css" href="/resources/css/default.css" />
</head>

<body>
<h1>[ SES Blog 목록 ]</h1>	

<input type ="button" value = "홈으로 이동" onclick="location.href='/'">

<table>
<c:forEach var="member" items="${memberList}">
<tr>
	<td>
		<img src="/resources/image/photo${member.photo}.png">
	</td>
	<td>
		<a href="/board/boardList?id12=${member.id}">
		${member.name} (${member.id})님의 블로그 보러 가기
		</a>
	</td>
</tr>
</c:forEach>
</table>

</body>
</html>

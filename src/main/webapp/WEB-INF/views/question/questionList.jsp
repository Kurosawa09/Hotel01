<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language = "java" contentType = "text/html; charset = UTF-8"
    pageEncoding = "UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset = "UTF-8">
<title>게시판</title>
	<link href = "/resources/css/boardWrite.css" rel = "stylesheet">
</head>
<body>
	<%@ include file = "/WEB-INF/views/menuBar.jsp" %>
	<h1>게시판</h1>
	
	<table border = "1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>
		<c:choose>
			<c:when test = "${empty questionList }">
				<tr>
					<td colspan = "4">게시글이 없습니다.</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach items = "${questionList }" var = "list">
					<tr>
						<td>${list.listNum }</td>
						<td>
							<a href = "/board/readBoard?boardNum=${list.listNum }">
								${list.listTitle }
							</a>
						</td>
						<td>${list.memberNm }</td>
						<td>${list.listDate }</td>
					</tr>
				</c:forEach>			
			</c:otherwise>
		</c:choose>
	</table>
	
	<input type = "button" value = "글 쓰기" onclick = "location.href = '/question/questionListWrite';" id = "submit">
</body>
</html>
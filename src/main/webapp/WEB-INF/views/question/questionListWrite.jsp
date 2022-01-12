<%@ page language = "java" contentType = "text/html; charset = UTF-8"
    pageEncoding = "UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset = "UTF-8">
<title>새 글 작성</title>
	<link href = "/resources/css/boardWrite.css" rel = "stylesheet">
</head>
<body>
	<%@ include file = "/WEB-INF/views/menuBar.jsp" %>
	<h1>새 글 작성</h1>
	
	<form action = "/question/questionListWrite" method = "post">
		<table border = "1">
			<tr>
				<td>제목</td>
				<td>
					<input type = "text" name = "listTitle" placeholder = "제목">
				</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>
					<textarea rows = "10" cols = "20" name = "listContent" placeholder = "내용"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan = "2">
					<input type = "submit" value = "작성하기" id = "submit">
				</td>
			</tr>
		</table>	
	</form>
</body>
</html>
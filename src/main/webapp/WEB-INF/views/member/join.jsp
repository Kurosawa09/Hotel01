<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>

<body>
<h1>[ SES Blog 회원 가입 ]</h1>

<form action="/member/join" method="post" onsubmit="return formCheck();">
<table class="border">
	<tr>
		<td class="bold">ID</td>
		<td>
			<input type="text" name="memberId" id="memberId">
		</td>
	</tr>
	<tr>
		<td class="bold">비밀번호</td>
		<td>
			<input type="password" name="memberPw" id="memberPw">
		</td>
	</tr>
	<tr>
		<td class="bold">이름</td>
		<td>
			<input type="text" name="memberNm" id="memberNm">
		</td>
	</tr>
	<tr>
		<td class="bold">전화번호</td>
		<td>
			<input type="text" name="memberTel" id="memberTel">
		</td>
	</tr>
	<tr>
		<td class="bold">이메일</td>
		<td>
			<input type="text" name="memberEmail" id="memberEmail">
		</td>
	</tr>
	<tr>
		<td colspan="1" class="center">
			<input type="submit" value="가입" />
		</td>
	</tr>
</table>

</form>


</body>
</html>
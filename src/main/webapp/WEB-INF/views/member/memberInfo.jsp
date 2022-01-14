<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
<script type="text/javascript" src="/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
// 유효성 검사
function formCheck() {
	
	var memberEmail = document.first.memberEmail1.value + "@" + document.first.memberEmail2.value
	var preMemberPw = document.getElementById('preMemberPw');
	var memberPw = document.getElementById('memberPw');
	var memberPwChk = document.getElementById('memberPwChk');
	var memberTel = document.getElementById('memberTel');

	if (memberPw.value.length < 3 || memberPw.value.length > 113) {
		alert("비밀번호는 4~12글자 사이로 입력해 주십시오.");
		return false;
	}
	
	if (memberPw.value != memberPwChk.value) {
		alert("비밀번호를 확인해 주십시오.");
		
		return false;
	}
	
	if(memberEmail.value.length == 0) {
		alert("유효하지 않은 이메일입니다.")
		
		return false;
	}
	
	if(memberTel.value.length == 11) {
		alert("전화번호를 확인해 주십시오.");
		
		return false;
	}
		
	return true;
	
	
}

// 회원탈퇴 확인
function memberDelete() {
	var result = confirm("탈퇴하시겠습니까?");
	
	if (result) {
		var input = document.first.userInput.value;
		input = prompt("비밀번호를 입력해주세요.");
		
		if (input != null) {
			window.open('/member/memberDelete?memberPw='+input, "", "width=200, height=200");
		} 
	} else {
		location = "/member/memberInfo";
	}
}

// 이메일 옵션 값을 옆 칸에 넣음
function email_change() {
	if (document.first.email.options[document.first.email.selectedIndex].value == '0') {
		document.first.memberEmail2disabled = true;
		document.first.memberEmail2.value = "";
	} else if (document.first.email.options[document.first.email.selectedIndex].value == '5') {
		document.first.memberEmail2.disabled = false;
		document.first.memberEmail2.value = "";
		document.first.memberEmail2.focus();
	}else{

		 document.first.memberEmail2.disabled = true;

		 document.first.memberEmail2.value = document.first.email.options[document.first.email.selectedIndex].value;
	}
	
}
</script>
</head>
<body>
	<!-- 회원 정보 수정 -->
	<form action="/member/memberInfo" method="post" onsubmit="return formCheck();" name="first">
	<table border ="1">
		<tr>
			<th>이름</th>
			<td>
				<input type="text" name="memberNm" value="${sessionScope.memberNm }" disabled>
			</td>
		</tr>
		<tr>
			<th>아이디</th>
			<td>
				<input type="text" name="memberId" id="memberId" value="${sessionScope.memberId }" disabled>
			</td>
		</tr>
		<tr>
			<th>현재 비밀번호</th>
			<td>
			<input type="password" name="preMemberPw" id="preMemberPw" placeholder="현재 비밀번호">
			</td>
		</tr>
		<tr>
			<th>비밀번호 변경</th>
			<td>
			<input type="password" name="memberPw" id="memberPw" placeholder="4~12 글자수 내 입력"><br>
			<input type="password" name="memberPwChk" id="memberPwChk" placeholder="비밀번호 확인">
			</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td>
			<input type="text" name="memberEmail1" id="memberEmail1" placeholder="이메일을 입력하세요.">
			@
			<input type="text" name="memberEmail2" disabled>
			<select name="email" onchange="email_change();">
				<option value="0">이메일 선택</option>
				<option value="naver.com">naver.com</option>
				<option value="hanmail.net">hanmail.net</option>
				<option value="gmail.com">gmail.com</option>
				<option value="5">직접 입력</option>
			</select>
			</td>
		</tr>
		<tr>
			<th>핸드폰 번호</th>
			<td>
			<input type="text" name="memberTel" id="memberTel" maxlength="11" placeholder="숫자만 입력">
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="submit" value="확인">
			<input type="button" value="취소" onclick="location.reload();">
			<input type="button" value="회원 탈퇴" onclick="memberDelete();">
		</tr>
		
	</table>
	<input type=hidden name=userInput id=userInput>
	</form>
</body>
</html>
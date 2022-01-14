<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Q&A</title>  	

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="/resources/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="/resources/css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="/resources/css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="/resources/css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="/resources/css/magnific-popup.css">

	<!-- Bootstrap DateTimePicker -->
	<link rel="stylesheet" href="/resources/css/bootstrap-datetimepicker.min.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
	<link rel="stylesheet" href="/resources/css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="/resources/css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>	
	
	</head>
	
	<body>		

	
	<header id="gtco-header" class="gtco-cover gtco-cover-xs" role="banner" style="background-image: url(resources/images/img_bg_4.jpg)" data-stellar-background-ratio="0.3">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-center">
					<div class="row row-mt-15em">
						<div class="col-md-12 mt-text animate-box" data-animate-effect="fadeInUp">
							<h1 class="cursive-font">마음의 소리</h1>	
						</div>						
					</div>					
				</div>
			</div>
		</div>
	</header>
	
	<div class="gtco-section">
		<div class="gtco-container">
	
						<table class="table-bordered" align="center" border ="1">
							<tbody>
								<tr>
									<th width="80" style="text-align: center;">title</th>
									<td width="300" height="50">${question.listTitle }</td>
									<th width="100" style="text-align: center;">date</th>
									<td width="140" style="text-align: center;">${question.listDate }</td>
									<th width="100" style="text-align: center;">writer</th>
									<td width="100" style="text-align: center;">${question.memberNm }</td>
								</tr>
								<tr>
									<td colspan="6" height="370" style="vertical-align: top; text-align: left;">
											<br>
											${question.listContent }
									</td>
								</tr>
							</tbody>
						</table>
						
						<!-- 댓글 테이블 -->
							<table class="table table-bordered" align="center" style="width: 810px">
								<c:forEach items="${replyList }" var="reply">
									<tr>
										<th >${reply.memberNm }</th>
										
										<td id="freeReply${reply.replyNum }">
											<span id="freeReplyContent${reply.replyNum }">${reply.replyContent }</span>					
										</td>	
												
										<td align="right" >
											<span>
												${reply.replyDate }
												<!-- 자신이 작성한 댓글 일 시 -->
												<c:if test="${reply.memberId == sessionScope.memberId}">
													<input type="button" value="삭제" class="btn btn-primary" onclick="location.href='/question/deleteReply?replyNum=${reply.replyNum }&listNum=${question.listNum }'">
													<input type="button" value="수정" class="btn btn-primary" onclick="updateReply(${reply.replyNum});">
													
<%-- 													<img src="/resources/images/modifiy.png" width="20px" height="20px" alt="수정" style="cursor:pointer;" onclick="updateReply(${reply.replyNum});">
 --%>												</c:if>
											</span>	
										</td>	
									</tr>
								</c:forEach>
								
									<tr>
										<td colspan="3">
											<form action="/question/replyWrite" method="post">
												<div class="mb-3">
													<textarea class="form-control" name="replyContent" rows="4" style="resize: none;"></textarea>
												</div>
												<div align="right">
													<c:if test="${sessionScope.memberId == null}">
														<button type="button" class="btn btn-outline-primary" onclick="ale();">댓글 쓰기</button>
													</c:if>
													<c:if test="${sessionScope.memberId != null}">
														<button type="submit" class="btn btn-outline-primary">댓글 등록</button>
													</c:if>
												</div>
												<input type="hidden" name="listNum" value="${question.listNum}">
											</form>
										</td>
									</tr>
							</table>
							<br>
							
						<div style="text-align: center;">
							<!-- 글, 수정 삭제 -->
							<!-- 자신이 작성한 글 일 시 -->
							<c:if test="${question.memberId == sessionScope.memberId}">
							<input type="button" value="수정" onclick="location.href = '/question/updateQuestion?listNum=${question.listNum }'">
							<input type="button" value="삭제" class="btn btn-primary" onclick="location.href='/question/deleteQuestion?listNum=${question.listNum}'">
							</c:if>
							<input type="button" value="리스트" class="btn btn-primary" onclick="location.href='questionList'">
						</div>
						</div>
					</div>		
		</div>
			
			

	
	
	<!-- jQuery -->
	<script src="/resources/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="/resources/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="/resources/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="/resources/js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="/resources/js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="/resources/js/jquery.countTo.js"></script>

	<!-- Stellar Parallax -->
	<script src="/resources/js/jquery.stellar.min.js"></script>

	<!-- Magnific Popup -->
	<script src="/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="/resources/js/magnific-popup-options.js"></script>
	
	<script src="/resources/js/moment.min.js"></script>
	<script src="/resources/js/bootstrap-datetimepicker.min.js"></script>


	<!-- Main -->
	<script src="/resources/js/main.js"></script>  
	<script type="text/javascript">
    	   	
		// 댓글 수정
		function updateReply(replyNum){
			var tr = document.getElementById("freeReply" + replyNum);
			var freeReplyContent = document.getElementById("freeReplyContent" + replyNum).innerHTML;
			alert(freeReplyContent)
			
			var str = "";
			str += "<form action='/question/updateReply' method='post'>";
			str += "	<textarea class='form-control' name='replyContent' id='exampleFormControlTextarea1' rows='4' style='resize: none;'>";
			str += 			freeReplyContent;
			str += 		"</textarea>";
			str += "	<div align='right'>" 
			str += "		<input type='submit' value='댓글 수정' class='btn btn-outline-primary'>";
			str += "	</div>"
			str += "	<input type='hidden' name='replyNum' value='" + replyNum + "'>";
			str += "	<input type='hidden' name='listNum' value='" + ${question.listNum } + "'>";
			str += "</form>";
			
			tr.innerHTML = str;
		}
		
		// 비로그인 시 댓글 작성 X
		function ale(){
			Swal.fire({
				  icon: 'error',
				  title: '로그인 후 이용해 주세요',
				  footer: '<a href="/member/login">로그인</a>'
				})

		}
		
    </script>
	</body>
</html>


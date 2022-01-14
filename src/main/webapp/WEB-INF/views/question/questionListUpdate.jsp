<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Aesthetic by gettemplates.co
	Twitter: http://twitter.com/gettemplateco
	URL: http://gettemplates.co
-->
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Q&A</title>
	<script>

//가입폼 확인
function formCheck() {
	var title = document.getElementById('title14');
	var content = document.getElementById('content23');
	
	if (title.value == '') {
		alert("제목을 입력하세요.");
		return false;
	}
	if (content.value == '') {
		alert("내용을 입력하세요.");
		return false;
	}
	return true;
}
</script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by GetTemplates.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="GetTemplates.co" />

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

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
	
	<header id="gtco-header" class="gtco-cover gtco-cover-xs" role="banner" style="background-image: url(resources/images/img_bg_4.jpg)" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-center">

					<div class="row row-mt-15em">
						<div class="col-md-12 mt-text animate-box" data-animate-effect="fadeInUp">
							<h1 class="cursive-font">고객의 소리</h1>		
						</div>
						
					</div>
					
				</div>
			</div>
		</div>
	</header>
	
	
	<div class="gtco-section">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12">
					<div class="col-md-6 animate-box">
					<form action="/question/updateQuestion" method="post">
					<input type="hidden" name="listNum" value="${questionList.listNum }">
					
						<div class="row form-group">
							<div class="col-md-12">
								<label class="sr-only" for="listTitle">제목</label>
								<input type="text" name="listTitle" class="form-control" placeholder="제목입력해" value = "${questionList.listTitle}">
							</div>
							
						</div>
						
						<div class="row form-group">
							<div class="col-md-12">
								<label class="sr-only" for="listContent">내용</label>
								<textarea  name="listContent" cols="30" rows="10" class="form-control" placeholder="내용입력해" >${questionList.listContent}</textarea>
							</div>
						</div>
						<div class="form-group">
							<input type="submit" value="글 쓰기" class="btn btn-primary">
						</div>

					</form>		
				</div>
				<div class="col-md-5 col-md-push-1 animate-box">
					

				</div>
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

	</body>
</html>


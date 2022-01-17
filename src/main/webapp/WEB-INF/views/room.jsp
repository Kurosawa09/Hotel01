<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Our Room</title>
<meta name="description" content="Free Bootstrap Theme by uicookies.com">
<meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
<style id="" media="all">/* latin */
@font-face {
  font-family: 'Crimson Text';
  font-style: normal;
  font-weight: 400;
  src: url(/fonts.gstatic.com/s/crimsontext/v13/wlp2gwHKFkZgtmSR3NB0oRJfbwhT.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
/* latin */
@font-face {
  font-family: 'Crimson Text';
  font-style: normal;
  font-weight: 700;
  src: url(/fonts.gstatic.com/s/crimsontext/v13/wlppgwHKFkZgtmSR3NB0oRJX1C1GDNNQ.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
/* cyrillic-ext */
@font-face {
  font-family: 'Rubik';
  font-style: normal;
  font-weight: 300;
  src: url(/fonts.gstatic.com/s/rubik/v14/iJWKBXyIfDnIV7nMrXyi0A.woff2) format('woff2');
  unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
}
/* cyrillic */
@font-face {
  font-family: 'Rubik';
  font-style: normal;
  font-weight: 300;
  src: url(/fonts.gstatic.com/s/rubik/v14/iJWKBXyIfDnIV7nFrXyi0A.woff2) format('woff2');
  unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* hebrew */
@font-face {
  font-family: 'Rubik';
  font-style: normal;
  font-weight: 300;
  src: url(/fonts.gstatic.com/s/rubik/v14/iJWKBXyIfDnIV7nDrXyi0A.woff2) format('woff2');
  unicode-range: U+0590-05FF, U+20AA, U+25CC, U+FB1D-FB4F;
}
/* latin-ext */
@font-face {
  font-family: 'Rubik';
  font-style: normal;
  font-weight: 300;
  src: url(/fonts.gstatic.com/s/rubik/v14/iJWKBXyIfDnIV7nPrXyi0A.woff2) format('woff2');
  unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
  font-family: 'Rubik';
  font-style: normal;
  font-weight: 300;
  src: url(/fonts.gstatic.com/s/rubik/v14/iJWKBXyIfDnIV7nBrXw.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
/* cyrillic-ext */
@font-face {
  font-family: 'Rubik';
  font-style: normal;
  font-weight: 400;
  src: url(/fonts.gstatic.com/s/rubik/v14/iJWKBXyIfDnIV7nMrXyi0A.woff2) format('woff2');
  unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
}
/* cyrillic */
@font-face {
  font-family: 'Rubik';
  font-style: normal;
  font-weight: 400;
  src: url(/fonts.gstatic.com/s/rubik/v14/iJWKBXyIfDnIV7nFrXyi0A.woff2) format('woff2');
  unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* hebrew */
@font-face {
  font-family: 'Rubik';
  font-style: normal;
  font-weight: 400;
  src: url(/fonts.gstatic.com/s/rubik/v14/iJWKBXyIfDnIV7nDrXyi0A.woff2) format('woff2');
  unicode-range: U+0590-05FF, U+20AA, U+25CC, U+FB1D-FB4F;
}
/* latin-ext */
@font-face {
  font-family: 'Rubik';
  font-style: normal;
  font-weight: 400;
  src: url(/fonts.gstatic.com/s/rubik/v14/iJWKBXyIfDnIV7nPrXyi0A.woff2) format('woff2');
  unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
  font-family: 'Rubik';
  font-style: normal;
  font-weight: 400;
  src: url(/fonts.gstatic.com/s/rubik/v14/iJWKBXyIfDnIV7nBrXw.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
/* cyrillic-ext */
@font-face {
  font-family: 'Rubik';
  font-style: normal;
  font-weight: 700;
  src: url(/fonts.gstatic.com/s/rubik/v14/iJWKBXyIfDnIV7nMrXyi0A.woff2) format('woff2');
  unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
}
/* cyrillic */
@font-face {
  font-family: 'Rubik';
  font-style: normal;
  font-weight: 700;
  src: url(/fonts.gstatic.com/s/rubik/v14/iJWKBXyIfDnIV7nFrXyi0A.woff2) format('woff2');
  unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* hebrew */
@font-face {
  font-family: 'Rubik';
  font-style: normal;
  font-weight: 700;
  src: url(/fonts.gstatic.com/s/rubik/v14/iJWKBXyIfDnIV7nDrXyi0A.woff2) format('woff2');
  unicode-range: U+0590-05FF, U+20AA, U+25CC, U+FB1D-FB4F;
}
/* latin-ext */
@font-face {
  font-family: 'Rubik';
  font-style: normal;
  font-weight: 700;
  src: url(/fonts.gstatic.com/s/rubik/v14/iJWKBXyIfDnIV7nPrXyi0A.woff2) format('woff2');
  unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
  font-family: 'Rubik';
  font-style: normal;
  font-weight: 700;
  src: url(/fonts.gstatic.com/s/rubik/v14/iJWKBXyIfDnIV7nBrXw.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
/* cyrillic-ext */
@font-face {
  font-family: 'Rubik';
  font-style: normal;
  font-weight: 900;
  src: url(/fonts.gstatic.com/s/rubik/v14/iJWKBXyIfDnIV7nMrXyi0A.woff2) format('woff2');
  unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
}
/* cyrillic */
@font-face {
  font-family: 'Rubik';
  font-style: normal;
  font-weight: 900;
  src: url(/fonts.gstatic.com/s/rubik/v14/iJWKBXyIfDnIV7nFrXyi0A.woff2) format('woff2');
  unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* hebrew */
@font-face {
  font-family: 'Rubik';
  font-style: normal;
  font-weight: 900;
  src: url(/fonts.gstatic.com/s/rubik/v14/iJWKBXyIfDnIV7nDrXyi0A.woff2) format('woff2');
  unicode-range: U+0590-05FF, U+20AA, U+25CC, U+FB1D-FB4F;
}
/* latin-ext */
@font-face {
  font-family: 'Rubik';
  font-style: normal;
  font-weight: 900;
  src: url(/fonts.gstatic.com/s/rubik/v14/iJWKBXyIfDnIV7nPrXyi0A.woff2) format('woff2');
  unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
  font-family: 'Rubik';
  font-style: normal;
  font-weight: 900;
  src: url(/fonts.gstatic.com/s/rubik/v14/iJWKBXyIfDnIV7nBrXw.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
</style>
<link rel="stylesheet" href="/resources/css/styles-merged.css">
<link rel="stylesheet" href="/resources/css/style.min.css" >
<meta name="robots" content="noindex, nofollow">
<script>(function(w,d){!function(e,t,r,a,s){e[r]=e[r]||{},e[r].executed=[],e.zaraz={deferred:[]};var n=t.getElementsByTagName("title")[0];e[r].c=t.cookie,n&&(e[r].t=t.getElementsByTagName("title")[0].text),e[r].w=e.screen.width,e[r].h=e.screen.height,e[r].j=e.innerHeight,e[r].e=e.innerWidth,e[r].l=e.location.href,e[r].r=t.referrer,e[r].k=e.screen.colorDepth,e[r].n=t.characterSet,e[r].o=(new Date).getTimezoneOffset(),//
e[s]=e[s]||[],e.zaraz._preTrack=[],e.zaraz.track=(t,r)=>e.zaraz._preTrack.push([t,r]),e[s].push({"zaraz.start":(new Date).getTime()});var i=t.getElementsByTagName(a)[0],o=t.createElement(a);o.defer=!0,o.src="/cdn-cgi/zaraz/s.js?"+new URLSearchParams(e[r]).toString(),i.parentNode.insertBefore(o,i)}(w,d,"zarazData","script","dataLayer");})(window,document);</script>
</head>
<body>

<header role="banner" class="probootstrap-header">

	<div class="row">
		<a href="/" class="probootstrap-logo visible-xs">
			<img src="/resources/img/logo_sm.png" class="hires" width="120" height="33" alt="Free Bootstrap Template by uicookies.com">
		</a>
		<a href="#" class="probootstrap-burger-menu visible-xs">
			<i>Menu</i>
		</a>
		<div class="mobile-menu-overlay">
		</div>
	<nav role="navigation" class="probootstrap-nav hidden-xs">
		<ul class="probootstrap-main-nav">
			<li>
				<a href="/">Home</a>
			</li>
			<li>
				<a href="about.html">About</a>
			</li>
			<li class="active">
				<a href="/room">Our Rooms</a>
			</li>
			<li class="hidden-xs probootstrap-logo-center">
				<a href="/">
					<img src="/resources/img/logo_md.png" class="hires" width="181" height="50" alt="Free Bootstrap Template by uicookies.com">
				</a>
			</li>
			<li>
				<a href="reservation.html">Reservation</a>
			</li>
			<li>
				<a href="blog.html">Blog</a>
			</li>
			<li>
				<a href="contact.html">Contact</a>
			</li>
		</ul>
		<div class="extra-text visible-xs">
			<a href="#" class="probootstrap-burger-menu">
				<i>Menu</i>
			</a>
		<h5>Connect With Us</h5>
		<ul class="social-buttons">
			<li>
				<a href="#">
					<i class="icon-twitter"></i>
				</a>
			</li>
			<li>
				<a href="#">
					<i class="icon-facebook2"></i>
				</a>
			</li>
			<li>
				<a href="#">
					<i class="icon-instagram2"></i>
				</a>
			</li>
		</ul>
		</div>
	</nav>
	</div>

</header>

<section class="probootstrap-slider flexslider probootstrap-inner">
	<ul class="slides">
		<li style="background-image: url(/resources/img/slider_1.jpg);" class="overlay">
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-md-offset-1">
						<div class="probootstrap-slider-text text-center">
							<p><img src="/resources/img/curve_white.svg" class="seperator probootstrap-animate" alt="Free HTML5 Bootstrap Template"></p>
							<h1 class="probootstrap-heading probootstrap-animate">Best Rooms</h1>
							<div class="probootstrap-animate probootstrap-sub-wrap">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</div>
						</div>
					</div>
				</div>
			</div>
		</li>
	</ul>
</section>
<section class="probootstrap-section">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-6 col-xs-12">
				<div class="probootstrap-room">
					<a href="#"><img src="/resources/img/room/roomClassic.jpg" alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></a>
					<div class="text">
						<h3>Classic Room</h3>
						<p>Starting from <strong>$29.00/Night</strong></p>
						<div class="post-meta mb30">
						<p>방 설명</p>
							<table>
								<tr>
									<td>방 면적</td>
									<td>~~m^2</td>
								</tr>
								<tr>
									<td>정원</td>
									<td>1~9 명</td>
								</tr>
								<tr>
									<td>침대 사이즈</td>
									<td>~~cm X ~~cm</td>
								</tr>
							</table>
						</div>
						<p><a href="#" class="btn btn-primary" role="button">Reserve now for $29.00</a></p>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<div class="probootstrap-room">
					<a href="#"><img src="/resources/img/room/roomGrandDeluxe.jpg" alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></a>
					<div class="text">
						<h3>Grand Deluxe Room</h3>
						<p>Starting from <strong>$29.00/Night</strong></p>
						<div class="post-meta mb30">
							<p>방 설명</p>
							<table>
								<tr>
									<td>방 면적</td>
									<td>~~m^2</td>
								</tr>
								<tr>
									<td>정원</td>
									<td>1~9 명</td>
								</tr>
								<tr>
									<td>침대 사이즈</td>
									<td>~~cm X ~~cm</td>
								</tr>
							</table>
						</div>
						<p><a href="#" class="btn btn-primary" role="button">Reserve now for $29.00</a></p>
					</div>
				</div>
			</div>
			<div class="clearfix visible-sm-block"></div>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<div class="probootstrap-room">
				<a href="#"><img src="/resources/img/room/roomUltraSuperior.jpg" alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></a>
					<div class="text">
						<h3>Ultra Superior Room</h3>
						<p>Starting from <strong>$29.00/Night</strong></p>
						<div class="post-meta mb30">
							<p>방 설명</p>
							<table>
								<tr>
									<td>방 면적</td>
									<td>~~m^2</td>
								</tr>
								<tr>
									<td>정원</td>
									<td>1~9 명</td>
								</tr>
								<tr>
									<td>침대 사이즈</td>
									<td>~~cm X ~~cm</td>
								</tr>
							</table>
						</div>
						<p><a href="#" class="btn btn-primary" role="button">Reserve now for $29.00</a></p>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<div class="probootstrap-room">
					<a href="#"><img src="/resources/img/room/roomGrandDeluxe2.jpg" alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></a>
					<div class="text">
						<h3>Grand Deluxe Room</h3>
						<p>Starting from <strong>$29.00/Night</strong></p>
						<div class="post-meta mb30">
							<p>방 설명</p>
							<table>
								<tr>
									<td>방 면적</td>
									<td>~~m^2</td>
								</tr>
								<tr>
									<td>정원</td>
									<td>1~9 명</td>
								</tr>
								<tr>
									<td>침대 사이즈</td>
									<td>~~cm X ~~cm</td>
								</tr>
							</table>
						</div>
						<p><a href="#" class="btn btn-primary" role="button">Reserve now for $29.00</a></p>
					</div>
				</div>
			</div>
			<div class="clearfix visible-sm-block"></div>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<div class="probootstrap-room">
					<a href="#"><img src="/resources/img/room/roomUltraSuperior2.jpg" alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></a>
					<div class="text">
						<h3>Ultra Superior Room</h3>
						<p>Starting from <strong>$29.00/Night</strong></p>
						<div class="post-meta mb30">
							<p>방 설명</p>
							<table>
								<tr>
									<td>방 면적</td>
									<td>~~m^2</td>
								</tr>
								<tr>
									<td>정원</td>
									<td>1~9 명</td>
								</tr>
								<tr>
									<td>침대 사이즈</td>
									<td>~~cm X ~~cm</td>
								</tr>
							</table>
						</div>
						<p><a href="#" class="btn btn-primary" role="button">Reserve now for $29.00</a></p>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-6 col-xs-12">
				<div class="probootstrap-room">
					<a href="#"><img src="/resources/img/room/roomPresidential.jpg" alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></a>
					<div class="text">
						<h3>Presidential Room</h3>
						<p>Starting from <strong>$29.00/Night</strong></p>
						<div class="post-meta mb30">
							<p>방 설명</p>
							<table>
								<tr>
									<td>방 면적</td>
									<td>~~m^2</td>
								</tr>
								<tr>
									<td>정원</td>
									<td>1~9 명</td>
								</tr>
								<tr>
									<td>침대 사이즈</td>
									<td>~~cm X ~~cm</td>
								</tr>
							</table>
						</div>
						<p><a href="#" class="btn btn-primary" role="button">Reserve now for $29.00</a></p>
					</div>
				</div>
			</div>
			<div class="clearfix visible-sm-block"></div>
		</div>
		<div class="row">
			<div class="col-md-12 text-center">
				<h2>Why Choose Us?</h2>
				<p class="mb50"><img src="/resources/img/curve.svg" class="svg" alt="Free HTML5 Bootstrap Template"></p>
			</div>
			<div class="col-md-4">
				<div class="service left-icon left-icon-sm probootstrap-animate">
					<div class="icon">
						<i class="icon-check"></i>
					</div>
					<div class="text">
						<h3>1+ Million Hotel Rooms</h3>
						<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						<p><a href="#" class="link-with-icon">Learn More <i class=" icon-chevron-right"></i></a></p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="service left-icon left-icon-sm probootstrap-animate">
					<div class="icon">
						<i class="icon-check"></i>
					</div>
					<div class="text">
						<h3>Food &amp; Drinks</h3>
						<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						<p><a href="#" class="link-with-icon">Learn More <i class=" icon-chevron-right"></i></a></p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="service left-icon left-icon-sm probootstrap-animate">
					<div class="icon">
						<i class="icon-check"></i>
					</div>
					<div class="text">
						<h3>Airport Taxi</h3>
						<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						<p><a href="#" class="link-with-icon">Learn More <i class=" icon-chevron-right"></i></a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="probootstrap-section probootstrap-section-dark">
	<div class="container">
		<div class="row mb30">
			<div class="col-md-8 col-md-offset-2 probootstrap-section-heading text-center">
				<h2>Explore our Services</h2>
				<p class="lead">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
				<p><img src="/resources/img/curve.svg" class="svg" alt="Free HTML5 Bootstrap Template"></p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<div class="service left-icon probootstrap-animate">
					<div class="icon">
						<img src="/resources/img/flaticon/svg/001-building.svg" class="svg" alt="Free HTML5 Bootstrap Template by uicookies.com">
					</div>
					<div class="text">
						<h3>1+ Million Hotel Rooms</h3>
						<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						<p><a href="#" class="link-with-icon">Learn More <i class=" icon-chevron-right"></i></a></p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="service left-icon probootstrap-animate">
					<div class="icon">
						<img src="/resources/img/flaticon/svg/003-restaurant.svg" class="svg" alt="Free HTML5 Bootstrap Template by uicookies.com">
					</div>
					<div class="text">
						<h3>Food &amp; Drinks</h3>
						<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						<p><a href="#" class="link-with-icon">Learn More <i class=" icon-chevron-right"></i></a></p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="service left-icon probootstrap-animate">
					<div class="icon">
						<img src="/resources/img/flaticon/svg/004-parking.svg" class="svg" alt="Free HTML5 Bootstrap Template by uicookies.com">
					</div>
					<div class="text">
						<h3>Airport Taxi</h3>
						<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						<p><a href="#" class="link-with-icon">Learn More <i class=" icon-chevron-right"></i></a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="probootstrap-half">
	<div class="image" style="background-image: url(/resources/img/slider_2.jpg);"></div>
	<div class="text">
		<div class="probootstrap-animate fadeInUp probootstrap-animated">
			<h2 class="mt0">Best 5 Star hotel</h2>
			<p><img src="/resources/img/curve_white.svg" class="seperator" alt="Free HTML5 Bootstrap Template"></p>
			<div class="row">
				<div class="col-md-6">
					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
				</div>
				<div class="col-md-6">
					<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
				</div>
			</div>
			<p><a href="#" class="link-with-icon white">Learn More <i class=" icon-chevron-right"></i></a></p>
		</div>
	</div>
</section>

<footer role="contentinfo" class="probootstrap-footer">
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="probootstrap-footer-widget">
					<p class="mt40"><img src="/resources/img/logo_sm.png" class="hires" width="120" height="33" alt="Free HTML5 Bootstrap Template by uicookies.com"></p>
					<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
					<p><a href="#" class="link-with-icon">Learn More <i class=" icon-chevron-right"></i></a></p>
				</div>
			</div>
			<div class="col-md-4">
				<div class="probootstrap-footer-widget">
					<h3>Blog</h3>
					<ul class="probootstrap-blog-list">
						<li>
							<a href="#">
								<figure class="probootstrap-image"><img src="/resources/img/img_1.jpg" alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></figure>
								<div class="probootstrap-text">
									<h4>River named Duden flows</h4>
									<span class="meta">August 2, 2017</span>
									<p>A small river named Duden flows by their place</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<figure class="probootstrap-image"><img src="/resources/img/img_2.jpg" alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></figure>
								<div class="probootstrap-text">
									<h4>River named Duden flows</h4>
									<span class="meta">August 2, 2017</span>
									<p>A small river named Duden flows by their place</p>
								</div>
								</a>
							</li>
						<li>
							<a href="#">
							<figure class="probootstrap-image"><img src="/resources/img/img_3.jpg" alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></figure>
								<div class="probootstrap-text">
								<h4>River named Duden flows</h4>
								<span class="meta">August 2, 2017</span>
								<p>A small river named Duden flows by their place</p>
								</div>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="col-md-4">
				<div class="probootstrap-footer-widget">
					<h3>Contact</h3>
					<ul class="probootstrap-contact-info">
						<li><i class="icon-location2"></i> <span>198 West 21th Street, Suite 721 New York NY 10016</span></li>
						<li><i class="icon-mail"></i><span><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="f29b9c949db2969d9f939b9cdc919d9f">[email&#160;protected]</a></span></li>
						<li><i class="icon-phone2"></i><span>+123 456 7890</span></li>
					</ul>
				</div>
			</div>
		</div>
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
	</div>
</footer>

<script src="/resources/js/scripts.min.js"></script>
<script src="/resources/js/main.min.js"></script>
<script src="/resources/js/custom.js"></script>
</body>
</html>
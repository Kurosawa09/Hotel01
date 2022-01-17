<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Moonlight</title>
    <meta name="description" content="Free Bootstrap Theme by uicookies.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Crimson+Text:300,400,700|Rubik:300,400,700,900" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/styles-merged.css">
    <link rel="stylesheet" href="/resources/css/style.min.css">
    
    <!-- 구글지도 설정 -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyAwrSi_2CQj5iHe1Y2ugQaatG3kvueyXDE" ></script>
	<style>
	#map_ma {width:100%; height:400px; clear:both; border:solid 1px purple;}
	</style>
  </head>
  
  <body width="100%" height="100%">

  <!-- START: header -->

  <header role="banner" class="probootstrap-header">
    <!-- <div class="container"> -->
    <div class="row">
        <a href="index.html" class="probootstrap-logo visible-xs"><img src="/resources/img/logo_sm.png" class="hires" width="120" height="33" alt="Free Bootstrap Template by uicookies.com"></a>
        
        <a href="#" class="probootstrap-burger-menu visible-xs"><i>Menu</i></a>
        <div class="mobile-menu-overlay"></div>

        <nav role="navigation" class="probootstrap-nav hidden-xs">
          <ul class="probootstrap-main-nav">
<<<<<<< HEAD
            <li class="active"><a href="/">Home</a></li>
            <li><a href="/room">Our Rooms</a></li>
            <li><a href="reservation.html">Reservation</a></li>
            <li class="hidden-xs probootstrap-logo-center"><a href="/"><img src="/resources/img/logo_md.png" class="hires" width="181" height="50" alt="Free Bootstrap Template by uicookies.com"></a></li>
            <li><a href="/question/questionList">íê¸°</a></li>
            
=======
            <li><a href="rooms.html">호텔방 소개</a></li>
            <li><a href="reservation.html">예약</a></li>
            <li class="hidden-xs probootstrap-logo-center"><a href="/"><img src="/resources/img/logo_md.png" class="hires" width="181" height="50" alt="Free Bootstrap Template by uicookies.com"></a></li>
            <li><a href="/question/questionList">후기</a></li>

>>>>>>> origin/kimtaewoo
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
  <!-- END: header -->

  <section class="probootstrap-slider flexslider">
    <ul class="slides">
       <li style="background-image: url('/resources/img/ocean3.png');" class="overlay">
          <div class="container">
            <div class="row">
              <div class="col-md-10 col-md-offset-1">
                <div class="probootstrap-slider-text text-center">
                  <p><img src="/resources/img/curve_white.svg" class="seperator probootstrap-animate" alt="Free HTML5 Bootstrap Template"></p>
                  <h1 class="probootstrap-heading probootstrap-animate">Welcome to MoonLight</h1>
                  <div class="probootstrap-animate probootstrap-sub-wrap">하늘에는 보다 가깝게 바다에는 더욱 드넓게 펼쳐진 객실 오션뷰</div>
                </div>
              </div>
            </div>
          </div>
        </li>
        <li style="background-image: url('/resources/img/ocean2.jpg');" class="overlay">
          <div class="container">
            <div class="row">
              <div class="col-md-10 col-md-offset-1">
                <div class="probootstrap-slider-text text-center">
                  <p><img src="/resources/img/curve_white.svg" class="seperator probootstrap-animate" alt="Free HTML5 Bootstrap Template"></p>
                  <h1 class="probootstrap-heading probootstrap-animate">Enjoy Luxury Experience</h1>
                  <div class="probootstrap-animate probootstrap-sub-wrap">보는 순간 힐링되는 영롱한 은하수에서<br>밤하늘을 수놓은 듯 화려하게 빛나는 별빛 은하수를 온 몸으로 담아보세요</div>
                </div>
              </div>
            </div>
          </div>
          
        </li>
    </ul>
  </section>

  <section class="probootstrap-cta probootstrap-light">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h2 class="probootstrap-cta-heading">Reserve a room for your family <span> &mdash; Far far away behind the word mountains far.</span></h2>
          <div class="probootstrap-cta-button-wrap"><a href="#" class="btn btn-primary">Reserve now</a></div>
        </div>
      </div>
    </div>
  </section>

  <section class="probootstrap-section">
    <div class="container">
      <div class="row mb30">
        <div class="col-md-8 col-md-offset-2 probootstrap-section-heading text-center">
          <h2>Services</h2>
          <p class="lead">THE MoonLight에서 준비한 특별한 상품을 만나보세요.</p>
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
              <h3>Hotel Rooms</h3>
              <p>넓고 현대적인 공간 구성이 특징인 203개의 객실은 다양한 크기와 모양의 창문에서 쏟아져 들어오는 따스한 자연 채광을 자랑합니다. 각 객실마다 40인치 평면 TV, 푹신한 침구, 베개 타입 선택 옵션, 무료 초고속 와이파이가 마련되어 있습니다</p>
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
              <p>매혹적인 야경을 배경으로 총주방장의 독창적인 코스 요리를 즐길 수 있는 라 플레이스 그릴&바, 세련된 인테리어의 디오니소스 카페&바, 제철 로컬 식재료를 활용한 뷔페와 일품 메뉴를 선보이고 있는 모래시계 레스토랑이 풍부한 미식의 세계로 인도합니다</p>
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
              <p>THE MoonLight는 공항, 용산 KTX역, 고속버스터미널, 지하철역 등의 주요 교통 요지에 매우 밀접하게 자리해 지역 관광 명소뿐만 아니라 근교 관광 도시 방문에 매우 편리합니다. 또한 비즈니스와 여가 모두에 적합한 서울 유일의 인터내셔널 브랜드 호텔입니다</p>
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
          <h2>Best Rooms</h2>
          <p class="lead">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
          <p><img src="/resources/img/curve.svg" class="svg" alt="Free HTML5 Bootstrap Template"></p>
        </div>
      </div>
      <div class="row probootstrap-gutter10">
        <div class="col-md-6">
          <div class="probootstrap-block-image-text">
            <figure>
              <a href="/resources/img/img_1.jpg" class="image-popup">
                <img src="/resources/img/img_1.jpg" alt="Free HTML5 Bootstrap Template by uicookies.com" class="img-responsive">
              </a>
              <div class="actions">
                <a href="https://vimeo.com/45830194" class="popup-vimeo"><i class="icon-play2"></i></a>
              </div>
            </figure>
            <div class="text">
              <h3><a href="#">Grand Deluxe Room</a></h3>
              <div class="post-meta">
                <ul>
                  <li><span class="review-rate">4.7</span> <i class="icon-star"></i> 252 Reviews</li>
                  <li><i class="icon-user2"></i> 3 Guests</li>
                </ul>
              </div>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <p><a href="#" class="btn btn-primary">Book now from $109</a></p>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="probootstrap-block-image-text">
            <figure>
              <a href="/resources/img/img_2.jpg" class="image-popup">
              <img src="/resources/img/img_2.jpg" alt="Free HTML5 Bootstrap Template by uicookies.com" class="img-responsive">
              </a>
              <div class="actions">
                <a href="https://vimeo.com/45830194" class="popup-vimeo"><i class="icon-play2"></i></a>
              </div>
            </figure>
            <div class="text">
              <h3><a href="#">Ultra Superior Room</a></h3>
              <div class="post-meta">
                <ul>
                  <li><span class="review-rate">4.7</span> <i class="icon-star"></i> 252 Reviews</li>
                  <li><i class="icon-user2"></i> 3 Guests</li>
                </ul>
              </div>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <p><a href="#" class="btn btn-primary">Book now from $109</a></p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="probootstrap-section">
    <div class="container">
        <div class="row">
          <div class="col-md-12 probootstrap-relative">
            <h3 class="mt0 mb30">More Rooms</h3>
            <ul class="probootstrap-owl-navigation absolute right">
              <li><a href="#" class="probootstrap-owl-prev"><i class="icon-chevron-thin-left"></i></a></li>
              <li><a href="#" class="probootstrap-owl-next"><i class="icon-chevron-thin-right"></i></a></li>
            </ul>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 probootstrap-relative">
            <div class="owl-carousel owl-carousel-carousel">
              <div class="item">
                <div class="probootstrap-room">
                  <a href="#"><img src="/resources/img/img_1.jpg" alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></a>
                  <div class="text">
                    <h3>Classic Room</h3>
                    <p>Starting from <strong>$29.00/Night</strong></p>
                    <div class="post-meta">
                      <ul>
                        <li><span class="review-rate">4.7</span> <i class="icon-star"></i> 252 Reviews</li>
                        <li><i class="icon-user2"></i> 3 Guests</li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="probootstrap-room">
                  <a href="#"><img src="/resources/img/img_2.jpg" alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></a>
                  <div class="text">
                    <h3>Grand Deluxe Room</h3>
                    <p>Starting from <strong>$32.00/Night</strong></p>
                    <div class="post-meta">
                      <ul>
                        <li><span class="review-rate">4.7</span> <i class="icon-star"></i> 252 Reviews</li>
                        <li><i class="icon-user2"></i> 3 Guests</li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="probootstrap-room">
                  <a href="#"><img src="/resources/img/img_3.jpg" alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></a>
                  <div class="text">
                    <h3>Ultra Superior Room</h3>
                    <p>Starting from <strong>$42.00/Night</strong></p>
                    <div class="post-meta">
                      <ul>
                        <li><span class="review-rate">4.7</span> <i class="icon-star"></i> 252 Reviews</li>
                        <li><i class="icon-user2"></i> 3 Guests</li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="probootstrap-room">
                  <a href="#"><img src="/resources/img/img_4.jpg" alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></a>
                  <div class="text">
                    <h3>Classic Room</h3>
                    <p>Starting from <strong>$29.00/Night</strong></p>
                    <div class="post-meta">
                      <ul>
                        <li><span class="review-rate">4.7</span> <i class="icon-star"></i> 252 Reviews</li>
                        <li><i class="icon-user2"></i> 3 Guests</li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="probootstrap-room">
                  <a href="#"><img src="/resources/img/img_5.jpg" alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></a>
                  <div class="text">
                    <h3>Grand Deluxe Room</h3>
                    <p>Starting from <strong>$32.00/Night</strong></p>
                    <div class="post-meta">
                      <ul>
                        <li><span class="review-rate">4.7</span> <i class="icon-star"></i> 252 Reviews</li>
                        <li><i class="icon-user2"></i> 3 Guests</li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="probootstrap-room">
                  <a href="#"><img src="/resources/img/img_6.jpg" alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></a>
                  <div class="text">
                    <h3>Ultra Superior Room</h3>
                    <p>Starting from <strong>$42.00/Night</strong></p>
                    <div class="post-meta">
                      <ul>
                        <li><span class="review-rate">4.7</span> <i class="icon-star"></i> 252 Reviews</li>
                        <li><i class="icon-user2"></i> 3 Guests</li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="probootstrap-room">
                  <a href="#"><img src="/resources/img/img_7.jpg" alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></a>
                  <div class="text">
                    <h3>Ultra Superior Room</h3>
                    <p>Starting from <strong>$42.00/Night</strong></p>
                    <div class="post-meta">
                      <ul>
                        <li><span class="review-rate">4.7</span> <i class="icon-star"></i> 252 Reviews</li>
                        <li><i class="icon-user2"></i> 3 Guests</li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
  </section>

  <section class="probootstrap-half">
    <div class="image" style="background-image: url('/resources/img/hotel.jpg');"></div>
    <div class="text">
      <div class="probootstrap-animate fadeInUp probootstrap-animated">
        <h2 class="mt0">Best 5 Star hotel</h2>
        <p><img src="/resources/img/curve_white.svg" class="seperator" alt="Free HTML5 Bootstrap Template"></p>
        <div class="row">
          <div class="col-md-6">
            <p>홀리데이 인 광주호텔은 광주공항, 광주송정 KTX역, 고속버스터미널, 지하철역 등의 주요 교통 요지에 매우 밀접하게 자리해 지역 관광 명소뿐만 아니라 근교 관광 도시 방문에 매우 편리합니다. 또한 광주 MICE의 중심지 김대중컨벤션센터 바로 건너편에 위치해 있어 비즈니스와 여가 모두에 적합한 광주 유일의 인터내셔널 브랜드 호텔입니다.

호텔 외관을 아름답게 수놓고 있는 조명의 거장 Alian Guilhot의 조명 작품과 로비 가득 전시된 세계적으로 유명한 작가들의 작품이 문화예술의 도시 광주에 오신 여러분을 맞이합니다. 동급 호텔 전용 면적 대비 넓고 현대적인 공간 구성이 특징인 203개의 객실은 광주의 진산 무등산 너덜겅에서 영감을 받은 999개의 다양한 크기와 모양의 창문에서 쏟아져 들어오는 따스한 자연 채광을 자랑합니다. 각 객실마다 40인치 평면 TV, 푹신한 침구, 베개 타입 선택 옵션(Pillow Choice), 무료 초고속 와이파이가 마련되어 있습니다.
</p>    
          </div>
          <div class="col-md-6">
            <p>호남 지역 최고의 럭셔리 스파와 투숙객 전용 실내 수영장, 최신 장비를 완비한 피트니스센터 그리고 사우나는 진정한 도심 속 휴식과 채움의 시간을 제공합니다. 다양한 규모 및 행사의 성격에 따라 이용 가능한 7개의 이벤트 공간은 대규모 컨벤션, 중소 규모의 회의, 고품격 웨딩, 프라이빗한 가족모임까지 다목적 행사를 진행하시기에 부족함이 없습니다.

매혹적인 광주 야경을 배경으로 총주방장의 독창적인 코스 요리를 즐길 수 있는 라 플레이스 그릴&바, 세련된 인테리어의 디오니소스 카페&바, 제철 로컬 식재료를 활용한 뷔페와 일품 메뉴를 선보이고 있는 모래시계 레스토랑이 풍부한 미식의 세계로 인도합니다.</p>    
          </div>
        </div>
        <p><a href="#" class="link-with-icon white">Learn More <i class=" icon-chevron-right"></i></a></p>
      </div>
    </div>
  </section>
  
  <!-- 여기 위 아님 -->

  <!-- START: footer -->
	<footer role="contentinfo" class="probootstrap-footer">
		<div class="container">
	    	<div class="row">
	    		<div class="col-md-8">
					<div class="probootstrap-footer-widget">
	            	<p class="mt40"><img src="/resources/img/logo_sm.png" class="hires" width="120" height="33" alt="Free HTML5 Bootstrap Template by uicookies.com"></p>
	          		<div id="map_ma"></div>
          		
<script type="text/javascript">
    $(document).ready(function() {
    	var myLatlng = new google.maps.LatLng(35.176578, 126.802214); // 위치값 위도 경도
    var Y_point         = 35.176578;		// Y 좌표
    var X_point         = 126.802214;       // X 좌표
    var zoomLevel       = 17;               // 지도의 확대 레벨 : 숫자가 클수록 확대정도가 큼
    var markerTitle     = "THE MoonLight";  // 현재 위치 마커에 마우스를 오버을때 나타나는 정보
    var markerMaxWidth	= 200;              // 마커를 클릭했을때 나타나는 말풍선의 최대 크기

	// 말풍선 내용
    var contentString    = '<div>' +
    '<h2>THE MoonLight</h2>'+
    '<p></p>' +
    '</div>';
    var myLatlng = new google.maps.LatLng(Y_point, X_point);
    var mapOptions = {
                        zoom: zoomLevel,
                        center: myLatlng,
                        mapTypeId: google.maps.MapTypeId.ROADMAP
	}
    var map = new google.maps.Map(document.getElementById('map_ma'), mapOptions);
    var marker = new google.maps.Marker({
                                            position: myLatlng,
                                            map: map,
                                            title: markerTitle
    });
	var infowindow = new google.maps.InfoWindow({
		content: contentString,
		maxWizzzdth: markerMaxWidth
	});
		google.maps.event.addListener(marker, 'click', function() {
		infowindow.open(map, marker);
	});
});
</script>
          		</div>
        	</div>
    
			<div class="col-md-4">
          		<div class="probootstrap-footer-widget">
          		<br><br>
            	<h3>Contact</h3>
		            <ul class="probootstrap-contact-info">
		              	<li><i class="icon-location2"></i> <span>198 West 21th Street, Suite 721 New York NY 10016</span></li>
		              	<li><i class="icon-mail"></i><span>info@domain.com</span></li>
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
  
  
  		<!-- END: footer -->
		<script src="/resources/js/scripts.min.js"></script>
		<script src="/resources/js/main.min.js"></script>
		<script src="/resources/js/custom.js"></script>



	</body>

  </body>

</html>
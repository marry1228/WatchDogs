<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
    	String userid = (String)session.getAttribute("userid");
    	String usertype = (String)session.getAttribute("usertype");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강아지 정보</title>
<link rel="stylesheet" href="http://dmshop.kr/theme/moon/css/default_shop.css?ver=12928">
<link rel="stylesheet" href="http://dmshop.kr/theme/moon/skin/shop/basic/style.css?ver=12928">
<script>
// 자바스크립트에서 사용하는 전역변수 선언
var g5_url       = "http://dmshop.kr";
var g5_bbs_url   = "http://dmshop.kr/bbs";
var g5_is_member = "";
var g5_is_admin  = "";
var g5_is_mobile = "";
var g5_bo_table  = "";
var g5_sca       = "";
var g5_editor    = "";
var g5_cookie_domain = "";
var g5_shop_url = "http://dmshop.kr/shop";
var g5_theme_shop_url = "http://dmshop.kr/theme/moon/shop";
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="http://dmshop.kr/js/bootstrap.js"></script>
<script src="http://dmshop.kr/js/jquery.shop.menu.js?ver=1631"></script>
<script src="http://dmshop.kr/js/common.js?ver=1631"></script>
<script src="http://dmshop.kr/js/icecream.js?ver=1631"></script>
<script src="http://dmshop.kr/js/wrest.js?ver=1631"></script>
<script src="http://dmshop.kr/theme/moon/js/jquery.flexslider-min.js"></script>
<link href="http://dmshop.kr/theme/moon/js/flexslider.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
</head>

<body>

<div id="hello_wrap">

<!-- 상단 시작 { -->
<div id="hd">

    <div id="tnb">
        <h3>메뉴</h3>
        <ul>    
         	<%
        		if(userid.equals("")){
        	%>		
        			<li><a href="login.jsp"><b>로그인</b></a></li>
        	<%
        		}else{
        	%>	
        			<li><a href="logout.jsp"><b>로그아웃</b></a></li>
        	<%	
        		}
        	%>  
            <li><a href="signup.wd"><b>회원가입</b></a></li>
            <!-- <li class="tnb_cart"><a href="http://dmshop.kr/shop/cart.php"><i class="fa fa-shopping-cart" aria-hidden="true"></i> 참고용 장바구니?</a></li> -->
            <li class="tnb_bookmark"><a href="home.jsp" ><i class="fas fa-home"></i> HOME<span class="st_bg"></span></a></li>
		</ul>
    </div>

      
    <div id="hd_wrapper">
        
        <div id="logo"><a href="home.jsp"><img src="images/logo.png" width="150px" height="100px" alt="WatchDogs"></a></div>
            
            
        <nav class="nav">
        <div id="gnb" >
            <h2>사이트 카테고리</h2>
            <ul id="gnb_1dul">
         
			<li class="gnb_1dli" style="z-index:999">
			    <a href="" class="gnb_1da gnb_1dam">소개</a>
			    <div class="gnb_2dul gnb_2dli" style="z-index:999"><div class="gnb_2dul_left"><strong class="gnb_2ul_tit">소개</strong>      
			  </div></div></li>
			  
			<li class="gnb_1dli" style="z-index:998">
			    <a href="adoptpage.wd" class="gnb_1da gnb_1dam">입양</a>
			    <div class="gnb_2dul gnb_2dli" style="z-index:998"><div class="gnb_2dul_left"><strong class="gnb_2ul_tit">입양</strong><ul>      
			            <li><a href="adoptproceeding.wd" class="gnb_2da">입양 진행 중</a></li>
			            <li><a href="adopt.wd" class="gnb_2da">입양 대기 중</a></li>
			            <li><a href="adoptcomplete.wd" class="gnb_2da">입양 완료</a></li>
			            <li><a href="adopttraining.wd" class="gnb_2da">훈련중</a></li>
			    </ul></div></div></li>
			    
			<li class="gnb_1dli" style="z-index:997">
			    <a href="trainerlist.wd" class="gnb_1da gnb_1dam">훈련사 소개</a>
			    <div class="gnb_2dul gnb_2dli" style="z-index:997"><div class="gnb_2dul_left"><strong class="gnb_2ul_tit">훈련사 소개</strong>        
			    </div></div></li>
			    
			<li class="gnb_1dli" style="z-index:996">
			    <a href="notice.wd" class="gnb_1da gnb_1dam">게시판</a>
			    <div class="gnb_2dul gnb_2dli" style="z-index:996"><div class="gnb_2dul_left"><strong class="gnb_2ul_tit">게시판</strong><ul>        
			            <li><a href="noticelist.wd" class="gnb_2da">공지</a></li>
			            <li><a href="reviewlist.wd" class="gnb_2da">후기</a></li>
			    </ul></div></div></li>
			<li class="gnb_1dli" style="z-index:995">
			    <a href="longintypecheck.wd" class="gnb_1da gnb_1dam">마이 페이지</a>
			    <div class="gnb_2dul gnb_2dli" style="z-index:995"><div class="gnb_2dul_left"><strong class="gnb_2ul_tit">마이 페이지</strong>      
			</div></div></li>

            </ul>
        </div>

    	</nav>
            
    </div>
        
	
        	

    </div>
    
	
	
	<style>
		#must_read{background-color: #fc6; border-color: #ebccd1; text-align: center }
		#must_read h3{color: #a94442; font-weight: 400; padding: 20px 0; }
		
		.top_banner{width:1050px; margin:0 auto; margin-top:50px}
		.top_banner td{}
	</style>
	
	<section id="must_read">
	    <h3> </h3>
	</section>
	
	
<script type="text/javascript" src="/js/jquery.touchSlider.js"></script>
<script type="text/javascript">
//<![CDATA[
$(document).ready(function() {
	$("#mb_slide").touchSlider({
		view : 1,
		autoplay : {
			enable : true,
			pauseHover : true,
			interval : 8000,
		},
		btn_prev : $("#mb_slide").next().find(".btn_prev"),
		btn_next : $("#mb_slide").next().find(".btn_next"),
	});
});
//]]>
</script>

    <script>
    $(window).scroll(function(){
      var sticky = $('.nav'),
          scroll = $(window).scrollTop();

      if (scroll >= 200) sticky.addClass('fixed');
      else sticky.removeClass('fixed');
    });

    $(function (){
        var $category = $("#category");

        $("#menu_open").on("click", function() {
            $category.css("display","block");
        });

        $("#category .close_btn").on("click", function(){
            $category.css("display","none");
        });
    });
    </script>
</div>


	<!-- 중간 내용 시작 -->
<div id="wrapper">


	<div id="container">
   		<br>
	<h3>강아지 정보</h3>
		<form action="dogUpdate.wd" method="post" enctype="multipart/form-data">
			<input type="hidden" name="dogId" value="${detail.dogId }">
				<img alt="Image" src="dog/${detail.dogFilePath }" width="400"><br>
				아이디<input type="text" name="dogId" readonly="readonly" value="${detail.dogId }"><br>
				이름<input type="text" name="dogName" size="20" value="${detail.dogName}"><br>
				견종<input type="text" name="dogType" size="50" value="${detail.dogType}"><br>
				암수<input type="text" name="dogMF" size="50" value="${detail.dogMF}"><br>
				나이<input type="text" name="dogAge" size="50" value="${detail.dogAge}"><br>
				입양상태<input type="text" name="dogAdoptSt" size="50" value="${detail.dogAdoptSt}"><br>
				등록날짜<input type="text" name="dogDate" size="50" readonly="readonly" value="${detail.dogDate}"><br>
				입양날짜<input type="text" name="dogAdoptDate" size="50" readonly="readonly" value="${detail.dogAdoptDate}"><br>
				훈련내용<input type="text" name="dogTrainComm" size="50" value="${detail.dogTrainComm}"><br>
				등록관리자아이디<input type="text" name="adminID" size="50" readonly="readonly" value="${detail.adminID}"><br>
				훈련사아이디<input type="text" name="trainerID" size="50" value="${detail.trainerID}"><br>
				사진 첨부 : <input type="file" name="file"> <br>
				<input type="submit" value="수정">&nbsp;&nbsp;&nbsp;<a href="adminpage.wd">돌아가기</a>
				&nbsp;&nbsp;&nbsp;<a href="dogDelete.wd?dogId=${detail.dogId }">삭제</a>
				&nbsp;&nbsp;&nbsp;<a href="dogDeleteCancel.wd?dogId=${detail.dogId }">삭제취소</a>
		</form>

	</div>

</div>
    <!-- 중간 내용 끝 -->



<!-- 하단 시작 { -->
</div>


<style>
	#bottom_copy{background-color:#3d3e3e; width:100%; margin-top:100px;}
	#bottom_copy .w1200{width: 1200px; margin:0 auto; color:#EDEDED; padding: 10px 42px; box-sizing: border-box; font-size: 0.8em; background-color:#3d3e3e;}
</style>


<section id="bottom_copy">
	<div class="w1200">
	    <p>Copyright © WatchDogs. All Rights Reserved.</p>
	    010-1234-5678
	    서울특별시 서초구 서초동 1305 서산빌딩 더조은 6조
	</div>
</section>
	
    <script>
    $(function() {
        $("#top_btn").on("click", function() {
            $("html, body").animate({scrollTop:0}, '500');
            return false;
        });
    });
    </script>


<script src="http://dmshop.kr/js/sns.js"></script>
<!— } 하단 끝 —>

</body>
</html>

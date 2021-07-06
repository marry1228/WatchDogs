<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!-- 	ID, 유저 타입을 웹 내에서 계속 돌려 줌 -->
    <%
    	String userid = (String)session.getAttribute("userid");
    	String usertype = (String)session.getAttribute("usertype");
    %>
    
<!doctype html>
<html lang="ko">

	<head>
		<meta charset="UTF-8">
		
		<title>WatchDogs</title>
		<link rel="stylesheet" href="style.css">
		<link rel="stylesheet" href="http://dmshop.kr/theme/moon/css/default_shop.css?ver=12928">
		<link rel="stylesheet" href="http://dmshop.kr/theme/moon/skin/shop/basic/style.css?ver=12928">
	</head>
	
<body>
	
	<!-- 상단 시작 { -->
	<div id="hd">
	
		<!-- HOME, 로그인, 회원가입 -->
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
	            <li class="tnb_bookmark"><a href="home.jsp" >HOME<span class="st_bg"></span></a></li>
			</ul>
	    </div>
	      
	   <!-- 홈 로고 및 각종 탭 -->
	    <div id="hd_wrapper">
	        
	        <div id="logo"><a href="home.jsp"><img src="images/logo.png" width="150px" height="100px" alt="WatchDogs"></a></div>
	           
	        <nav class="nav">
	        <div id="gnb" >
	            <ul id="gnb_1dul">
	         
				<li class="gnb_1dli" style="z-index:999">
				    <a href="introduction.wd" class="gnb_1da gnb_1dam">소개</a>
				    <div class="gnb_2dul gnb_2dli" style="z-index:999">
					</div>
				</li>
				
				<li class="gnb_1dli" style="z-index:998">
				    <a href="adoptpage.wd" class="gnb_1da gnb_1dam">입양</a>
				    <div class="gnb_2dul gnb_2dli" style="z-index:998">
					    <div class="gnb_2dul_left"><strong class="gnb_2ul_tit">입양</strong>
					    <ul>      
					            <li><a href="adoptproceeding.wd" class="gnb_2da">입양 진행 중</a></li>
					            <li><a href="adopt.wd" class="gnb_2da">입양 대기 중</a></li>
					            <li><a href="adoptcomplete.wd" class="gnb_2da">입양 완료</a></li>
					            <li><a href="adopttraining.wd" class="gnb_2da">훈련중</a></li>
					    </ul>
					    </div>
				    </div>
				</li>
				    
				<li class="gnb_1dli" style="z-index:997">
				    <a href="trainerlist.wd" class="gnb_1da gnb_1dam">훈련사 소개</a>
				    <div class="gnb_2dul gnb_2dli" style="z-index:997">
					    <div class="gnb_2dul_left"><strong class="gnb_2ul_tit">훈련사 소개</strong>        
					    </div>
				    </div>
				</li>
				    
				<li class="gnb_1dli" style="z-index:996">
				    <a href="notice.wd" class="gnb_1da gnb_1dam">게시판</a>
				    <div class="gnb_2dul gnb_2dli" style="z-index:996">
					    <div class="gnb_2dul_left"><strong class="gnb_2ul_tit">게시판</strong>
					    <ul>        
					            <li><a href="noticelist.wd" class="gnb_2da">공지</a></li>
					            <li><a href="reviewlist.wd" class="gnb_2da">후기</a></li>
						</ul>
						</div>
					</div>
					</li>
					
				<li class="gnb_1dli" style="z-index:995">
				    <a href="longintypecheck.wd" class="gnb_1da gnb_1dam">마이 페이지</a>
				    <div class="gnb_2dul gnb_2dli" style="z-index:995">
				    	<div class="gnb_2dul_left"><strong class="gnb_2ul_tit">마이 페이지</strong>      
						</div>
					</div>
				</li>
	
	            </ul>
	        </div>
	    	</nav>
	            
	    </div>
	
	</div>	
	    
	<!-- 공지 사항 -->
	<style>
		#must_read{background-color: #fc6; border-color: #ebccd1; text-align: center }
		#must_read h3{color: #a94442; font-weight: 400; padding: 20px 0; }
			
		.top_banner{width:1050px; margin:0 auto; margin-top:50px}
		.top_banner td{}
	</style>
		
	<section id="must_read">
		<h3></h3>
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
<style>
td {
	font-size: medium;
	line-height: 200%
	
}
table {
	width: 600px;
	border-bottom: 2px solid gray;
	
}

h3 {
	font-size: x-large;
}

img {
	padding-top: 5px;
	padding-left: 10px;
	padding-bottom: 5px;
}
</style>

	<!-- 중간 내용 시작 -->
<div id="wrapper" align="center">

	<div class="container">
	
		<div class="contents3">
			<br>
	   		<img src="images/dogicon.png" width="50px" height="50px" alt="dog_icon" ><br>
	   		자랑스러운 <font color="#ffad06">트레이너</font> 분들을 소개합니다.
	   	</div>
	
		<div class="marginTopContainer">
		<c:forEach items="${list}" var="dto">
			<table class="trainerTable" border="0px">
				<tr>
					<td><img width="200" height="200" alt="Image" src="trainer/${dto.trFilePath}"></td>
					<td>이름 : ${dto.trName}<br>이메일 : ${dto.trEmail}<br>경력 : ${dto.trCareer}</td>
				</tr>
			</table>
		</c:forEach>
		</div>

	</div>
</div>


<!-- 하단 시작 { -->
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

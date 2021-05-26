<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<%

    int pageNum;     // 현재 클릭한 페이지 
    int pageCount ; // 총 페이지 수
    int startPage ;    // 시작페이지
    int endPage ;     //끝페이지
     // 게시물 총 갯수가 동일할 때를 위함 
    int count = (int)session.getAttribute("count");
    
     startPage = (int)session.getAttribute("startPage");
     pageCount = (int)session.getAttribute("pageCount");
     endPage = (int)session.getAttribute("endPage");
  
%>

<html>
<head>
<meta charset="UTF-8">
<title>훈련 카테고리</title>
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
            <li><a href="login.wd"><b>로그인</b></a></li>
            <li><a href="signup.wd"><b>회원가입</b></a></li> 
            <!-- <li class="tnb_cart"><a href="http://dmshop.kr/shop/cart.php"><i class="fa fa-shopping-cart" aria-hidden="true"></i> 참고용 장바구니?</a></li> -->
            <li class="tnb_bookmark"><a href="home.wd" ><i class="fas fa-home"></i> HOME<span class="st_bg"></span></li>
		</ul>
    </div>

      
    <div id="hd_wrapper">
        
        <div id="logo"><a href="home.wd"><img src="images/logo.png" width="150px" height="100px" alt="WatchDogs"></a></div>    
            
        <nav class="nav">
        <div id="gnb" >
            <h2>사이트 카테고리</h2>
            <ul id="gnb_1dul">
         
			<li class="gnb_1dli" style="z-index:999">
			    <a href="" class="gnb_1da gnb_1dam">소개</a>
			    <div class="gnb_2dul gnb_2dli" style="z-index:999"><div class="gnb_2dul_left"><strong class="gnb_2ul_tit">소개</strong><ul>       
			            <li><a href="" class="gnb_2da">목록1</a></li>
			            <li><a href="" class="gnb_2da">목록2</a></li>
			            <li><a href="" class="gnb_2da">목록3</a></li>
			
			    </ul></div></div></li>
			<li class="gnb_1dli" style="z-index:998">
			    <a href="adoptpage.wd" class="gnb_1da gnb_1dam">입양</a>
			    <div class="gnb_2dul gnb_2dli" style="z-index:998"><div class="gnb_2dul_left"><strong class="gnb_2ul_tit">입양</strong><ul>      
			            <li><a href="adoptproceeding.wd" class="gnb_2da">입양 진행 중</a></li>
			            <li><a href="adopt.wd" class="gnb_2da">입양 대기 중</a></li>
			            <li><a href="adoptcomplete.wd" class="gnb_2da">입양 완료</a></li>
			    </ul></div></div></li>
			<li class="gnb_1dli" style="z-index:997">
			    <a href="trainerlist.wd" class="gnb_1da gnb_1dam">훈련사 소개</a>
			    <div class="gnb_2dul gnb_2dli" style="z-index:997"><div class="gnb_2dul_left"><strong class="gnb_2ul_tit">훈련사 소개</strong><ul>        
			            <li><a href="" class="gnb_2da">목록1</a></li>
			            <li><a href="" class="gnb_2da">목록2</a></li>
			            <li><a href="" class="gnb_2da">목록3</a></li>
			    </ul></div></div></li>
			<li class="gnb_1dli" style="z-index:996">
			    <a href="notice.wd" class="gnb_1da gnb_1dam">게시판</a>
			    <div class="gnb_2dul gnb_2dli" style="z-index:996"><div class="gnb_2dul_left"><strong class="gnb_2ul_tit">게시판</strong><ul>        
			            <li><a href="noticelist.wd" class="gnb_2da">공지</a></li>
			            <li><a href="reviewlist.wd" class="gnb_2da">후기</a></li>
			    </ul></div></div></li>
			<li class="gnb_1dli" style="z-index:995">
			    <a href="admin.wd" class="gnb_1da gnb_1dam">마이 페이지 (임시 어드민)</a>
			    <div class="gnb_2dul gnb_2dli" style="z-index:995"><div class="gnb_2dul_left"><strong class="gnb_2ul_tit">마이 페이지</strong><ul>        
			            <li><a href="" class="gnb_2da">목록1</a></li>
			            <li><a href="" class="gnb_2da">목록2</a></li>
			            <li><a href="" class="gnb_2da">목록3</a></li>
			    </ul></div></div></li>

            </ul>
        </div>

    	</nav>
            
    </div>
        
	
        	

    </div>
    
	
	
	<style>
		#must_read{background-color: #FFB900; border-color: #ebccd1; text-align: center }
		#must_read h3{color: #a94442; font-weight: 400; padding: 10px 0; }
		
		.top_banner{width:1050px; margin:0 auto; margin-top:50px}
		.top_banner td{}
	</style>
	
	<section id="must_read">
	    <h3>※ 강조할 <strong>알림</strong>, 또는 <strong>공지사항</strong> 이 있을 경우 사용할 공간.</h3>

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
<h1>입양 훈련 중 카테고리</h1> 

   		<br>
 <nav> 
    <ul> 
       <th><a href="adoptproceeding.wd" style="color: black">입양 진행</th>&nbsp;&nbsp;&nbsp;
      <th><a href="adopt.wd" style="color: black">입양 가능</a></th> &nbsp;&nbsp;&nbsp;
      <th><a href="adoptcomplete.wd" style="color: black">입양 완료</a></th>&nbsp;&nbsp;&nbsp;
      <th><a href="adopttraining.wd" style="color: black">훈련 중</a></th>&nbsp;&nbsp;&nbsp;
    </ul>
   </nav>
  
 
 <form action="adopttrainingSearch.wd">
    <br>
    <br>
         <select name = "searchtype">
            <option value = "dogmf">성별</option>
            <option value = "dogtype" selected = "dogtype">견종</option>
         </select>  
         
         <input type="search" name = "search">
         <input type="submit" value = "검색">
         
         
          <input type = "hidden" name = "dogadoptst" value="훈련중">
         
         <br>
    <br>
    <br>
    </form>    
        <table border="1" border="1" style="text-align: center;">
        <tr>
        <th>이름</th>
        <th>성별</th>
        <th>나이</th>
        <th>견종</th>
        <th>등록 날짜</th>
        <th>상태</th>
        </tr>
        <c:forEach items="${adopt}" var="dto">
        <tr>
         <td><a href="adopttraining_02.wd?dogid=${dto.dogid}">${dto.dogname}</a></td>        
           <td>${dto.dogmf} </td>
         <td>${dto.dogage} </td>
         <td>${dto.dogtype} </td>
         <td>${dto.dogdate} </td>
         <td>${dto.dogadopttst} </td>
          <td><img width="300" height="200" src="dog/${dto.dogfilepath}"></td>
         </tr>
         </c:forEach>
        
         </table>
    
  <%for(int i = startPage; i<=endPage; i++){ %>
	      
	      <td><a href="adopt.wd?pageNum=<%=i%>">[<%=i%>]</a></td>   
	       
	           	           
	        <% } %>

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

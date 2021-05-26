<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 작성</title>
<link rel="stylesheet" href="http://dmshop.kr/theme/moon/css/default_shop.css?ver=12928">
<link rel="stylesheet" href="http://dmshop.kr/theme/moon/skin/shop/basic/style.css?ver=12928">
<script type="text/javascript">
	function check(){
		var form = document.writeForm
		if(form.retitle.value == ""){
			alert("제목을 입력하세요");
			form.retitle.focus();
			return false;
		}
	
		if(form.recontent.value == ""){
			alert("내용을 입력하세요");
			form.recontent.focus();
			return false;
		}
		form.submit();
	}
</script>

<style>
	table{
		backgound-color:#eeeeee;
		text-align: center;
		margin:0 auto;
		border-collapse: collapse;
	}
	 th, td {
		text-align: center;
		padding:5px;
	}
	a { 
		text-decoration:none
	 } 
	input:focus{
		background-color:#FFCD28;
	}
	#topline{
		width: 700px; 
		height: 50px; 
		background-color: #8FBC8F; 
		margin:0 auto; 
		border-top:2px solid green;
	}
</style>
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
<!--         <div id="hd_sch">
            <h3>쇼핑몰 검색</h3>
            <form name="frmsearch1" action="http://dmshop.kr/shop/search.php" onsubmit="return search_submit(this);">
            <label for="sch_str" class="sound_only">검색어<strong class="sound_only"> 필수</strong></label>
            <input type="text" placeholder="찾으시는 상품을 검색해주세요!" name="q" value="" id="sch_str" required>
            <button type="submit"  id="sch_submit"><i class="fa fa-search" aria-hidden="true"></i><span class="sound_only">검색</span></button>
            </form>
            
            <script>
            function search_submit(f) {
                if (f.q.value.length < 2) {
                    alert("검색어는 두글자 이상 입력하십시오.");
                    f.q.select();
                    f.q.focus();
                    return false;
                }

                return true;
            }
            </script> -->
            
            
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

<%//임시 id 
String userid = "userhehe"; 
session.setAttribute("userid", userid);

%>

<!-- 줄 ---------------------------------------->	
	<div id="topline"></div>
<!-- 테이블시작 ---------------------------------------->
<%--  			<input type="hidden" name="userid" value="${userid}">
 --%> 
	 <table border="1" width="700">
		<form name="writeForm"  action="review_write.wd" method="post" enctype="multipart/form-data">
			<thead>
				<tr>
					<th colspan="4" style="background-color: #FFCD28; text-align: center; font-size:18px;">후기글 작성</th>
				</tr>
			</thead>		
			<tbody>
					<tr>
						<td>제목</td>
						<td colspan="3"><input type="text"  name="retitle" size="80" placeholder="제목을 입력해주세요" ></td>
					</tr>
		
					<tr> 
						<td>내용</td>
						<td colspan="3"><textarea rows="10" cols="80" name="recontent" placeholder="내용을 입력해주세요"></textarea></td>
					</tr>
					
					<tr>
						<td>파일 첨부</td>
						<td colspan="3"><input type="file" name="file"> 
		 			</tr>
		 			
					<tr>
				
						<td colspan="4" style="text-align: right;"><a href = "reviewlist.wd">목록으로</a></td>
					</tr>	
					<tr>
						<td colspan="4"><input type="button" style="background:#FFCD28; font-size:15px;"  
								value="입력" onclick="check()">
								<input type="reset"  value="다시입력">
								
					</tr>
					
					<!-- 입력이 안됐을때 첫 화면으로 돌아가게 하기 위해서 하이퍼 링크 달아주기 -->
				</tbody>
		</form>
	</table>
	</div>

</div>
    <!-- 중간 내용 끝 -->



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
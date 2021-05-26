<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- JSTL 사용시 필용한 import --> 
  
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>MyPage(admin)</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#tabs" ).tabs();
  } );
  </script>
</head>
<body>
 <p><a href="home.wd">홈으로</a></p>
<div id="tabs">
  <ul>
    <li><a href="#tabs-1">훈련사</a></li>
    <li><a href="#tabs-2">강아지</a></li>
    <li><a href="#tabs-3">공지</a></li>
    <li><a href="#tabs-4">후기</a></li>
    <li><a href="#tabs-5">회원</a></li>
  </ul>
  <div id="tabs-1">
    <h3>훈련사</h3>
	<p><a href="trainerInsertOpen.wd">훈련사 등록</a></p>
	<table border="1">
		<tr>
			<th>사진</th>
			<th>아이디</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>이름</th>
			<th>등록날짜</th>
			<th>삭제날짜</th>
			<th>경력</th>
			<th>등록관리자아이디</th>
		</tr>
		<c:forEach items="${listTrainer}" var="dto">
		<tr>
			<td><img width="100" alt="Image" src="trainer/${dto.trFilePath}"></td>
			<td>${dto.trId}</td>
			<td>${dto.trEmail}</td>
			<td>${dto.trTel}</td>
			<td><a href = "trainerUpdateOpen.wd?trId=${dto.trId }">${dto.trName}</a></td>
			<td>${dto.trDate}</td>
			<td>${dto.trDelDate}</td>
			<td>${dto.trCareer}</td>
			<td>${dto.adminID}</td>
		</tr>
		</c:forEach>
	</table>
			
  </div>
  <div id="tabs-2">
    <h3>강아지</h3>
	<p><a href="dogInsertOpen.wd">강아지 등록</a></p>
	<table border="1">
		<tr>
			<th>사진</th>
			<th>번호</th>
			<th>이름</th>
			<th>견종</th>
			<th>암수</th>
			<th>나이</th>
			<th>입양상태</th>
			<th>등록날짜</th>
			<th>입양날짜</th>
			<th>훈련내용</th>
			<th>등록관리자아이디</th>
			<th>훈련사아이디</th>
		</tr>
		<c:forEach items="${listDog}" var="dto">
		<tr>
			<td><img width="100" alt="Image" src="dog/${dto.dogFilePath}"></td>
			<td>${dto.dogId}</td>
			<td><a href = "dogUpdateOpen.wd?dogId=${dto.dogId }">${dto.dogName}</a></td>
			<td>${dto.dogType}</td>
			<td>${dto.dogMF}</td>
			<td>${dto.dogAge}</td>
			<td>${dto.dogAdoptSt}</td>
			<td>${dto.dogDate}</td>
			<td>${dto.dogAdoptDate}</td>
			<td>${dto.dogTrainComm}</td>
			<td>${dto.adminID}</td>
			<td>${dto.trainerID}</td>
		</tr>
		</c:forEach>
	</table>
			
  </div>
  <div id="tabs-3">
    <h3>공지</h3>
	<p><a href="noticeInsertOpen.wd">공지 등록</a></p>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성날짜</th>
			<th>삭제날짜</th>
			<th>조회수</th>
			<th>관리자아이디</th>
		</tr>
		<c:forEach items="${listNotice}" var="dto">
		<tr>
			<td>${dto.noId}</td>
			<td><a href = "noticeUpdateOpen.wd?noId=${dto.noId }">${dto.noTitle}</a></td>
			<td>${dto.noDate}</td>
			<td>${dto.noDelDate}</td>
			<td>${dto.noHit}</td>
			<td>${dto.adminID}</td>
		</tr>
		</c:forEach>
	</table>
		
  </div>
  <div id="tabs-4">
    <h3>후기</h3>
	<p>&nbsp;</p>
	<table border="1">
		<tr>
			<th>사진</th>
			<th>번호</th>
			<th>제목</th>
			<th>작성날짜</th>
			<th>삭제날짜</th>
			<th>조회수</th>
			<th>작성자아이디</th>
		</tr>
		<c:forEach items="${listReview}" var="dto">
		<tr>
			<td><img width="100" alt="Image" src="review/${dto.reFilePath}"></td>
			<td>${dto.reId}</td>
			<td><a href = "reviewUpdateOpen.wd?reId=${dto.reId }">${dto.reTitle}</a></td>
			<td>${dto.reDate}</td>
			<td>${dto.reDelDate}</td>
			<td>${dto.reHit}</td>
			<td>${dto.userID}</td>
		</tr>
		</c:forEach>
	</table>
		
  </div>
  <div id="tabs-5">
    <h3>회원</h3>
	<p>&nbsp;</p>
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>전화번호</th>
			<th>이메일</th>
			<th>이름</th>
			<th>등록날짜</th>
			<th>탈퇴날짜</th>
		</tr>
		<c:forEach items="${listUser}" var="dto">
		<tr>
			<td>${dto.userId}</td>
			<td>${dto.userTel}</td>
			<td>${dto.userEmail}</td>
			<td><a href = "userUpdateOpen.wd?userId=${dto.userId }">${dto.userName}</a></td>
			<td>${dto.userDate}</td>
			<td>${dto.userDelDate}</td>
		</tr>
		</c:forEach>
	</table>
			
  </div> 
</div>
 
 
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WatchDogs</title>
</head>
<body>
	<a href="home.wd">홈으로</a>
	<!-- // jy수정5/24start -->
	<h3>훈련사 소개</h3>
	
	<c:forEach items="${list}" var="dto">
		<table border="0">
			<tr>
				<td><img width="200" alt="Image" src="trainer/${dto.trFilePath}"></td>
				<td>이름 : ${dto.trName}<br>이메일 : ${dto.trEmail}<br>경력 : ${dto.trCareer}</td>
			</tr>
		</table>
	</c:forEach>
	<!-- // jy수정5/24end -->
	
</body>
</html>
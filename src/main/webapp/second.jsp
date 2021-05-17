<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- JSTL 사용시 필용한 import --> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>아이디</th>
		</tr>
		<c:forEach items="${list}" var="dto">
		<tr>
			<td>${dto.bId}</td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan="4"><a href="home.WDogs">두번 째 화면</a></td>
		</tr>
			
	</table>
</body>
</html>
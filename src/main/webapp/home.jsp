<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>
</head>
<body>
<%

	session.setAttribute("ID", ""); // 홈페이지 기본 ID를 비워 둠.

%>

	<h3>메인 페이지 입니다!</h3>
		<a href="list.wd">첫 화면!</a>
		<br>
		<a href="login.wd">로그인 화면!</a>
</body>
</html>
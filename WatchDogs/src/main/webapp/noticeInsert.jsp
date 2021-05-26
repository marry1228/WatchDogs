<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 등록</title>
</head>
<body>
	<h3>공지 등록</h3>
	<form action="noticeInsert.wd" method="post">
			제목<input type="text" name="noTitle" size="20"><br>
			내용<textarea rows="5" cols="30" name="noContent"></textarea><br>
			관리자아이디<input type="text" name="adminID" size="50" value="admin3" readonly="readonly"><br>
			<input type="submit" value="확인">&nbsp;&nbsp;&nbsp;<a href="adminpage.wd">돌아가기</a>
	</form>
	
</body>
</html>
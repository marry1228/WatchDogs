<%@page import="com.watchdogs.dto.DtoUser"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
</head>
<body>
	<h3>회원 정보</h3>
		<form action="userUpdate.wd" method="post">
			<input type="hidden" name="userId" value="${detail.userId }">
				아이디<input type="text" name="userId" readonly="readonly" value="${detail.userId }"><br>
				비밀번호<input type="text" name="userPw" size="20" readonly="readonly" value="${detail.userPw}"><br>
				전화번호<input type="text" name="userEmail" size="50" readonly="readonly" value="${detail.userEmail}"><br>
				이메일<input type="text" name="userTel" size="50" readonly="readonly" value="${detail.userTel}"><br>
				이름<input type="text" name="userName" size="50" readonly="readonly" value="${detail.userName}"><br>
				등록날짜<input type="text" name="userDate" size="50" readonly="readonly" value="${detail.userDate}"><br>
				삭제날짜<input type="text" name="userDelDate" size="50" readonly="readonly" value="${detail.userDelDate}"><br>
				<!-- <input type="submit" value="수정"> -->&nbsp;&nbsp;&nbsp;<a href="adminpage.wd">돌아가기</a>
				&nbsp;&nbsp;&nbsp;<a href="userDelete.wd?userId=${detail.userId }">삭제</a>
				&nbsp;&nbsp;&nbsp;<a href="userDeleteCancel.wd?userId=${detail.userId }">삭제취소</a>
		</form>
</body>
</html>
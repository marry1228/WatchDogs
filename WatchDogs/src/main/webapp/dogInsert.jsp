<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강아지 등록</title>
</head>
<body>
	<h3>강아지 등록</h3>
	<form action="dogInsert.wd" method="post" enctype="multipart/form-data">
		이름<input type="text" name="dogName" size="20"><br>
		견종<input type="text" name="dogType" size="20"><br>
		암수<input type="text" name="dogMF" size="20"><br>
		나이<input type="text" name="dogAge" size="20"><br>
		등록관리자아이디<input type="text" name="adminID" size="50" value="admin3" readonly="readonly"><br>
		훈련사아이디<input type="text" name="trainerID" size="50"><br>
		사진 첨부 : <input type="file" name="file"> <br>
		<input type="submit" value="확인">&nbsp;&nbsp;&nbsp;<a href="adminpage.wd">돌아가기</a>
	</form>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>훈련사 등록</title>
</head>
<body>
	<h3>훈련사 등록</h3>
	<form action="trainerInsert.wd" method="post" enctype="multipart/form-data">
		아이디<input type="text" name="trId"><br>
		비밀번호<input type="text" name="trPw"><br>
		이메일<input type="text" name="trEmail" size="20"><br>
		전화번호<input type="text" name="trTel" size="50"><br>
		이름<input type="text" name="trName" size="50"><br>
		경력<br><textarea rows="5" cols="30" name="trCareer"></textarea><br>
		등록관리자아이디<input type="text" name="adminID" size="50" value="admin3" readonly="readonly"><br>
		사진 첨부 : <input type="file" name="file"> <br>
		<input type="submit" value="확인">&nbsp;&nbsp;&nbsp;<a href="adminpage.wd">돌아가기</a>
	</form>

</body>
</html>
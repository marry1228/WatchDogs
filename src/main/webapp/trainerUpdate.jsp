<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>훈련사 정보</title>
</head>
<body>
	<h3>훈련사 정보</h3>
		<form action="trainerUpdate.wd" method="post" enctype="multipart/form-data">
			<input type="hidden" name="trId" value="${detail.trId }"> 
				<img alt="Image" src="trainer/${detail.trFilePath }" width="400"><br>
				아이디<input type="text" name="trId" readonly="readonly" value="${detail.trId }"><br>
				비밀번호<input type="text" name="trPw" value="${detail.trPw }"><br>
				이메일<input type="text" name="trEmail" size="20" value="${detail.trEmail}"><br>
				전화번호<input type="text" name="trTel" size="50" value="${detail.trTel}"><br>
				이름<input type="text" name="trName" size="50" value="${detail.trName}"><br>
				경력<br>
				<textarea rows="5" cols="30" name="trCareer">${detail.trCareer}</textarea><br>
				등록날짜<input type="text" name="trDate" size="50" readonly="readonly" value="${detail.trDate}"><br>
				삭제날짜<input type="text" name="trDelDate" size="50" readonly="readonly" value="${detail.trDelDate}"><br>
				등록관리자아이디<input type="text" name="adminID" size="50" readonly="readonly" value="${detail.adminID}"><br>
				사진 첨부 : <input type="file" name="file"> <br>
				<input type="submit" value="수정">&nbsp;&nbsp;&nbsp;<a href="adminpage.wd">돌아가기</a>
				&nbsp;&nbsp;&nbsp;<a href="trainerDelete.wd?trId=${detail.trId }">삭제</a>
				&nbsp;&nbsp;&nbsp;<a href="trainerDeleteCancel.wd?trId=${detail.trId }">삭제취소</a>
		</form>
	
</body>
</html>
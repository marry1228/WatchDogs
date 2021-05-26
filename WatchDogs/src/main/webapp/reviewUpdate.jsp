<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 정보</title>
</head>
<body>
	<h3>후기 정보</h3>
		<form action="reviewUpdate.wd" method="post">
			<img alt="Image" src="review/${detail.reFilePath }" width="400"><br>
			번호<input type="text" name="reId" readonly="readonly" value="${detail.reId }"><br>
			제목<input type="text" name="reTitle" size="20" readonly="readonly" value="${detail.reTitle}"><br>
			내용<br>
			<textarea rows="5" cols="30" name="reContent" readonly="readonly">${detail.reContent}</textarea><br>
			작성날짜<input type="text" name="reDate" size="50" readonly="readonly" value="${detail.reDate}"><br>
			삭제날짜<input type="text" name="reDelDate" size="50" readonly="readonly" value="${detail.reDelDate}"><br>
			조회수<input type="text" name="reHit" size="50" readonly="readonly" value="${detail.reHit}"><br>
			<!-- <input type="submit" value="수정"> -->&nbsp;&nbsp;&nbsp;<a href="adminpage.wd">돌아가기</a>
			&nbsp;&nbsp;&nbsp;<a href="reviewDeleteInAdmin.wd?reId=${detail.reId }">삭제</a>
			&nbsp;&nbsp;&nbsp;<a href="reviewDeleteCancelInAdmin.wd?reId=${detail.reId }">삭제취소</a>
		</form>
</body>
</html>
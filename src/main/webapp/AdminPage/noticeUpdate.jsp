<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 정보</title>
</head>
<body>
	<h3>공지 정보</h3>
		<form action="noticeUpdate.wd" method="post">
			번호<input type="text" name="noId" readonly="readonly" value="${detail.noId }"><br>
			제목<input type="text" name="noTitle" size="20" value="${detail.noTitle}"><br>
			내용<br>
			<textarea rows="5" cols="30" name="noContent">${detail.noContent}</textarea><br>
			작성날짜<input type="text" name="noDate" size="50" readonly="readonly" value="${detail.noDate}"><br>
			삭제날짜<input type="text" name="noDelDate" size="50" readonly="readonly" value="${detail.noDelDate}"><br>
			조회수<input type="text" name="noHit" readonly="readonly" value="${detail.noHit }"><br>
			관리자아이디<input type="text" name="adminID" size="50" readonly="readonly" value="${detail.adminID}"><br>
			<input type="submit" value="수정">&nbsp;&nbsp;&nbsp;<a href="adminpage.wd">돌아가기</a>
			&nbsp;&nbsp;&nbsp;<a href="noticeDelete.wd?noId=${detail.noId }">삭제</a>
			&nbsp;&nbsp;&nbsp;<a href="noticeDeleteCancel.wd?noId=${detail.noId }">삭제취소</a>
		</form>

</body>
</html>
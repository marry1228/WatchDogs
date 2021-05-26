<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강아지 정보</title>
</head>
<body>
	<h3>강아지 정보</h3>
		<form action="dogUpdate.wd" method="post" enctype="multipart/form-data">
			<input type="hidden" name="dogId" value="${detail.dogId }">
				<img alt="Image" src="dog/${detail.dogFilePath }" width="400"><br>
				아이디<input type="text" name="dogId" readonly="readonly" value="${detail.dogId }"><br>
				이름<input type="text" name="dogName" size="20" value="${detail.dogName}"><br>
				견종<input type="text" name="dogType" size="50" value="${detail.dogType}"><br>
				암수<input type="text" name="dogMF" size="50" value="${detail.dogMF}"><br>
				나이<input type="text" name="dogAge" size="50" value="${detail.dogAge}"><br>
				입양상태<input type="text" name="dogAdoptSt" size="50" value="${detail.dogAdoptSt}"><br>
				등록날짜<input type="text" name="dogDate" size="50" readonly="readonly" value="${detail.dogDate}"><br>
				입양날짜<input type="text" name="dogAdoptDate" size="50" readonly="readonly" value="${detail.dogAdoptDate}"><br>
				훈련내용<input type="text" name="dogTrainComm" size="50" value="${detail.dogTrainComm}"><br>
				등록관리자아이디<input type="text" name="adminID" size="50" readonly="readonly" value="${detail.adminID}"><br>
				훈련사아이디<input type="text" name="trainerID" size="50" value="${detail.trainerID}"><br>
				사진 첨부 : <input type="file" name="file"> <br>
				<input type="submit" value="수정">&nbsp;&nbsp;&nbsp;<a href="adminpage.wd">돌아가기</a>
				&nbsp;&nbsp;&nbsp;<a href="dogDelete.wd?dogId=${detail.dogId }">삭제</a>
				&nbsp;&nbsp;&nbsp;<a href="dogDeleteCancel.wd?dogId=${detail.dogId }">삭제취소</a>
		</form>

</body>
</html>
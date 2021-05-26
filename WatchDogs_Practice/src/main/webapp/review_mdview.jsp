<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
  
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>후기 수정 페이지</title>
<style type="text/css">
th, td{
	text-align: center;
}

table{
	border="0";
	backgound-color:#eeeeee;
	text-align: center;
	margin:0 auto;
}	
a { text-decoration:none } 
</style>
</head>
<body>
<!-- 오렌지색 줄 ---------------------------------------->
	<div style="width: 700px; height: 50px; margin:0 auto; background-color: orange;"></div>
<!-- 테이블 시작 ---------------------------------------->
	 <table width="700"  style="background-color: #eeeeee;">
		 <form action="reviewmodify.wd" method="post" enctype="multipart/form-data" >
		 	<input type="hidden" name="reid" value="${reviewdetail.reid}">
				<thead>
					<tr>
						<th colspan="4" style="background-color: #FFEBCD; text-align: center;">후기 수정 페이지</th>
					</tr>
				</thead>
				<tbody>
				
					<tr>
						<td>No</td>
						<td><input type="text" name="reid" size="14" readonly="readonly" value="${reviewdetail.reid}"></td>
						<td>조회수</td>
						<td><input type="text" name="rehit" size="14" readonly="readonly" value="${reviewdetail.rehit}"></td>
					</tr> 
	
					<tr>
						<td>작성자</td>
						<td><input type="text" name="userid" size="14" readonly="readonly"  value="${reviewdetail.userid}"></td>
						<td>날짜</td>
						<td><input type="text" name="redate" size="14" readonly="readonly"  value="${reviewdetail.redate}"></td>
					</tr> 
						
					<tr>
						<td>제목</td>
						<td colspan="3" ><input type="text" name="retitle" size="74" value="${reviewdetail.retitle}"></td>
					</tr>
					
					<tr>
						<td>사진</td>
						<td colspan="3"><img class="imgClass" width="530" height="300" src="review/${reviewdetail.refilepath }"></td>
					</tr> 
					
					<tr>
					<td>이미지 수정</td>
					<td></td>
						<input type="hidden" name="beforeimg" value="${reviewdetail.refilepath }">
						<td colspan="2">	<input class="file" type="file" name="file"> </td>		
					</tr>	
					
					<tr>
						<td>내용</td>
						<td colspan="3"><textarea rows="10" cols="64" name="recontent" >${reviewdetail.recontent}</textarea>
					</tr>
					
					<tr>
						<td></td>
						<td colspan="3"><input type="submit" style="color:#F5DEB3; background:#FFA500; font-size:15px; border-radius:4px; " value="수정">
							<input type="button" class="button" style="color:#F5DEB3; background:#FFA500; font-size:15px; border-radius:4px;  onclick="location.href='reviewdelete.wd?reid=${reviewdetail.reid}'; btn();" value="삭제">
						</td>
					</tr>
						
					<!-- 입력이 안됐을때 첫 화면으로 돌아가게 하기 위해서 하이퍼 링크 달아주기 -->
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td><a href = "reviewlist.wd">목록으로</a></td>
					</tr>	
				</tbody>
			</form>
	</table> 

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
  
<!DOCTYPE html>
<html>
<script> 
function btn(){ alert("게시글이 삭제되었습니다"); } 

function modifycheck() { alert("수정하시겠습니까");}


</script>
<head>
<meta charset="UTF-8">
<title>후기 상세 페이지</title>
<style type="text/css">
th, td {
	text-align: center;
	}

</style>
</head>
<body>

<div style="width: 700px; height: 50px; margin:0 auto; background-color: orange;"></div>

	 <table width="700" cellspacing="0" cellpadding="5" border="0"  style="background-color: #eeeeee; text-align: center; margin:0 auto;">
	 <form action="reviewmodify.wd" method="post" >
	 	<input type="hidden" name="reid" value="${reviewdetail.reid}">
			<thead>
				<tr>
					<th colspan="2" style="background-color: #FFEBCD; text-align: center;">후기 상세 페이지</th>
				</tr>
			</thead>
			<tbody>
			<tr>
				<td>No.</td>
				<td><input type="text" name="reid" size="80" readonly="readonly" value="${reviewdetail.reid}"></td>
			
			</tr> 
			<tr>
				<td>작성자</td>
				<td><input type="text" name="userid" size="80" readonly="readonly" value="${reviewdetail.userid}"></td>
			
			</tr> 
			<tr>
				<td>조회수</td>
				<td><input type="text" name="rehit" size="80" readonly="readonly" value="${reviewdetail.rehit}"></td>
			
			</tr> 
				
			<tr>
				<td>제목</td>
				<td><input type="text" name="retitle" size="80" value="${reviewdetail.retitle}"></td>
			
			</tr>
			<tr>
				<td>날짜</td>
				<td><input type="text" name="redate" size="80" readonly="readonly"  value="${reviewdetail.redate}"></td>
			
			</tr>
			<tr>
				<td>사진</td>
				<td><img width="450" height="300" src="review/${reviewdetail.refilepath }"></td>
			
			</tr> 
			<tr>
			<td>이미지 수정</td>
				<td><input type="file" name="file"> </td>
			</tr>	
			<tr>
				<td>내용</td>
				<td><textarea rows="10" cols="80" name="recontent" >${reviewdetail.recontent}</textarea>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" style="color:#F5DEB3; background:#FFA500; font-size:1em; border-radius:4px;" onclick="modifycherck()" value="수정">
					<input type="button" class="button" style="color:#F5DEB3; background:#FFA500; font-size:1em; border-radius:4px;" onclick="location.href='reviewdelete.wd?reid=${reviewdetail.reid}'; btn();" value="삭제"></td>
			</tr>
				
			
			<!-- 입력이 안됐을때 첫 화면으로 돌아가게 하기 위해서 하이퍼 링크 달아주기 -->

			<tr>
				<td><a href = "reviewlist.wd">목록으로</a></td>
			</tr>	
			</tbody>
		</form>
	</table> 


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
  
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>후기 상세 페이지</title>
<style type="text/css">
th, td {
	text-align: center;
	}
table{
	border="0";
	backgound-color:#eeeeee;
	text-align: center;
	margin:0 auto;
}	
a { text-decoration:none } 
.button{
	color:#F5DEB3; 
	background:#FFA500; 
	font-size:1em; 
	border-radius:4px
}	
</style>
</head>
<body>
<%//임시 id 
String userid = "userhehe"; 
session.setAttribute("userid", userid);

%>
<!-- 오렌지색 줄 ---------------------------------------->
<div style="width: 700px; height: 50px; margin:0 auto; background-color: orange;"></div>
<!-- 테이블 시작---------------------------------------->
	 <table width="700"  style="background-color: #eeeeee;">
	 	<input type="hidden" name="reid" value="${reviewdetail.reid}">
			<thead>
				<tr>
					<th colspan="4" style="background-color: #FFEBCD; text-align: center;">후기 상세 페이지</th>
				</tr>
			</thead>
			<tbody>
			
			<tr>
				<td>No.</td>
				<td><input type="text" name="reid" size="17" readonly="readonly" value="${reviewdetail.reid}"></td>
				<td>조회수</td>
				<td><input type="text" name="rehit" size="17" readonly="readonly" value="${reviewdetail.rehit}"></td>
			</tr> 
			
			<tr>
				<td>작성자</td>
				<td><input type="text" name="userid" size="17" readonly="readonly" value="${reviewdetail.userid}"></td>
				<td>날짜</td>
				<td><input type="text" name="redate" size="17" readonly="readonly"  value="${reviewdetail.redate}"></td>
			</tr> 
				
			<tr>
				<td>제목</td>
				<td colspan="3"><input type="text" name="retitle" size="70" readonly="readonly" value="${reviewdetail.retitle}"></td>
			</tr>
			
			<tr>
				<td>사진</td>
				<td colspan="3"><img width="500" height="300" src="review/${reviewdetail.refilepath }"></td>
			</tr> 

			<tr>
				<td>내용</td>
				<td colspan="3"><textarea rows="10" cols="60" name="recontent" readonly="readonly" >${reviewdetail.recontent}</textarea>
			</tr>
			<!-- 아이디 값에 따라 버튼 보이게 안보이게 설정하기------------->
 			<tr>
					<td></td>
					<td colspan="3">
					 	<c:if test="${reviewdetail.userid eq userid}">
 	 					<input type="button" id="modify_delete" onclick="location.href='review_mdview.wd?reid=${reviewdetail.reid}';" value="수정/삭제">
 					</c:if>
					</td>
			</tr>	
				

			<!-- 입력이 안됐을때 첫 화면으로 돌아가게 하기 위해서 하이퍼 링크 달아주기 -->

			<tr>
				<td colspan="3"></td>
				<td><a href = "reviewlist.wd">목록으로</a></td>
			</tr>	
			</tbody>
	</table> 

</body>
</html>
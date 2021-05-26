<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
  
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>공지 상세 페이지</title>

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
<%//임시 id 
String adid = "admind1"; 
session.setAttribute("adid", adid);

%>
<!-- 오렌지색 줄 ---------------------------------------->
	<div style="width: 700px; height: 50px; margin:0 auto; background-color: orange;"></div>
	<input type="hidden" name="noid" value="${noticedetail.noid}">
	<!-- 테이블 시작 ---------------------------------------->
	 <table width="700" style="background-color: #eeeeee;">
			<thead>
				<tr>
					<th colspan="4" style="background-color: #FFEBCD; text-align: center;">공지 상세 페이지</th>
				</tr>
			</thead>
			
			<tr>
				<td>No</td>
				<td><input type="text" name="noid" size="17" readonly="readonly" value="${noticedetail.noid}"></td>
				<td>조회수</td>
				<td><input type="text" name="nohit" size="17" readonly="readonly" value="${noticedetail.nohit}"></td>
			</tr> 
			
 			<tr>
				<td>관리자</td>
				<td><input type="text" name="adid" size="17" readonly="readonly" value="${noticedetail.adid}"></td>
				<td>날짜</td>
				<td><input type="text" name="nodate" size="17" readonly="readonly"  value="${noticedetail.nodate}"></td>
			</tr>  
			
			<tr>
				<td>제목</td>
				<td colspan="3"><input type="text" name="notitle" size="70" readonly="readonly" value="${noticedetail.notitle}" ></td>
			</tr>
		
			<tr>
				<td>내용</td>
				<td colspan="3"><textarea rows="10" cols="60" name="nocontent" readonly="readonly">${noticedetail.nocontent}</textarea>
			</tr>
			
			<tr>
				<td colspan="2"></td>			
				<td><button type="button" style="color:#F5DEB3; background:#FFA500; font-size:15px; border-radius:4px;" onclick="location.href='noticelist.wd'">확인</button></td>
			</tr>
			
			<!-- 입력이 안됐을때 첫 화면으로 돌아가게 하기 위해서 하이퍼 링크 달아주기 -->
			<tr>
				<td colspan="3"></td>	
				<td><a href = "noticelist.wd">목록으로</a></td>
			</tr>	
	</table> 


</body>
</html>
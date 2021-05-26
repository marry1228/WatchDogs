<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 작성</title>
<script type="text/javascript">
	function check(){
		var form = document.writeForm
		if(form.retitle.value == ""){
			alert("제목을 입력하세요");
			form.retitle.focus();
			return false;
		}
	
		if(form.recontent.value == ""){
			alert("내용을 입력하세요");
			form.recontent.focus();
			return false;
		}
		form.submit();
	}
</script>

<style>
	table{
		border="0";
		backgound-color:#eeeeee;
		ext-align: center;
		margin:0 auto;
	}
	 th, td {
		text-align: center;
	}
	a { 
	text-decoration:none
	 } 
	input:focus{
		background-color:orange;
		color:white;
	}
</style>
</head>
<body>

<%//임시 id 
String userid = "userhehe"; 
session.setAttribute("userid", userid);

%>

<!-- 오렌지색 줄 ---------------------------------------->	
	<div style="width: 700px; height: 50px; background-color: orange; margin:0 auto;"></div>
<!-- 테이블시작 ---------------------------------------->
<%--  			<input type="hidden" name="userid" value="${userid}">
 --%> 
	 <table width="700" style="background-color: #eeeeee">
		<form name="writeForm"  action="review_write.wd" method="post" enctype="multipart/form-data">
			<thead>
				<tr>
					<th colspan="4" style="background-color: #FFEBCD; text-align: center;">후기글 작성</th>
				</tr>
			</thead>		
			<tbody>
					<tr>
						<td>제목</td>
						<td colspan="3"><input type="text"  name="retitle" size="74" placeholder="제목을 입력해주세요" ></td>
					</tr>
		
					<tr> 
						<td>내용</td>
						<td colspan="3"><textarea rows="10" cols="64" name="recontent" placeholder="내용을 입력해주세요"></textarea></td>
					</tr>
					
					<tr>
						<td>파일 첨부 : </td>
						<td colspan="3"><input type="file" name="file"> 
		 			</tr>
		 			
					<tr>
						<td></td>
						<td colspan="3"><input type="button" style="color:#F5DEB3; background:#FFA500; font-size:15px; border-radius:4px;"  
								value="입력" onclick="check()"></td>
					</tr>
					
					<!-- 입력이 안됐을때 첫 화면으로 돌아가게 하기 위해서 하이퍼 링크 달아주기 -->
					<tr>
						<td colspan="3"></td>
						<td><a href = "reviewlist.wd">목록으로</a></td>
					</tr>	
				</tbody>
		</form>
	</table>
		

</body>
</html>

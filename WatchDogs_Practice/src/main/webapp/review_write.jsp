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
</head>
<body>
	
	<div style="width: 700px; height: 50px; background-color: orange;"></div>
	
	 <table width="700" cellspacing="0" cellpadding="5" border="0" style="background-color: #eeeeee; text-align: center;">
		<form name="writeForm"  action="review_write.wd" method="post" enctype="multipart/form-data">
			<thead>
				<tr>
					<th colspan="2" style="background-color: #FFEBCD; text-align: center;">후기글 작성</th>
				</tr>
			</thead>


<%--  			<tr>
				<td>작성자 아이디</td>
				<td><input type="text" name="userid" size="50" readonly="readonly" value="${reviewdetail.userid}"></td>
			
			</tr>   --%>
			
			
			<tr>
				<td>제목</td>
				<td><input type="text" name="retitle" placeholder="제목을 입력해주세요" size="70"></td>
			
			</tr>

			<tr> 
				<td>내용</td>
				<td><textarea rows="10" cols="70" name="recontent" placeholder="내용을 입력해주세요"></textarea></td>
			
			</tr>
			<tr>
				<td>파일 첨부 : </td>
				<td><input type="file" name="file"> 
				<!-- 사용자가 전송한(업로드한) 파일이 name명 대로 (file) 전송됨 -->
				
<!-- 				<input type="button"  value="파일첨부" onclick="location.href='fileupload.jsp'"><br></td>
 -->			</tr>
			<!-- 입력이 안됐을때 첫 화면으로 돌아가게 하기 위해서 하이퍼 링크 달아주기 -->
			<tr>
				<td colspan="2"><input type="button" style="color:#F5DEB3; background:#FFA500; font-size:1em; border-radius:4px;"  value="입력" onclick="check()"></td>
			</tr>
			<tr>
				<td><a href = "reviewlist.wd">목록으로</a></td>
			</tr>	
		</form>
	</table>
		
	
	<!-- <form action="fileupload.jsp"  method="post" enctype="multipart/form-data">
		파일 첨부 : <input type="file" name="file"> <br>  
				사용자가 전송한(업로드한) 파일이 name명 대로 (file) 전송됨
				<input type="submit"  value="파일첨부" ><br>
	</form> -->




</body>
</html>

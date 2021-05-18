<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- JSTL 사용시 필용한 import --> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8"); // 한글표기되도록
	
/* 	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	// Session에 입력하기(HttpSession)
	session.setAttribute("id", id);
	session.setAttribute("pw", pw);
	
	response.sendRedirect("writeFile_13.jsp?result="+result);
	 */
%>

<table border="1">
		
		<tr>
			<td>${content_view.bId}</td>
			<td>${content_view.bTel}</td>
			<td>${content_view.bEmail}</td>
<%-- 			<td>${content_view.bName}</td> 원인을 알 수 없는 에러 발생 --%>
			<td>${content_view.bDate}</td>
		</tr>
	</table>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	

	String logintype = "admin";
	/* String logintype = "user"; */
	/* String logintype = "trainer"; */
	/* ogintype = (String)session.getAttribute("logintype"); */

	if(logintype.equals("admin")){
		response.sendRedirect("adminpage.wd");
	}else if(logintype.equals("trainer")){
		response.sendRedirect("trainerpage.wd");
	}else if(logintype.equals("user")){
		response.sendRedirect("userpage.wd");
	}else{
		out.print(logintype);
	}
	

%>
</body>
</html>
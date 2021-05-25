<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 카테고리</title>
</head>
<body>
<%
      
      String url_mysql="jdbc:mysql://localhost:3306/watchdogs_test_02?serverTimezone=UTC&characterEncoding=utf8&useSSL=FALSE";
      String id_mysql = "root";
      String pw_mysql = "qwer1234";

      String dogadopttst = request.getParameter("dogadopttst");
      String searchtype = request.getParameter("searchtype");
      String search = request.getParameter("search");
      
      String query = "select dogid, dogname, dogmf, dogage, dogdate, dogtraincomm, dogadopttst, dogtype, dogfilepath, dogtrname from dog where dogid = ?;"; 
      
      try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn_mysql = DriverManager.getConnection(url_mysql,id_mysql,pw_mysql);
			Statement stmt_mysql = conn_mysql.createStatement();

			ResultSet rs = stmt_mysql.executeQuery(query);

			
			while(rs.next()) {
				
				
				
			}
           			
      }catch(Exception e){
    	  e.printStackTrace();
      }



%>
<%=dogadopttst %>
<%=searchtype %>
<%=search %>



</body>
</html>
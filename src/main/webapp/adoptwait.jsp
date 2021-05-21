<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입양 카테고리</title>
 <link href="category.css" rel="stylesheet" type="text/css">
 <style type="text/css">  a { text-decoration:none } 
</style> 
 </head>
 
 <body>
 <h1>입양 대기중 카테고리</h1>   
   <%
   request.setCharacterEncoding("utf-8");
   String id  = request.getParameter("id");
   session.setAttribute("ID", id);
  %>
  <%=id%>
 
   <nav> 
    <ul> 
      <li><a href="adoptproceeding.wd" style="color: black">입양 진행</a></li>
      <li><a href="adopt.wd" style="color: black">입양 대기 중</a></li> 
      <li><a href="adoptcomplete.wd" style="color: black">입양 완료</a></li>
    </ul>
   </nav>
  
     ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

        <table border="1">
        <tr>
        <th>이름</th>
        <th>성별</th>
        <th>등록 날짜</th>
        <th>상태</th>
        </tr>
        <c:forEach items="${adoptwait}" var="dto">
        <tr>
         <td><a href="adoptwait_02.wd?dogid=${dto.dogid}">${dto.dogname}</a></td>        
         <td>${dto.doggender} </td>
         <td>${dto.dogdate} </td>
         <td>${dto.dogadopttst} </td>
         </tr>
         </c:forEach>
         </table>
       ---------------------------------------
  <form name = "apply"  action = "adoptwait_02.jsp" >
  <input type = "hidden" name = "dogid" value="">
  
  <input type ="submit" value="입양 신청" onclick="CheckForm()">
  
  </form>

</body>
</html>







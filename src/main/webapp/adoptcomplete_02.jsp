<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <nav> 
    <ul> 
      <li><a href="adoptproceeding.wd" style="color: black">입양 진행</a></li>
<<<<<<< Updated upstream
      <li><a href="adopt.wd" style="color: black">입양 대기 중</a></li> 
      <li><a href="adoptcomplete.wd" style="color: black">입양 완료</a></li>
=======
      <li><a href="adopt.wd" style="color: black">입양 가능</a></li> 
      <li><a href="adoptcomplete.wd" style="color: black">입양 완료</a></li>
      <li><a href="adopttraining.wd" style="color: black">훈련 중</a></li>
>>>>>>> Stashed changes
    </ul>
   </nav>

           <table border="1">
        <tr>
        <th>이름</th>
        <th>성별</th>
<<<<<<< Updated upstream
=======
        <th>나이</th>
        <th>견종</th>
>>>>>>> Stashed changes
        <th>등록 날짜</th>
        <th>상태</th>
        <th>코멘트</th>
        
        
<<<<<<< Updated upstream
       
        </tr>
        <c:forEach items="${adoptcomplete_02}" var="dto">
        <tr>  
        
         <td>${dto.dogname} </td>
         <td>${dto.doggender} </td>
=======
        
       
        </tr>
        <c:forEach items="${adopt_02}" var="dto">
        <tr>  
        
         <td>${dto.dogname} </td>
         <td>${dto.dogmf} </td>
         <td>${dto.dogage} </td>
         <td>${dto.dogtype} </td>
>>>>>>> Stashed changes
         <td>${dto.dogdate} </td>
         <td>${dto.dogadopttst} </td>
         <td width="200">${dto.dogtraincomm} </td>
         </tr>
         </c:forEach>
         </table>

          </body>
        </html>
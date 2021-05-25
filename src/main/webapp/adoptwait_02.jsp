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
 
 <%

   request.setCharacterEncoding("utf-8");
   String id  = request.getParameter("id");
   
  %>
  
  <script type = "text/javascript">


  function CheckForm(){
 
	  alert("신청이 완료 되었습니다");
	 
  } 

</script>
 
 <body>
<<<<<<< Updated upstream
 <h1>입양 상세페이지</h1>   
   <nav> 
    <ul> 
      <li><a href="adoptproceeding.wd" style="color: black">입양 진행</a></li>
      <li><a href="adopt.wd" style="color: black">입양 대기 중</a></li> 
      <li><a href="adoptcomplete.wd" style="color: black">입양 완료</a></li>
=======
 <h1>입양 가능 상세페이지</h1>   
   <nav> 
    <ul> 
       <li><a href="adoptproceeding.wd" style="color: black">입양 진행</a></li>
      <li><a href="adopt.wd" style="color: black">입양 가능</a></li> 
      <li><a href="adoptcomplete.wd" style="color: black">입양 완료</a></li>
      <li><a href="adopttraining.wd" style="color: black">훈련 중</a></li>
>>>>>>> Stashed changes
    </ul>
   </nav>

     ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

        <table border="1">
        <tr>
        <th>이름</th>
        <th>성별</th>
<<<<<<< Updated upstream
        <th>등록 날짜</th>
        <th>상태</th>
        <th>코멘트</th>
=======
        <th>나이</th>
        <th>견종</th>
        <th>등록 날짜</th>
        <th>상태</th>
        <th>코멘트</th>
       
>>>>>>> Stashed changes
        
        
       
        </tr>
<<<<<<< Updated upstream
        <c:forEach items="${adoptwait_02}" var="dto">
        <tr>  
        
         <td>${dto.dogname} </td>
         <td>${dto.doggender} </td>
=======
        <c:forEach items="${adopt}" var="dto">
        <tr>  
        
         <td>${dto.dogname} </td>
         <td>${dto.dogmf} </td>
         <td>${dto.dogage} </td>
         <td>${dto.dogtype} </td>
>>>>>>> Stashed changes
         <td>${dto.dogdate} </td>
         <td>${dto.dogadopttst} </td>
         <td width="200">${dto.dogtraincomm} </td>
         <td> </td>
         
         
   
         </tr>
         </c:forEach>
         </table>
 <br>
 <br>
 <br>
<<<<<<< Updated upstream
  <c:forEach items="${adoptwait_02}" var="dto">
=======
 



 
 
  <c:forEach items="${adopt}" var="dto">
>>>>>>> Stashed changes
  <form name = "apply"  action = "adoptapply.wd" >
  <input type = "hidden" name = "dogid" value="${dto.dogid}">
  
  <input type ="submit" value="입양 신청" onclick="CheckForm()">
  
  </form>
             </c:forEach>
        

</body>
</html>







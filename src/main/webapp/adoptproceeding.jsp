<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<<<<<<< Updated upstream
=======
<%

    int pageNum;     // 현재 클릭한 페이지 
    int pageCount ; // 총 페이지 수
    int startPage ;    // 시작페이지
    int endPage ;     //끝페이지
     // 게시물 총 갯수가 동일할 때를 위함 
    int count = (int)session.getAttribute("count");
    
     startPage = (int)session.getAttribute("startPage");
     pageCount = (int)session.getAttribute("pageCount");
     endPage = (int)session.getAttribute("endPage");
  
%>
>>>>>>> Stashed changes
<html>
<head>
<meta charset="UTF-8">
<title>입양 카테고리</title>
 <link href="category.css" rel="stylesheet" type="text/css">
  <style type="text/css"> a { text-decoration:none } 
</style> 
 </head>
 <body>
 <h1>입양 진행중 카테고리</h1>

  <nav> 
    <ul> 
<<<<<<< Updated upstream
      <li><a href="adoptproceeding.wd" style="color: black"  >입양 진행 </a></li>
      <li><a href="adopt.wd" style="color: black">입양대기중</a></li> 
      <li><a href="adoptcomplete.wd" style="color: black">입양 완료</a></li>
    </ul>
  </nav>
  
     ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ


=======
      <li><a href="adoptproceeding.wd" style="color: black">입양 진행</a></li>
      <li><a href="adopt.wd" style="color: black">입양 가능</a></li> 
      <li><a href="adoptcomplete.wd" style="color: black">입양 완료</a></li>
      <li><a href="adopttraining.wd" style="color: black">훈련 중</a></li>
    </ul>
  </nav>
   ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ 
     <form action="adoptproceedingSearch.wd">
    <br>
    <br>
         <select name = "searchtype">
            <option value = "dogmf">성별</option>
            <option value = "dogtype" selected = "dogtype">견종</option>
         </select>  
         
         <input type="search" name = "search">
         <input type="submit" value = "검색">
         
         
          <input type = "hidden" name = "dogadopttst" value="진행">
         
         
    <br>
    <br>
    </form>
     ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
>>>>>>> Stashed changes
        <table border="1">
        <tr>
        <th>이름</th>
        <th>성별</th>
<<<<<<< Updated upstream
        <th>등록 날짜</th>
        <th>상태</th>
        </tr>
        <c:forEach items="${adoptproceeding}" var="dto">
        <tr>
         <td><a href="adoptproceeding_02.wd?dogid=${dto.dogid}">${dto.dogname}</a></td>                 
         <td>${dto.doggender} </td>
=======
        <th>나이</th>
        <th>견종</th>
        <th>등록 날짜</th>
        <th>상태</th>
        </tr>
        <c:forEach items="${adopt}" var="dto">
        <tr>
         <td><a href="adoptproceeding_02.wd?dogid=${dto.dogid}">${dto.dogname}</a></td>                 
         <td>${dto.dogmf} </td>
         <td>${dto.dogage} </td>
         <td>${dto.dogtype} </td>
>>>>>>> Stashed changes
         <td>${dto.dogdate} </td>
         <td>${dto.dogadopttst} </td>
         </tr>
         </c:forEach>
<<<<<<< Updated upstream
        
        
        </table>
=======
        </table>
      
      
      <%for(int i = startPage; i<=endPage; i++){ %>
	      <td><a href="adoptproceeding.wd?pageNum=<%=i%>">[<%=i%>]</a></td>   
	        <% } %>


>>>>>>> Stashed changes

</body>
</html>
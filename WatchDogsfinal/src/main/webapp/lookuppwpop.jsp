<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
    <head>
        <title> 아이디 찾기 </title>
        <link rel="stylesheet" href="style.css">           
    </head>

    <body>
        <div class="wrap">
            <div class="form-wrap">
            
<!--            	 버튼 구역 -->
                <div class="button-wrap">
                    <div id="btn"></div>
                    <button type="button" class="togglebtn" onclick="lookupid()">id 찾기</button>
                    <button type="button" class="togglebtn" onclick="lookuppw()">pw 찾기</button>
                </div>
                
<!--                 아이콘 구역 -->
                <div class="icon">
                    <img src="images/logo.png" width="150px" height="100px" alt="WatchDogs">
                </div>
                
 <!--                id찾기 폼-->
                <form id="left" action="signup.wd" class="input-group2" method="post">
                    <input type="text" name="username" class="input-field" placeholder="이름" required>
                    <input type="email" name="useremail" class="input-field" placeholder="이메일" required>  

                    <button class="submit">아이디 찾기</button>  
                </form>               
                
 <!--                pw찾기 폼-->
                <form id="right" class="input-group2" method="post">                
                	<input type="text" id="userid" class="input-field" placeholder="아이디" required>                	 
                    <button class="submit">다음</button>  
                   
                </form>
                
                
            </div>            
        </div>
        
         <script type="text/javascript">
	
	            var x = document.getElementById("left");   
	            var y = document.getElementById("right");
	            var z = document.getElementById("btn");
	        
	            function lookupid(){
	                x.style.left = "50px";
	                y.style.left = "450px";
	                z.style.left = "0";
	            }
	
	            function lookuppw(){
	                x.style.left = "-400px";
	                y.style.left = "50px";
	                z.style.left = "110px";
	            }
	            
	            window.onload = function() {
	            	"","안녕하세요^^","width=800,height=400"
	            }
	    </script>
    </body>
</html> 

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
  <%@ page import="user.userService" %>  
  
  
  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="/DRAW/dynamic/index.css">


</head>
<body>

    <nav>
        <ul class="nav1">
        
        	<%if(session.getAttribute("id")!=null){
        		%>
        		<li>반갑습니다. <%=session.getAttribute("id") %></li>
        		<li><a href="/DRAW/dynamic/logout.jsp">로그아웃</a></li>
        		<%
        		
        	}else{
        		%>
        		 <li><a href="/DRAW/dynamic/login.jsp">로그인</a></li>
            <li><a href="/DRAW/dynamic/registration.jsp">회원가입</a></li>
        		<%
        		
        	}%>
        	
           
            
        </ul>

    </nav>
    
    <div class="index_content">
    	
    	<h1 class="m1">방 목록</h1>
    	<div id="roomContainer">
    	
    	<table>
    	
    		<tr>
    		
    			<td>
    				방제 : <label for="enter">기본 방제</label>&nbsp<button name="enter">입장</button>
    			</td>
    		
    		</tr>
    		<tr>
    		
    			<td>
    				방제 : <label for="enter">기본 방제</label>&nbsp<button name="enter">입장</button>
    			</td>
    		
    		</tr>
    		<tr>
    		
    			<td>
    				방제 : <label for="enter">기본 방제</label>&nbsp<button name="enter">입장</button>
    			</td>
    		
    		</tr>
    		<tr>
    		
    			<td>
    				방제 : <label for="enter">기본 방제</label>&nbsp<button name="enter">입장</button>
    			</td>
    		
    		</tr>
    	
    	</table>
    	
    	
    	
    	
    	
    	
    	</div>
    	
    	
    	
    	
    </div>
    
    
    	
    	

    
</body>
</html>
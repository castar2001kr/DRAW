<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%

  String id= request.getParameter("id");
  String pw= request.getParameter("password");
  
  %>


<%@ page import="user.userController" %>
<%@ page import="user.userDTO" %>



<%
	user.userController con = new userController();
	
	con.init();
	
	userDTO form=new userDTO();
	form.setId(id);
	form.setPassword(pw);
	
	boolean result = con.join(form);
	
	
	if(result){
		
		
		
		%>
			성공!
		
		<%
		
		
	}else{
		%>
		
		
			실패!
		<%
		
	}
	

%>







</body>
</html>
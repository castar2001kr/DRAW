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
  
	boolean result = con.login(form);
	
	if(result){
		
		session.setAttribute("id", id);
		%>
		성공!
	
	<%
	response.sendRedirect("/DRAW/dynamic/index.jsp");
	
}else{
	%>
	
	
		실패!
	<%
	
	response.sendRedirect("/DRAW/dynamic/index.jsp");
}


%>


</body>
</html>
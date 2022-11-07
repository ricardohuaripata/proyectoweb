<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.Cookie"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>Sesion</title>
</head>

<body>
	<h1>Sesion</h1>

	<%
	
	Cookie[] cookies = request.getCookies();
	for(int i=0; i<cookies.length; i++) {
		out.println("<p>"+cookies[i].getValue()+"</p>");
	}
	
	out.println("<p>"+session.getAttribute("password")+"</p>");
	%>

</body>

</html>
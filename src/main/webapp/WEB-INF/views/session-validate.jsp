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
	out.println("<p>Hola "+ session.getAttribute("session-user") +" </p>");
	
	Cookie[] cookies = request.getCookies();
	for(int i=0; i<cookies.length; i++) {
		out.println("<p>Cookie: " + cookies[i].getValue() + "</p>");
	}
	
	%>
	
	<a href="session-confirm_session">Quiero confirmar mi sesion</a>

</body>

</html>
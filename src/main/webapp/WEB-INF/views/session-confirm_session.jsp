<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.Cookie"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>Confirmar sesion</title>
</head>

<body>
	<h1>Confirmar sesion</h1>

	<%
	out.println("<p>Usuario: " + session.getAttribute("session-user") + " </p>");
	out.println("<p>Estado de sesion: Anteriormente iniciada </p>");
	%>

</body>

</html>
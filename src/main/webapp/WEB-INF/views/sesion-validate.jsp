<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Sesion</title>
</head>

<body>
	<h1>Sesion</h1>

	<%
	boolean valid_user = (boolean) request.getAttribute("valid_user");
	boolean valid_password = (boolean) request.getAttribute("valid_password");
	
	if(valid_user && valid_password) {
		out.println("<p>Usuario y contraseña correctos</p>");
	}
	
	if(valid_user == false) {
		out.println("<p>Usuario incorrecto!!</p>");
	}
	if(valid_password == false) {
		out.println("<p>Contraseña incorrecta!!</p>");
	}
	
	%>

</body>

</html>
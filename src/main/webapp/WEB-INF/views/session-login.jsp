<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html lang="en">

<head>
<title>Iniciar Sesion</title>
</head>

<body>

<%
if((String)request.getAttribute("error") != null) {
	out.println("<p style='color: red'>Login incorrecto</p>");
}
%>

	<h1>Iniciar sesion</h1>

	<form method="get" action="session-validate">
		<table style="with: 50%">
			<tr>
				<td>Usuario</td>
				<td><input type="text" name="user" required/></td>
			</tr>
			<tr>
				<td>Contraseña</td>
				<td><input type="text" name="password" required/></td>
			</tr>
		</table>
		<input type="submit" value="Submit" />
	</form>
</body>

</html>
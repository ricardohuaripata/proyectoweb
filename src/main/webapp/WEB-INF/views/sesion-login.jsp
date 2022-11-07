<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html lang="en">

<head>
<title>Iniciar Sesion</title>
</head>

<body>

	<h1>Iniciar sesion</h1>

	<form method="get" action="sesion-validate">
		<table style="with: 50%">
			<tr>
				<td>Usuario</td>
				<td><input type="text" name="sesion_user" /></td>
			</tr>
			<tr>
				<td>Contraseña</td>
				<td><input type="text" name="sesion_password" /></td>
			</tr>
		</table>
		<input type="submit" value="Submit" />
	</form>
</body>

</html>
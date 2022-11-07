<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Iniciar Sesion</title>
</head>

<body>

	<div align="center">
		<h1>Iniciar sesión</h1>

		<%
		String user = "ricardohuaripata";
		String password = "helloworld985";
		%>
		<form method="get" action="sesion-validate">
			<p>
				Usuario: <input type="text" name="sesion_user" required />
			</p>
			<p>
				Contraseña: <input type="text" name="sesion_password" required />
			</p>
			<p>
				<input type="submit" value="Entrar" />
			</p>
		</form>
	</div>
</body>

</html>
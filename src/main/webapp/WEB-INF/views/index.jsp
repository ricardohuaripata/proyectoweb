<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Proyecto</title>
<script>
	function saludar() {
		var campo = document.getElementById("campo");
		alert("Bienvenido usuario " + campo.value);

	}
</script>
</head>

<body>

	<h1>Hola mundo!!!</h1>

	<input type="text" value="" id="campo">
	<input type="button" value="Pulsar" onclick="javascript:saludar()">

</body>

</html>
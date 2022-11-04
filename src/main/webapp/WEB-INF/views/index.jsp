<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Proyecto</title>
<script>
	function saludar() {
		var campo = document.getElementById("campo");
		alert("Hola usuario " + campo.value);

	}
</script>
</head>

<body>
<!--  
	<input type="text" value="" id="campo">
	<input type="button" value="Pulsar" onclick="javascript:saludar()">
	
	<h1>Clientes</h1>
	<table border="1">
		<tr>
			<th>Nombre</th>
			<th>Apellido</th>
		</tr>
		<tr>
			<%
			String nombre = "Ricardo";
			String apellido = "Huaripata";
			out.println("<td>" + nombre + "</td>");
			out.println("<td>" + apellido + "</td>");
			%>
		</tr>

		<%
		ArrayList arNombre = new ArrayList();
		ArrayList arApellido = new ArrayList();
		arNombre.add("Victor");
		arNombre.add("Juan");
		arApellido.add("Valdivia");
		arApellido.add("Alvarez");
		%>

		<%
		for (int i = 0; i < arNombre.size(); i++) {
			out.println("<tr><td>" + arNombre.get(i) + "</td><td>" + arApellido.get(i) + "</td></tr>");
		}
		%>

	</table>
-->
	<h2>Calculadora</h2>

	<form name="calculadora" method="get" action="resultado.jsp">
	
		<p>Valor 1</p>
		<input type="number" value="" name="valor1" > <br>
		
		<p>Valor 2</p>
		<input type="number" value="" name="valor2" > <br>
		
		<select name="tipoOperacion">
			<option value="sumar">Sumar</option>
			<option value="restar">Restar</option>
			<option value="multiplicar">Multiplicar</option>
			<option value="dividir">Dividir</option>
		</select> 
		
		<input type="submit" value="Calcular" />		
		
	</form>
	
	

</body>

</html>
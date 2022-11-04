<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.proyecto.utilidades.OperacionesMatematicas"%>
<%@page import="java.math.BigDecimal"%>

<!DOCTYPE html>
<html lang="en">

<body>

	<h1>El resultado de la operacion es: </h1>
	
	<%
	
	String valor1 = request.getParameter("valor1");
	String valor2 = request.getParameter("valor2");
	String tipoOperacion = request.getParameter("tipoOperacion");
	
	BigDecimal x = new BigDecimal("valor1");
	BigDecimal y = new BigDecimal("valor2");
	BigDecimal z = new BigDecimal(0);
	
	switch(tipoOperacion) {
	case "sumar":
		z = OperacionesMatematicas.sumar(x, y);
		break;
		
	case "restar":
		z = OperacionesMatematicas.restar(x, y);
		break;

	case "multiplicar":
		z = OperacionesMatematicas.multiplicar(x, y);
		break;
		
	case "dividir":
		z = OperacionesMatematicas.dividir(x, y);
		break;

	}
	
	out.println("<h1>" + z + "</h1>");
	%>

</body>

</html>
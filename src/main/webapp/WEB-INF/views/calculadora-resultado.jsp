<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.proyecto.utilidades.OperacionesMatematicas"%>
<%@page import="java.math.BigDecimal"%>

<!DOCTYPE html>
<html lang="en">

<body>

	<h1>Resultado: </h1>
	
	<%

	double valor1 = Double.parseDouble(request.getParameter("valor1"));
	double valor2 = Double.parseDouble(request.getParameter("valor2"));
	String tipoOperacion = request.getParameter("tipoOperacion");
	
	BigDecimal x = new BigDecimal(valor1);
	BigDecimal y = new BigDecimal(valor2);
	BigDecimal resultado = new BigDecimal(0);
	
	switch(tipoOperacion) {
	case "sumar":
		resultado = OperacionesMatematicas.sumar(x, y);
		break;
		
	case "restar":
		resultado = OperacionesMatematicas.restar(x, y);
		break;

	case "multiplicar":
		resultado = OperacionesMatematicas.multiplicar(x, y);
		break;
		
	case "dividir":
		resultado = OperacionesMatematicas.dividir(x, y);
		break;

	}
	out.println("<p> Operacion: " + tipoOperacion + "</p>");
	out.println("<p> Valor 1: " + valor1 + "</p>");
	out.println("<p> Valor 2: " + valor2 + "</p>");
	out.println("<p> Resultado= " + resultado + "</p>");
	%>

</body>

</html>
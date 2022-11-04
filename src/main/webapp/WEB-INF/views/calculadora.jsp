<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.proyecto.utilidades.OperacionesMatematicas"%>
<%@page import="java.math.BigDecimal"%>

<!DOCTYPE html>
<html lang="en">

<body>
	
	<% 
	BigDecimal x = new BigDecimal(50.25);
	BigDecimal y = new BigDecimal(15.25);
	%>
	
	<p><%=x%> + <%=y%> = <%=OperacionesMatematicas.sumar(x,y)%></p>
	<p><%=x%> - <%=y%> = <%=OperacionesMatematicas.restar(x,y)%></p>
	<p><%=x%> * <%=y%> = <%=OperacionesMatematicas.multiplicar(x,y)%></p>
	<p><%=x%> / <%=y%> = <%=OperacionesMatematicas.dividir(x,y)%></p>
	
	
</body>

</html>
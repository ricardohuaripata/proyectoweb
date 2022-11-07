<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="com.proyecto.utilidades.Persona"%>
<%@page import="com.proyecto.utilidades.Validacion"%>
<%@page import="java.util.HashMap"%>

<html>

<head>
<title>Validacion formulario</title>
</head>

<body>

	<h1>VALIDACION</h1>

	<%
	// se castea la request con el objeto que deberia devolver
	Persona persona = (Persona) request.getAttribute("persona");
	HashMap<String, String> errores = (HashMap) request.getAttribute("errores");

	if (errores.isEmpty()) {
		out.println("<p>TUS DATOS HAN SIDO ENVIADOS CON EXITO</p>");
		out.println("<p>NOMBRE: " + persona.getNombre() + "</p>");
		out.println("<p>APELLIDOS: " + persona.getApellido1() + " " + persona.getApellido2() + "</p>");
		out.println("<p>DNI: " + persona.getDni() + "</p>");
		out.println("<p>FECHA DE NACIMIENTO: " + persona.getFechaNacimiento() + "</p>");
		out.println("<p>TELEFONO: " + persona.getTelefono() + "</p>");
		out.println("<p>PROVINCIA: " + persona.getProvincia() + "</p>");
		out.println("<p>PAIS: " + persona.getPais() + "</p>");
		out.println("<p>DIRECION: " + persona.getDireccion() + "</p>");
		out.println("<p>CODIGO POSTAL: " + persona.getCodigoPostal() + "</p>");
		out.println("<p>SEXO: " + persona.getSexo() + "</p>");

	} else {
		for (String clave : errores.keySet()) {
			out.println("<p>" + errores.get(clave) + "</p>");
		}
	}
	%>


</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.proyecto.utilidades.Persona"%>
<%@page import="java.util.HashMap"%>


<!DOCTYPE html>
<html lang="en">

<body>

	<h2>Tabla de personas</h2>
	<table border="1">

		<tr>
			<th>Nombre</th>
			<th>Primer Apellido</th>
			<th>Segundo Apellido</th>
			<th>Provincia</th>
			<th>Sexo</th>

		</tr>

		<%
		
		int cantidadHombres=0;
		int cantidadMujeres=0;
		ArrayList<Persona> ar = new ArrayList<Persona>();

		Persona alumno1 = new Persona("Ricardo", "Huaripata", "Bellido", "", "", "", "Sevilla", "","", "", "Hombre");
		Persona alumno2 = new Persona("Eva", "Cardenas", "Bermudez", "", "", "", "Sevilla", "","", "", "Mujer");
		Persona alumno3 = new Persona("Pablo", "Dominguez", "Dominguez", "", "", "", "Sevilla", "","", "", "Hombre");
		Persona alumno4 = new Persona("Alejandro", "Martagon", "Reina", "", "", "", "Sevilla", "","", "", "Hombre");
		Persona alumno5 = new Persona("Juan", "Castaño", "Carrilero", "", "", "", "Sevilla", "","", "", "Hombre");
		Persona alumno6 = new Persona("Sara", "Artiles", "Heras", "", "", "", "Gran Canarias", "","", "", "Mujer");
		Persona alumno7 = new Persona("Fernando", "Perez", "Nieto", "", "", "", "Sevilla", "","", "", "Hombre");
		Persona alumno8 = new Persona("Paula", "Zujar", "Cote", "", "", "", "Sevilla", "","", "", "Mujer");
		Persona alumno9 = new Persona("Paula", "Hidalgo", "Mauriño", "", "", "", "Sevilla", "","", "", "Mujer");
		Persona alumno10 = new Persona("Jonatan", "Carrera", "Viera", "", "", "", "Sevilla", "","", "", "Hombre");
		Persona alumno11 = new Persona("Jeffery", "Wilberth", "Chavez", "", "", "", "Sevilla", "","", "", "Hombre");
		Persona alumno12 = new Persona("Roberto", "Rodriguez", "Nuñez", "", "", "", "Sevilla", "","", "", "Hombre");
		Persona alumno13 = new Persona("Ana", "García", "Ruiz", "", "", "", "Sevilla", "","", "", "Mujer");
		Persona alumno14 = new Persona("Rafael", "Herrera", "Chávez", "", "", "", "Sevilla", "","", "", "Hombre");
		Persona alumno15 = new Persona("Jose", "Guillamon", "Marin", "", "", "", "Sevilla", "","", "", "Hombre");

		ar.add(alumno1);
		ar.add(alumno2);
		ar.add(alumno3);
		ar.add(alumno4);
		ar.add(alumno5);
		ar.add(alumno6);
		ar.add(alumno7);
		ar.add(alumno8);
		ar.add(alumno9);
		ar.add(alumno10);
		ar.add(alumno11);
		ar.add(alumno12);
		ar.add(alumno13);
		ar.add(alumno14);
		ar.add(alumno15);

		for (int i = 0; i < ar.size(); i++) {
			out.println("<tr><td>" + ar.get(i).getNombre() + "</td><td>" + ar.get(i).getApellido1() + "</td><td>"
			+ ar.get(i).getApellido2() + "</td><td>" + ar.get(i).getProvincia() + "</td><td>" + ar.get(i).getSexo()
			+ "</td></tr>");
			
			if(ar.get(i).getSexo()=="Hombre") {
				cantidadHombres++;
			}
			else {
				cantidadMujeres++;
			}
		}
		%>		
	</table>
	
	<h2>Hay un total de <%=ar.size()%> personas con <%=cantidadHombres%> hombres y <%=cantidadMujeres%> mujeres</h2>

	<%
	HashMap<String, ArrayList<Persona>> map = new HashMap<String, ArrayList<Persona>>();
	
	for (int i = 0; i < ar.size(); i++) {
		
		String provincia = ar.get(i).getProvincia();
		
		if(map.get(provincia) == null) {
			map.put(provincia, new ArrayList<Persona>());
		}

		map.get(provincia).add(ar.get(i));
		
	}
	
	%>
	
	<h2>Provincias</h2>
		
	<%
	for (String provincia : map.keySet()) {
		ArrayList<Persona> listProvincia = map.get(provincia);
		out.println("<table border='1'><tr><th>Provincia</th><th>Nombre</th><th>Primer Apellido</th><th>Segundo Apellido</th><th>Sexo</th></tr>");
			
		for (Persona p : listProvincia) {
			out.println("<tr><td>"+p.getProvincia()+"</td><td>"+p.getNombre()+"</td><td>"+p.getApellido1()+"</td><td>"+p.getApellido2()+"</td><td>"+p.getSexo()+"</td></tr>");
			}
		out.println("</table><br>");
		}
	%>	
	
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>Productos</title>
</head>

<body>

	<h1>Lista de productos</h1>
	
	<form action="carrito" method="get">
		<p>PRODUCTO 1 (ID = 1) </p>
		<input type="hidden" name="idProducto" value=1> <input
			type="number" name="cantidad" value=1 min="0" max="100"
			style="width: 4em"> 
		<input type="submit" value="Añadir">
	</form>

	<form action="carrito" method="get">
		<p>PRODUCTO 2 (ID = 2) </p>
		<input type="hidden" name="idProducto" value=2> <input
			type="number" name="cantidad" value=1 min="0" max="100"
			style="width: 4em"> 
			<input type="submit" value="Añadir">
	</form>
	
		<form action="carrito" method="get">
		<p>PRODUCTO 3 (ID = 3) </p>
		<input type="hidden" name="idProducto" value=3> <input
			type="number" name="cantidad" value=1 min="0" max="100"
			style="width: 4em"> 
		<input type="submit" value="Añadir">
	</form>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>

<head>
<title>Rellenar formulario</title>
</head>

<body>

	<form method="get" action="formulario-resultado">

		<p>Nombre:</p>
		<input type="text" name="nombre" required>

		<p>Primer apellido:</p>
		<input type="text" name="apellido1" required>

		<p>Segundo apellido:</p>
		<input type="text" name="apellido2" required>

		<p>DNI:</p>
		<input type="text" name="dni" required>

		<p>Fecha de nacimiento:</p>
		<input type="text" name="fechaNacimiento" placeholder="dd/mm/yyyy"
			required>

		<p>Teléfono:</p>
		<input type="text" name="telefono" required>

		<p>
			<label>Provincia</label> <select name="provincia" required>
				<option value="vacio">Ninguna</option>
				<option value="Álava/Araba">Álava/Araba</option>
				<option value="Albacete">Albacete</option>
				<option value="Alicante">Alicante</option>
				<option value="Almería">Almería</option>
				<option value="Asturias">Asturias</option>
				<option value="Ávila">Ávila</option>
				<option value="Badajoz">Badajoz</option>
				<option value="Baleares">Baleares</option>
				<option value="Barcelona">Barcelona</option>
				<option value="Burgos">Burgos</option>
				<option value="Cáceres">Cáceres</option>
				<option value="Cádiz">Cádiz</option>
				<option value="Cantabria">Cantabria</option>
				<option value="Castellón">Castellón</option>
				<option value="Ceuta">Ceuta</option>
				<option value="Ciudad Real">Ciudad Real</option>
				<option value="Córdoba">Córdoba</option>
				<option value="Cuenca">Cuenca</option>
				<option value="Gerona/Girona">Gerona/Girona</option>
				<option value="Granada">Granada</option>
				<option value="Guadalajara">Guadalajara</option>
				<option value="Guipúzcoa/Gipuzkoa">Guipúzcoa/Gipuzkoa</option>
				<option value="Huelva">Huelva</option>
				<option value="Huesca">Huesca</option>
				<option value="Jaén">Jaén</option>
				<option value="La Coruña/A Coruña">La Coruña/A Coruña</option>
				<option value="La Rioja">La Rioja</option>
				<option value="Las Palmas">Las Palmas</option>
				<option value="León">León</option>
				<option value="Lérida/Lleida">Lérida/Lleida</option>
				<option value="Lugo">Lugo</option>
				<option value="Madrid">Madrid</option>
				<option value="Málaga">Málaga</option>
				<option value="Melilla">Melilla</option>
				<option value="Murcia">Murcia</option>
				<option value="Navarra">Navarra</option>
				<option value="Orense/Ourense">Orense/Ourense</option>
				<option value="Palencia">Palencia</option>
				<option value="Pontevedra">Pontevedra</option>
				<option value="Salamanca">Salamanca</option>
				<option value="Segovia">Segovia</option>
				<option value="Sevilla">Sevilla</option>
				<option value="Soria">Soria</option>
				<option value="Tarragona">Tarragona</option>
				<option value="Tenerife">Tenerife</option>
				<option value="Teruel">Teruel</option>
				<option value="Toledo">Toledo</option>
				<option value="Valencia">Valencia</option>
				<option value="Valladolid">Valladolid</option>
				<option value="Vizcaya/Bizkaia">Vizcaya/Bizkaia</option>
				<option value="Zamora">Zamora</option>
				<option value="Zaragoza">Zaragoza</option>
			</select>
		</p>

		<p>País:</p>
		<input type="text" name="pais" required>

		<p>Dirección:</p>
		<textarea name="direccion" placeholder="Escribe aqui tu direccion"
			rows="5" cols="25" required></textarea>

		<p>Código postal:</p>
		<input type="text" name="codigoPostal" required>

		<p>Sexo:</p>
		<label>Hombre</label> <input type="radio" name="sexo" value="H">

		<label>Mujer</label> <input type="radio" name="sexo" value="M">

		<p>
			<label>Acepto los términos y condiciones</label> <input
				type="checkbox" required>
		</p>

		<p>
			<input type="submit" value="Enviar">
		</p>

	</form>

</body>

</html>
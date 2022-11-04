package com.proyecto.utilidades;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.regex.Pattern;

public class Formulario {
// devuelve un mapa con los campos invalidos introducidos 
	
	public HashMap<String, String> errores(Persona person) {

		HashMap<String, String> listaErrores = new HashMap<String, String>();

		if (validarDni(person.getDni()) == false) {
			listaErrores.put("DNI", "EL CAMPO DNI NO ES VALIDO");
		}

		if (validarFormatoFecha(person.getFechaNacimiento()) == false) {
			listaErrores.put("FECHA-NACIMIENTO", "EL CAMPO FECHA NO ES VALIDO(USAR FORMATO 'dd-mm-yyyy')");
		}

		if (validarTelefono(person.getTelefono()) == false) {
			listaErrores.put("NUMERO-TELEFONO", "EL CAMPO TELEFONO NO ES UN NUMERO VALIDO");
		}
		if (validarCodigoPostal(person.getCodigoPostal()) == false) {
			listaErrores.put("CODIGO-POSTAL", "EL CAMPO CODIGO POSTAL NO ES VALIDO");
		}

		return listaErrores;

	}

	private boolean validarDni(String dniAComprobar) {
		char[] letraDni = { 'T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X', 'B', 'N', 'J', 'Z', 'S', 'Q', 'V',
				'H', 'L', 'C', 'K', 'E' };

		String num = "";
		int ind = 0;

		boolean valido;

		if (dniAComprobar.length() == 8) {
			dniAComprobar = "0" + dniAComprobar;
		}
		if (!Character.isLetter(dniAComprobar.charAt(8))) {
			return false;
		}

		if (dniAComprobar.length() != 9) {
			return false;
		}

		for (int i = 0; i < 8; i++) {

			if (!Character.isDigit(dniAComprobar.charAt(i))) {
				return false;
			}
			num += dniAComprobar.charAt(i);
		}

		ind = Integer.parseInt(num);

		ind %= 23;

		if ((Character.toUpperCase(dniAComprobar.charAt(8))) != letraDni[ind]) {
			return false;
		}
		return true;
	}

	private boolean validarFormatoFecha(String strDate) {
		SimpleDateFormat sdfrmt = new SimpleDateFormat("dd/MM/yyyy");
		sdfrmt.setLenient(false);

		try {
			java.util.Date javaDate = sdfrmt.parse(strDate);
		} catch (ParseException e) {
			return false;
		}

		return true;
	}

	// Valida numeros de teléfono globales
	private boolean validarTelefono(String telefono) {
		Pattern pattern = Pattern.compile("^(\\+\\d{1,3}( )?)?((\\(\\d{1,3}\\))|\\d{1,3})[- .]?\\d{3,4}[- .]?\\d{4}$");
		return pattern.matcher(telefono).matches();
	}

	private boolean validarCodigoPostal(String codigoPostal) {
		return Pattern.matches("[0-9]{5}", codigoPostal);
	}

}

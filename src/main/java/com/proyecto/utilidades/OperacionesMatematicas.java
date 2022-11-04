package com.proyecto.utilidades;

import java.math.BigDecimal;
import java.math.RoundingMode;

public class OperacionesMatematicas {

	public static BigDecimal sumar(BigDecimal x, BigDecimal y) {
		return x.add(y);
	}

	public static BigDecimal restar(BigDecimal x, BigDecimal y) {
		return x.subtract(y);
	}

	public static BigDecimal multiplicar(BigDecimal x, BigDecimal y) {
		return x.multiply(y);
	}

	public static BigDecimal dividir(BigDecimal x, BigDecimal y) {
		return x.divide(y, 2, RoundingMode.HALF_UP);
	}

}

package com.proyecto.utilidades;

public class Persona {
	
	private String nombre;
	private String apellido1;
	private String apellido2;
	private String dni;
	private String fechaNacimiento;
	private String telefono;
	private String provincia;
	private String pais;
	private String direccion;
	private String codigoPostal;
	private String sexo;
	
	public Persona() {

	}


	public Persona(String nombre, String apellido1, String apellido2, String dni, String fechaNacimiento,
			String telefono, String provincia, String pais, String direccion, String codigoPostal, String sexo) {
		this.nombre = nombre;
		this.apellido1 = apellido1;
		this.apellido2 = apellido2;
		this.dni = dni;
		this.fechaNacimiento = fechaNacimiento;
		this.telefono = telefono;
		this.provincia = provincia;
		this.pais = pais;
		this.direccion = direccion;
		this.codigoPostal = codigoPostal;
		this.sexo = sexo;
	}


	public String getNombre() {
		return nombre;
	}


	public String getApellido1() {
		return apellido1;
	}


	public String getApellido2() {
		return apellido2;
	}


	public String getDni() {
		return dni;
	}


	public String getFechaNacimiento() {
		return fechaNacimiento;
	}


	public String getTelefono() {
		return telefono;
	}


	public String getProvincia() {
		return provincia;
	}


	public String getPais() {
		return pais;
	}


	public String getDireccion() {
		return direccion;
	}


	public String getCodigoPostal() {
		return codigoPostal;
	}


	public String getSexo() {
		return sexo;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public void setApellido1(String apellido1) {
		this.apellido1 = apellido1;
	}


	public void setApellido2(String apellido2) {
		this.apellido2 = apellido2;
	}


	public void setDni(String dni) {
		this.dni = dni;
	}


	public void setFechaNacimiento(String fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}


	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}


	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}


	public void setPais(String pais) {
		this.pais = pais;
	}


	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}


	public void setCodigoPostal(String codigoPostal) {
		this.codigoPostal = codigoPostal;
	}


	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	
}

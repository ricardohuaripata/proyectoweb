package com.proyecto.controladores;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.proyecto.utilidades.Validacion;
import com.proyecto.utilidades.Persona;

@Controller
public class Controlador {

	@GetMapping("/index")
	public ModelAndView indexIntranet() {
		return new ModelAndView("index");
	}

	@GetMapping("/calculadora")
	public ModelAndView calculadoraIntranet() {
		return new ModelAndView("calculadora");
	}
	
	@GetMapping("/resultado")
	public ModelAndView resultadoIntranet(HttpServletRequest request) {
		
		String valor1 = request.getParameter("valor1");
		String valor2 = request.getParameter("valor2");
		String tipoOperacion = request.getParameter("tipoOperacion");
		
		request.setAttribute("valor1", valor1);
		request.setAttribute("valor2", valor2);
		request.setAttribute("tipoOperacion", tipoOperacion);
		
		return new ModelAndView("resultado");
	
	}
	
	@GetMapping("/formulario")
	public ModelAndView formularioIntranet() {
		return new ModelAndView("formulario");
	}
	
	@GetMapping("/resultadoFormulario")
	public ModelAndView resultadoFormularioIntranet(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView("resultadoFormulario");
				
		String nombre = request.getParameter("nombre");
		String apellido1 = request.getParameter("apellido1");
		String apellido2 = request.getParameter("apellido2");
		String dni = request.getParameter("dni");
		String fechaNacimiento = request.getParameter("fechaNacimiento");
		String telefono = request.getParameter("telefono");
		String provincia = request.getParameter("provincia");
		String pais = request.getParameter("pais");
		String direccion = request.getParameter("direccion");
		String codigoPostal = request.getParameter("codigoPostal");
		String sexo = request.getParameter("sexo");
		
		Persona persona = new Persona(nombre, apellido1, apellido2, dni, fechaNacimiento, telefono, provincia, pais, direccion, codigoPostal, sexo);
		Validacion validacion = new Validacion(persona);
		// le pasamos la persona a la request para imprimir sus datos en resultadoFormulario.jsp
		mv.addObject("persona", persona);
		// validacion.errores() devuelve un hashmap con todos los campo erroneos, si no hay errores estara vacio
		mv.addObject("errores", validacion.errores()); 
		
		return mv;
	}

}
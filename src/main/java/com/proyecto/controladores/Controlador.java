package com.proyecto.controladores;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	
	@GetMapping("/hashmap-personas")
	public ModelAndView hashmapPersonasIntranet() {
		return new ModelAndView("hashmap-personas");
	}

	@GetMapping("/bigdecimal")
	public ModelAndView bigdecimalIntranet() {
		return new ModelAndView("bigdecimal");
	}
	
	@GetMapping("/calculadora-operacion")
	public ModelAndView calculadoraOperacionIntranet() {
		return new ModelAndView("calculadora-operacion");
	}
	
	@GetMapping("/calculadora-resultado")
	public ModelAndView calculadoraResultadoIntranet(HttpServletRequest request) {
		return new ModelAndView("calculadora-resultado");
	
	}
	
	@GetMapping("/formulario-rellenar")
	public ModelAndView formularioRellenarIntranet() {
		return new ModelAndView("formulario-rellenar");
	}
	
	@GetMapping("/formulario-resultado")
	public ModelAndView formularioResultadoIntranet(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView("formulario-resultado");
				
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
	
	@GetMapping("/sesion-login")
	public ModelAndView sesionLoginIntranet() {
		return new ModelAndView("sesion-login");
	}
	
	@GetMapping("/sesion-validate")
	public ModelAndView sesionValidateIntranet(HttpServletRequest request, HttpSession session, HttpServletResponse response) {
		
		String login = "ricardohuaripata";
		String clave = "clave";

		String sesion_user = request.getParameter("sesion_user");
		String sesion_password = request.getParameter("sesion_password");
		
		session.setAttribute("password", sesion_password);
		
		Cookie cookie = new Cookie("user", sesion_user);
		cookie.setMaxAge(60*60*24);
		
		response.addCookie(cookie);

		return new ModelAndView("sesion-validate");
	}

}
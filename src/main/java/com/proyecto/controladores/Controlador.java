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

		Persona persona = new Persona(nombre, apellido1, apellido2, dni, fechaNacimiento, telefono, provincia, pais,
				direccion, codigoPostal, sexo);
		Validacion validacion = new Validacion(persona);
		// le pasamos la persona a la request para imprimir sus datos en
		// resultadoFormulario.jsp
		mv.addObject("persona", persona);
		// validacion.errores() devuelve un hashmap con todos los campo erroneos, si no
		// hay errores estara vacio
		mv.addObject("errores", validacion.errores());

		return mv;
	}

	@GetMapping("/session-login")
	public ModelAndView sessionLoginIntranet(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("session-login");
		String error = request.getParameter("error");
		mv.addObject("error", error);
		return mv;
	}

	@GetMapping("/session-validate")
	public ModelAndView sessionValidateIntranet(HttpServletRequest request, HttpSession session,
			HttpServletResponse response) {
		
		ModelAndView mv = new ModelAndView("session-validate");
		// si no ha pasado primero por el login, se redirige al login
		if(request.getParameter("user") == null || request.getParameter("password") == null) {
			mv = new ModelAndView("redirect:/session-login");
		} else {
			
			String correct_user = "ricardohuaripata";
			String correct_pass = "myPassword";

			String user = request.getParameter("user");
			String pass = request.getParameter("password");

			if (user.equals(correct_user) && pass.equals(correct_pass)) {

				session.setAttribute("session-user", user);

				Cookie cookie1 = new Cookie("user", user);
				Cookie cookie2 = new Cookie("pass", pass);
				cookie1.setMaxAge(60 * 60 * 24);
				cookie2.setMaxAge(60 * 60 * 24);
				response.addCookie(cookie1);
				response.addCookie(cookie2);
			} else {
				mv = new ModelAndView("redirect:/session-login");
				mv.addObject("error", "Login incorrecto");
			}
			
		}

		return mv;
	}

	@GetMapping("/session-confirm_session")
	public ModelAndView sessionConfirm(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView("session-confirm_session");
		//si ha hecho el login correctamente tendra su sesion iniciada con su nombre de usuario
		//de lo contrario el atributo de sesion sera null
		if (session.getAttribute("session-user") == null) {
			mv = new ModelAndView("redirect:/session-login");
		}
		return mv;
	}

}
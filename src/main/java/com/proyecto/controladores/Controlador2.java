package com.proyecto.controladores;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controlador2 {

	HashMap<Integer, Integer> carrito = new HashMap<Integer, Integer>();

	@GetMapping("/productos")
	public ModelAndView productos(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView("productos");
		return mv;
	}

	@GetMapping("/carrito")
	public ModelAndView carrito(HttpServletRequest request, HttpSession session) {

		ModelAndView mv = new ModelAndView("carrito");

		if (request.getParameter("idProducto") != null && request.getParameter("cantidad") != null) {
			int idproducto = Integer.parseInt(request.getParameter("idProducto"));
			int cantidad = Integer.parseInt(request.getParameter("cantidad"));
			carrito.put(idproducto, cantidad);
		}
		session.setAttribute("carrito", carrito);

		return mv;
	}

}
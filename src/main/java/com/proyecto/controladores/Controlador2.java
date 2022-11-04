package com.proyecto.controladores;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controlador2 {
	
	@GetMapping("/personas")
	public ModelAndView personasIntranet() {
		return new ModelAndView("personas");
	}

}

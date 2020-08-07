package com.cmed.health;
import javax.servlet.http.HttpServletRequest;

import com.cmed.health.exceptions.ResourceAlreadyExistsException;
import com.cmed.health.exceptions.ResourceNotFoundException;
import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;


@ControllerAdvice
public class GlobalExceptionHandler {

	@ResponseStatus(code = HttpStatus.CONFLICT) // 409
	@ExceptionHandler(ResourceAlreadyExistsException.class)
	public String handleConflict(HttpServletRequest req, Exception e, Model model) {
		e.printStackTrace();
		model.addAttribute("message", e.getMessage());
		return "error";
	}

	@ResponseStatus(code = HttpStatus.NOT_FOUND) // 404
	@ExceptionHandler(ResourceNotFoundException.class)
	public String handleNotFound(HttpServletRequest req, Exception e, Model model) {

		model.addAttribute("message", e.getMessage());
		e.printStackTrace();
		return "error";
	}

	@ResponseStatus(code = HttpStatus.INTERNAL_SERVER_ERROR) // 500
	@ExceptionHandler(RuntimeException.class)
	public String handleAnyServerError(HttpServletRequest req, Exception e, Model model) {
		e.printStackTrace();
		model.addAttribute("message", e.getMessage());
		return "error";
	}
}

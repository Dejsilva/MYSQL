package com.generation.helloworld2.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello2")
public class Hello2Controller {
	
	@GetMapping
	public String hello() {
		
		return "Conseguir aprender  absorver o maximo possivel das aulas";
	}

}

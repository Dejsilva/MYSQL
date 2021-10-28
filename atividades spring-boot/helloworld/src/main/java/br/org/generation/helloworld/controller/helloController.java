package br.org.generation.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;



@RestController
@RequestMapping("/hello")
public class helloController {
	
	@GetMapping
	public String hello() {
		
		return "ola mundo, utilizei persistencia e mentalidade de crescimento para conseguir realizar essa tarefa ";
		
	}
	
}
package br.org.generation.blogpessoal.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.org.generation.blogpessoal.model.Tema;
import br.org.generation.blogpessoal.repository.TemaRepository;

@RestController
@CrossOrigin (origins = "*", allowedHeaders = "*") 
@RequestMapping("/tema")
public class TemaController {

	@Autowired
	private TemaRepository repository;
	
	@GetMapping
	public ResponseEntity<List<Tema>> getAll(){
		return ResponseEntity.ok(repository.findAll());
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<Tema> getById(@PathVariable long id){
		return repository.findById(id)
				.map(resposta -> ResponseEntity.ok(resposta))
				.orElse(ResponseEntity.notFound().build());
}
	
	@GetMapping("/titulo/{titulo}")
	public ResponseEntity<List<Tema>> getByTitulo(@PathVariable String titulo){
		return ResponseEntity.ok(repository.findAllByDescricaoContainingIgnoreCase(titulo));
	
	}
	
	@PostMapping
	public ResponseEntity<Tema> postTema(@RequestBody Tema  tema){
		return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(tema));
		
	}
	@PutMapping
	public ResponseEntity<Tema> putPostagem(@RequestBody Tema tema){
		return repository.findById(tema.getId())
		.map(resposta ->  ResponseEntity.ok(repository.save(tema)))
		.orElse(ResponseEntity.notFound().build());	
		
	
	}
	
	@DeleteMapping({"/{id}"})
	public ResponseEntity <?> delete(@PathVariable long id) {
		   return repository.findById(id)
		           .map(checagem -> {
		        	   repository.deleteById(id);
		             return ResponseEntity.ok().build();
		           	}).orElse(ResponseEntity.notFound().build());

	   			   			
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}


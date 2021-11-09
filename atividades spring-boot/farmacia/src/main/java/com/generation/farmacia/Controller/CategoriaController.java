package com.generation.farmacia.Controller;

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

import com.generation.farmacia.model.Categoria;
import com.generation.farmacia.repository.CategoriaRepository;

@RestController
@CrossOrigin(origins = "*" ,allowedHeaders = "*")
@RequestMapping ( "/categoria")
public class CategoriaController {
	
	@Autowired
	private CategoriaRepository repository;
	
	@GetMapping
	public ResponseEntity<List<Categoria>> getAll(){
	return ResponseEntity.ok(repository.findAll());
	
}
	@GetMapping("/nome/{nome}")
	public ResponseEntity<List<Categoria>> getByNome(@PathVariable String nome){
		return ResponseEntity.ok(repository.findAllBySintomasContainingIgnoreCase(nome));
	}
	
	@PostMapping
	public ResponseEntity<Categoria> postCategoria(@RequestBody Categoria  categoria){
		return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(categoria));
}
	@PutMapping
	public ResponseEntity<Categoria> putPostagem(@RequestBody Categoria categoria){
		return repository.findById(categoria.getId())
		.map(resposta ->  ResponseEntity.ok(repository.save(categoria)))
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













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

import com.generation.farmacia.model.Produto;
import com.generation.farmacia.repository.ProdutoRepository;

@RestController
@CrossOrigin(origins = "*" , allowedHeaders = "*")
@RequestMapping("/produto")
public class ProdutoController {
	
	@Autowired
	private ProdutoRepository repository;
	
	
	@GetMapping
	public ResponseEntity<List<Produto>> getAll(){
		return ResponseEntity.ok(repository.findAll());
			

}
	@GetMapping("/{id}")
	public ResponseEntity<Produto> getById(@PathVariable long id){
	return repository.findById(id)
			.map(resposta -> ResponseEntity.ok(resposta))
			.orElse(ResponseEntity.notFound().build());
	
}
	@GetMapping("/nome/{nome}")
	public ResponseEntity<List<Produto>> getByNome(@PathVariable String nome){
	return ResponseEntity.ok(repository.findAllByNomeContainingIgnoreCase(nome));

}
	@PostMapping
	public ResponseEntity<Produto> postProduto(@RequestBody Produto produto){
	return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(produto));



}
	
	@PutMapping
	public ResponseEntity<Produto> putProduto(@RequestBody Produto produto){
		return repository.findById(produto.getId())
		.map(resposta ->  ResponseEntity.ok(repository.save(produto)))
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


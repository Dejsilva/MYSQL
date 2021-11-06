package com.generation.djgames.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.generation.djgames.model.Produto;

public interface ProdutoRepository extends JpaRepository<Produto, Long>{
	
public  List <Produto> findAllByNomeContainingIgnoreCase(String nome);

	
	

	//select * from tb_postagens where titulo like "%nome%;
	

}

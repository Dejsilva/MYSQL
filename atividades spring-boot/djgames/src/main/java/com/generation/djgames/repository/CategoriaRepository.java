package com.generation.djgames.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.generation.djgames.model.Categoria;

public interface CategoriaRepository extends JpaRepository <Categoria, Long> {
	public List<Categoria> findAllByTipoContainingIgnoreCase(String tipo);
}



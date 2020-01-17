package br.com.qintess.formulario.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.com.qintess.formulario.modelos.Idioma;

@Repository
public interface IdiomaDao extends CrudRepository<Idioma, Integer>{
	@Query(value = "select * from idioma order by id", nativeQuery = true)
	List<Idioma> buscaIdiomaOrdenado();
}

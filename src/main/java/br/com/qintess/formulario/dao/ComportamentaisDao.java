package br.com.qintess.formulario.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.com.qintess.formulario.modelos.Comportamentais;

@Repository
public interface ComportamentaisDao extends CrudRepository<Comportamentais, Integer> {
	@Query(value = "select * from comportamentais order by id", nativeQuery = true)
	List<Comportamentais> buscaOrdenadoComportamentais();
}

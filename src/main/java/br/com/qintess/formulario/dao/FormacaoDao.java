package br.com.qintess.formulario.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.com.qintess.formulario.modelos.FormacaoAcademica;

@Repository
public interface FormacaoDao extends CrudRepository<FormacaoAcademica, Integer>{
	@Query(value = "select * from formacao order by id", nativeQuery = true)
	List<FormacaoAcademica> buscaFormacaoOrdenado();
}

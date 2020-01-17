package br.com.qintess.formulario.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.com.qintess.formulario.modelos.OffTopic;

@Repository
public interface OffTopicDao extends CrudRepository<OffTopic, Integer> {
	@Query(value = "select * from off_topic order by id", nativeQuery = true)
	List<OffTopic> buscaOrdenadoOffTopic();
}

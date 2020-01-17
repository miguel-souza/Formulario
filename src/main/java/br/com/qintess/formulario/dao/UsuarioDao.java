package br.com.qintess.formulario.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.com.qintess.formulario.modelos.Usuario;

@Repository
public interface UsuarioDao extends CrudRepository<Usuario, Integer>{
	@Query(value = "select * from usuario order by id", nativeQuery = true)
	List<Usuario> buscaUsuarioOrdenado();
}

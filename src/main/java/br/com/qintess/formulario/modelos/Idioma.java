package br.com.qintess.formulario.modelos;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Idioma {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(nullable = false)
	private String nome;
	
	@ManyToMany(mappedBy = "idiomas")
	private List<Usuario> usuarios_falam;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public List<Usuario> getUsuarios_falam() {
		return usuarios_falam;
	}

	public void setUsuarios_falam(List<Usuario> usuarios_falam) {
		this.usuarios_falam = usuarios_falam;
	}
}

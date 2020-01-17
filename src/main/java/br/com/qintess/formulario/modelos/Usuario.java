package br.com.qintess.formulario.modelos;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Convert;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Usuario {
	// DADOS PESSOAIS
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(nullable = false)
	private String nome;
	
	@Column(nullable = true)
	private String principal_tec;
	
	@ElementCollection
	private List<String> outras_ativ;

	@ElementCollection
	private List<String> outras_tec;

	@ManyToOne
	@JoinColumn(name = "formacao_id")
	private FormacaoAcademica formacao;

	@Column(nullable = false)
	private String tempo_experiencia;

	@ElementCollection
	private List<String> certificacoes;
	
	@ManyToMany
	@JoinTable(name = "usuario_falam_idiomas")
	private List<Idioma> idiomas;

	@ElementCollection
	private List<String> restricao;
	
	@Column(nullable = false)
	private String possui_filhos;

	@Column(nullable = true)
	private String qtd_filhos;

	
	@ElementCollection
	private List<String> idade_filhos;

	@ElementCollection
	private List<String> aprender_tec;

	@ManyToMany
	@JoinTable(name = "usuario_aprender_idiomas")
	private List<Idioma> aprender_idioma;

	@ManyToMany
	@JoinTable(name = "usuario_aprender_comportamentais")
	private List<Comportamentais> aprender_comportamental;

	@ManyToMany
	@JoinTable(name = "usuario_aprender_off_topics")
	private List<OffTopic> aprender_off_topic;
/**/
	@ElementCollection
	private List<String> ensinar_tec;

	@ManyToMany
	@JoinTable(name = "usuario_ensinar_idiomas")
	private List<Idioma> ensinar_idioma;

	@ManyToMany
	@JoinTable(name = "usuario_ensinar_comportamentais")
	private List<Comportamentais> ensinar_comportamental;

	@ManyToMany
	@JoinTable(name = "usuario_ensinar_off_topics")
	private List<OffTopic> ensinar_off_topic;
	
	@ElementCollection
	private List<String> beneficios;
	
	@ElementCollection
	private List<String> interesse_outra_area;
	
	@Column(nullable = true)
	private String expectativas;

												/*Getters and Setters*/
	
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

	public String getPrincipal_tec() {
		return principal_tec;
	}

	public void setPrincipal_tec(String principal_tec) {
		this.principal_tec = principal_tec;
	}

	public List<String> getOutras_ativ() {
		return outras_ativ;
	}

	public void setOutras_ativ(List<String> outras_ativ) {
		this.outras_ativ = outras_ativ;
	}

	public List<String> getOutras_tec() {
		return outras_tec;
	}

	public void setOutras_tec(List<String> outras_tec) {
		this.outras_tec = outras_tec;
	}

	public FormacaoAcademica getFormacao() {
		return formacao;
	}

	public void setFormacao(FormacaoAcademica formacao) {
		this.formacao = formacao;
	}

	public String getTempo_experiencia() {
		return tempo_experiencia;
	}

	public void setTempo_experiencia(String tempo_experiencia) {
		this.tempo_experiencia = tempo_experiencia;
	}

	public List<String> getCertificacoes() {
		return certificacoes;
	}

	public void setCertificacoes(List<String> certificacoes) {
		this.certificacoes = certificacoes;
	}

	public List<Idioma> getIdiomas() {
		return idiomas;
	}

	public void setIdiomas(List<Idioma> idiomas) {
		this.idiomas = idiomas;
	}

	public List<String> getRestricao() {
		return restricao;
	}

	public void setRestricao(List<String> restricao) {
		this.restricao = restricao;
	}

	public String getPossui_filhos() {
		return possui_filhos;
	}

	public void setPossui_filhos(String possui_filhos) {
		this.possui_filhos = possui_filhos;
	}

	public String getQtd_filhos() {
		return qtd_filhos;
	}

	public void setQtd_filhos(String qtd_filhos) {
		this.qtd_filhos = qtd_filhos;
	}

	public List<String> getIdade_filhos() {
		return idade_filhos;
	}

	public void setIdade_filhos(List<String> idade_filhos) {
		this.idade_filhos = idade_filhos;
	}

	public List<String> getAprender_tec() {
		return aprender_tec;
	}

	public void setAprender_tec(List<String> aprender_tec) {
		this.aprender_tec = aprender_tec;
	}

	public List<Idioma> getAprender_idioma() {
		return aprender_idioma;
	}

	public void setAprender_idioma(List<Idioma> aprender_idioma) {
		this.aprender_idioma = aprender_idioma;
	}

	public List<Comportamentais> getAprender_comportamental() {
		return aprender_comportamental;
	}

	public void setAprender_comportamental(List<Comportamentais> aprender_comportamental) {
		this.aprender_comportamental = aprender_comportamental;
	}

	public List<OffTopic> getAprender_off_topic() {
		return aprender_off_topic;
	}

	public void setAprender_off_topic(List<OffTopic> aprender_off_topic) {
		this.aprender_off_topic = aprender_off_topic;
	}

	public List<String> getEnsinar_tec() {
		return ensinar_tec;
	}

	public void setEnsinar_tec(List<String> ensinar_tec) {
		this.ensinar_tec = ensinar_tec;
	}

	public List<Idioma> getEnsinar_idioma() {
		return ensinar_idioma;
	}

	public void setEnsinar_idioma(List<Idioma> ensinar_idioma) {
		this.ensinar_idioma = ensinar_idioma;
	}

	public List<Comportamentais> getEnsinar_comportamental() {
		return ensinar_comportamental;
	}

	public void setEnsinar_comportamental(List<Comportamentais> ensinar_comportamental) {
		this.ensinar_comportamental = ensinar_comportamental;
	}

	public List<OffTopic> getEnsinar_off_topic() {
		return ensinar_off_topic;
	}

	public void setEnsinar_off_topic(List<OffTopic> ensinar_off_topic) {
		this.ensinar_off_topic = ensinar_off_topic;
	}

	public List<String> getBeneficios() {
		return beneficios;
	}

	public void setBeneficios(List<String> beneficios) {
		this.beneficios = beneficios;
	}

	public String getExpectativas() {
		return expectativas;
	}

	public void setExpectativas(String expectativas) {
		this.expectativas = expectativas;
	}

	public List<String> getInteresse_outra_area() {
		return interesse_outra_area;
	}

	public void setInteresse_outra_area(List<String> interesse_outra_area) {
		this.interesse_outra_area = interesse_outra_area;
	}

}

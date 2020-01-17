package br.com.qintess.formulario.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.qintess.formulario.dao.ComportamentaisDao;
import br.com.qintess.formulario.dao.FormacaoDao;
import br.com.qintess.formulario.dao.IdiomaDao;
import br.com.qintess.formulario.dao.OffTopicDao;
import br.com.qintess.formulario.dao.UsuarioDao;
import br.com.qintess.formulario.modelos.Comportamentais;
import br.com.qintess.formulario.modelos.FormacaoAcademica;
import br.com.qintess.formulario.modelos.OffTopic;
import br.com.qintess.formulario.modelos.Usuario;

@Controller
public class FormularioController {
	
	@Autowired
	UsuarioDao usuarioDao;
	
	
	@Autowired
	FormacaoDao formacaoDao;
	
	@Autowired
	IdiomaDao idiomaDao;
	
	@Autowired
	ComportamentaisDao comportamentaisDao;
	
	@Autowired
	OffTopicDao offTopicDao;
	
	@RequestMapping("/")
	public String carrega(Model model) {
		model.addAttribute("formacoes", formacaoDao.buscaFormacaoOrdenado());
		model.addAttribute("idiomas", idiomaDao.buscaIdiomaOrdenado());
		model.addAttribute("comportamentais", comportamentaisDao.buscaOrdenadoComportamentais());
		model.addAttribute("offtopics", offTopicDao.buscaOrdenadoOffTopic());
		model.addAttribute("usuario", new Usuario()); 
		return "formulario";
	}
	
	@RequestMapping("/salva")
	public String salva(@ModelAttribute Usuario usuario) {
		usuarioDao.save(usuario);
		return "redirect:/";
	}
	
	@RequestMapping("/limpar")
	public String limpar() {
		return "redirect:/";
	}
}

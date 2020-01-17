package br.com.qintess.formulario.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.qintess.formulario.dao.UsuarioDao;

@Controller
public class RelatorioController {
	
	@Autowired
	UsuarioDao usuarioDao;
	
	@RequestMapping("/relatorio")
	public String carrega(Model model) {
		model.addAttribute("dados", usuarioDao.buscaUsuarioOrdenado());
		return "relatorio";
	}
}

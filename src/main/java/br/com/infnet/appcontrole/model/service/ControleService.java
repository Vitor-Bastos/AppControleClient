package br.com.infnet.appcontrole.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.infnet.appcontrole.model.clients.IControleClient;
import br.com.infnet.appcontrole.model.negocio.Controle;

@Service
public class ControleService {

	@Autowired private IControleClient client;
	
	public void incluir(Controle controle) {
		client.incluir(controle);
	}
	
	public List<Controle> obterLista(){
		return client.obterLista();
	}

	public Controle consultar(Integer id) {
		return client.consultar(id);
	}

	public void excluir(Integer id) {
		client.excluir(id);
	}
}
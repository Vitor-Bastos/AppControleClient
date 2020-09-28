package br.com.infnet.appcontrole.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.infnet.appcontrole.model.clients.IInsulinaClient;
import br.com.infnet.appcontrole.model.negocio.Insulina;

@Service
public class InsulinaService extends RemedioService {

	@Autowired private IInsulinaClient insulinaClient;
	
	public List<Insulina> obterInsulinas(){
		return insulinaClient.obterLista();
	}
	
	public Insulina obterPorId(Integer id) {
		return insulinaClient.obterPorId(id);
	}
}
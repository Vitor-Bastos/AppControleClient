package br.com.infnet.appcontrole.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.infnet.appcontrole.model.clients.IPenicilinaClient;
import br.com.infnet.appcontrole.model.negocio.Penicilina;

@Service
public class PenicilinaService extends RemedioService {

	@Autowired private IPenicilinaClient penicilinaClient;
	
	public List<Penicilina> obterPenicilinas(){
		return penicilinaClient.obterLista();
	}

	public Penicilina obterPorId(Integer id) {
		return penicilinaClient.obterPorId(id);
	}
}
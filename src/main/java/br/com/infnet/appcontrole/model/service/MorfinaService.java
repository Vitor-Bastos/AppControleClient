package br.com.infnet.appcontrole.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.infnet.appcontrole.model.clients.IMorfinaClient;
import br.com.infnet.appcontrole.model.negocio.Morfina;

@Service
public class MorfinaService extends RemedioService {

	@Autowired private IMorfinaClient morfinaClient;
	
	public List<Morfina> obterMorfinas(){
		return morfinaClient.obterLista();
	}

	public Morfina obterPorId(Integer id) {
		return morfinaClient.obterPorId(id);
	}
}
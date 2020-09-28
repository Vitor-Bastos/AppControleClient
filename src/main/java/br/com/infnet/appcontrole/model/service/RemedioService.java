package br.com.infnet.appcontrole.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.infnet.appcontrole.model.clients.IRemedioClient;
import br.com.infnet.appcontrole.model.negocio.Remedio;

@Service
public class RemedioService {

	@Autowired private IRemedioClient remedioClient;
	
	public List<Remedio> obterLista(){		
		return remedioClient.obterLista();
	}
	
	public void excluir(Integer id) {
		remedioClient.excluir(id);
	}
	
	public Remedio obterPorId(Integer id) {
		return remedioClient.obterPorId(id);
	}

	public void incluir(Remedio remedio) {
		remedioClient.incluir(remedio);
	}
}

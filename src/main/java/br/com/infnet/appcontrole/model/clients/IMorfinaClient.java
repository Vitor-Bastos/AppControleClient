package br.com.infnet.appcontrole.model.clients;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import br.com.infnet.appcontrole.model.negocio.Morfina;

@FeignClient(url = "http://localhost:8081/api/controle", name = "morfinaClient")
public interface IMorfinaClient {

	@GetMapping(value = "/morfinas")
	public List<Morfina> obterLista();
	
	@GetMapping(value = "/morfina/{id}")
	public Morfina obterPorId(@PathVariable Integer id);
}
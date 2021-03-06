package br.com.infnet.appcontrole.model.clients;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import br.com.infnet.appcontrole.model.negocio.Penicilina;

@FeignClient(url = "http://localhost:8081/api/controle", name = "penicilinaClient")
public interface IPenicilinaClient {

	@GetMapping(value = "/penicilinas")
	public List<Penicilina> obterLista();
	
	@GetMapping(value = "/penicilina/{id}")
	public Penicilina obterPorId(@PathVariable Integer id);
}
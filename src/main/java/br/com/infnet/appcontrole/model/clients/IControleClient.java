package br.com.infnet.appcontrole.model.clients;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import br.com.infnet.appcontrole.model.negocio.Controle;

@FeignClient(url = "http://localhost:8081/api/controle", name = "controleClient")
public interface IControleClient {

	@GetMapping(value = "/lista")
	public List<Controle> obterLista();
	
	@PostMapping(value = "/incluir")
	public void incluir(@RequestBody Controle controle);

	@GetMapping(value = "/{id}/excluir")
	public void excluir(@PathVariable Integer id);

	@GetMapping(value = "/{id}/consultar")
	public Controle consultar(@PathVariable Integer id);
}
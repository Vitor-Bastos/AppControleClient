package br.com.infnet.appcontrole.model.clients;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import br.com.infnet.appcontrole.model.negocio.Insulina;

@FeignClient(url = "http://localhost:8081/api/controle", name = "insulinaClient")
public interface IInsulinaClient {

	@GetMapping(value = "/insulinas")
	public List<Insulina> obterLista();
	
	@GetMapping(value = "/insulina/{id}")
	public Insulina obterPorId(@PathVariable Integer id);
}
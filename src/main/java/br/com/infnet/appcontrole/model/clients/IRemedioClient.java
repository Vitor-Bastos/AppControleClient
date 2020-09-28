package br.com.infnet.appcontrole.model.clients;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import br.com.infnet.appcontrole.model.negocio.Remedio;

@FeignClient(url = "http://localhost:8081/api/controle", name = "remedioClient")
public interface IRemedioClient {

	@GetMapping(value = "/remedios")
	public List<Remedio> obterLista();
	
	@GetMapping(value = "/remedio/{id}")
	public Remedio obterPorId(@PathVariable Integer id);

	@PostMapping(value = "/remedio/incluir")
	public void incluir(@RequestBody Remedio remedio);

	@GetMapping(value = "/remedio/{id}/excluir")
	public void excluir(@PathVariable Integer id);
}
package br.com.infnet.appcontrole.model.clients;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.infnet.appcontrole.model.negocio.Usuario;

@FeignClient(url = "http://localhost:8081/api/controle", name = "usuarioClient")
public interface IUsuarioClient {

	@PostMapping(value = "/usuario")
	public boolean isValid(@RequestParam String login, @RequestParam String senha);
	
	@PostMapping(value = "/usuario/{login}")
	public Usuario obterPorLogin(@PathVariable String login);

	@PostMapping(value = "/usuario/incluir")
	public void incluir(@RequestBody Usuario usuario);
}
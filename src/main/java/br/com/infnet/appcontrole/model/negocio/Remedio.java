package br.com.infnet.appcontrole.model.negocio;

import java.util.List;

public class Remedio {

	private Integer id;
	private String descricao;
	private List<Controle> controles;
	private String tipoRemedio;
	
	@Override
	public String toString() {
		return String.format("%s", this.getDescricao());
	}
	
	public Remedio() {
	}
	public Remedio(Integer id) {
		this();
		this.setId(id);
	}
	public Remedio(Integer id, String descricao) {
		this(id);
		this.setDescricao(descricao);
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public List<Controle> getControles() {
		return controles;
	}
	public void setControles(List<Controle> controles) {
		this.controles = controles;
	}

	public String getTipoRemedio() {
		return tipoRemedio;
	}

	public void setTipoRemedio(String tipoRemedio) {
		this.tipoRemedio = tipoRemedio;
	}
}
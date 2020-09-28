package br.com.infnet.appcontrole.model.negocio;

import java.util.List;

public class Controle {

	private Integer id;
	private String descricao;
	private List<Remedio> remedios;
	private Solicitante solicitante;
	
	@Override
	public String toString() {
		return String.format("%d - %s - %s", 
					this.getId(),
					this.getDescricao(),
					this.getRemedios()
				);
	}

	public Controle() {
	}
	public Controle(Integer id, String descricao) {
		this();
		this.setId(id);
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
	public List<Remedio> getRemedios() {
		return remedios;
	}
	public void setRemedios(List<Remedio> remedios) {
		this.remedios = remedios;
	}
	public Solicitante getSolicitante() {
		return solicitante;
	}
	public void setSolicitante(Solicitante solicitante) {
		this.solicitante = solicitante;
	}
}

package br.com.infnet.appcontrole.model.negocio;

public class Penicilina extends Remedio {

	private String tratamento;

	public Penicilina() {
		this.setTipoRemedio("P");
	}

	@Override
	public String toString() {
		return String.format("%s - %s", super.toString(), this.getTratamento());
	}

	public String getTratamento() {
		return tratamento;
	}

	public void setTratamento(String tratamento) {
		this.tratamento = tratamento;
	}
}
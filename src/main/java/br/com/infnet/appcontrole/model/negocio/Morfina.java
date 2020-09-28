package br.com.infnet.appcontrole.model.negocio;

public class Morfina extends Remedio {

	private String tipo;

	public Morfina() {
		this.setTipoRemedio("M");
	}

	@Override
	public String toString() {
		return String.format("%s - %s", super.toString(), this.getTipo());
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
}

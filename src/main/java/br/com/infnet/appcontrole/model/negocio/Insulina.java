package br.com.infnet.appcontrole.model.negocio;

public class Insulina extends Remedio {

	private Float dosagem;
	
	public Insulina() {
		this.setTipoRemedio("I");
	}
	
	@Override
	public String toString() {
		return String.format("%s - %.2f", super.toString(), this.getDosagem());
	}

	public Float getDosagem() {
		return dosagem;
	}

	public void setDosagem(Float dosagem) {
		this.dosagem = dosagem;
	}
}
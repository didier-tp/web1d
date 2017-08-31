package com.sopra.web.data;

public class CalculTva {
	private Double Ht;
	private Double Tx;
	private Double Tva;
	private Double Ttc;

	public CalculTva(Double ht, Double tx) {
		super();
		Ht = ht;
		Tx = tx;
	}

	public CalculTva() {

	}

	public Double getTva() {
		return Tva;
	}

	public void setTva(Double tva) {
		Tva = tva;
	}

	public Double getHt() {
		return Ht;
	}

	public void setHt(Double ht) {
		Ht = ht;
	}

	public Double getTx() {
		return Tx;
	}

	public void setTx(Double tx) {
		Tx = tx;
	}

	public Double getTtc() {
		return Ttc;
	}

	public void setTtc(Double ttc) {
		Ttc = ttc;
	};

}

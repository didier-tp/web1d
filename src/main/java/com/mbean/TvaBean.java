package com.mbean;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

@ManagedBean
@RequestScoped
public class TvaBean {

	private Double mtht;
	private Double tx;
	private Double res;

	public String calculTva() {
		String suite = null;
		try {
			res = (1 + tx) * mtht;
			suite = "affTva2";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return suite;
	}

	public Double getMtht() {
		return mtht;
	}

	public void setMtht(Double mtht) {
		this.mtht = mtht;
	}

	public Double getTx() {
		return tx;
	}

	public void setTx(Double tx) {
		this.tx = tx;
	}

	public Double getRes() {
		return res;
	}

	public void setRes(Double res) {
		this.res = res;
	}

	public TvaBean(Double mtht, Double tx) {
		super();
		this.mtht = mtht;
		this.tx = tx;
	}

	public TvaBean() {

	}

}

package com.mbean;

import java.util.Date;
import java.util.List;

import javax.faces.event.ValueChangeEvent;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.sopra.resa.model.Localite;
import com.sopra.resa.model.Vol;
import com.sopra.resa.service.ServiceVols;

//@ManagedBean
@Component()
// @RequestScoped
@Scope("request")
public class VolBean {

	private Date dateDepart;
	private List<Vol> listeVols;
	private List<Localite> listeLocalites;
	private String villeChoisie;

	@Autowired
	private ServiceVols serviceVols;

	public String recupVols() {
		String suite = null;
		listeVols = serviceVols.rechercherListeVolsAuDepart(villeChoisie, dateDepart);
		return suite;
	}

	public void recupVolsOnNewChoixVille(ValueChangeEvent evt) {
		this.villeChoisie = (String) evt.getNewValue();
		listeVols = serviceVols.rechercherListeVolsAuDepart(villeChoisie, dateDepart);
	}

	public Date getDateDepart() {
		return dateDepart;
	}

	public void setDateDepart(Date dateDepart) {
		this.dateDepart = dateDepart;
	}

	public List<Vol> getListeVols() {
		return listeVols;
	}

	public void setListeVols(List<Vol> listeVols) {
		this.listeVols = listeVols;
	}

	public List<Localite> getListeLocalites() {
		if (listeLocalites == null) {
			listeLocalites = serviceVols.rechercherListeLocalites();
		}
		return listeLocalites;
	}

	public void setListeLocalites(List<Localite> listeLocalites) {
		this.listeLocalites = listeLocalites;
	}

	public String getVilleChoisie() {
		return villeChoisie;
	}

	public void setVilleChoisie(String villeChoisie) {
		this.villeChoisie = villeChoisie;
	}

	public ServiceVols getServiceVols() {
		return serviceVols;
	}

	public void setServiceVols(ServiceVols serviceVols) {
		this.serviceVols = serviceVols;
	}

}

package com.mbean;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.sopra.resa.model.Client;
import com.sopra.resa.service.ServiceClient;

//@ManagedBean
//@SessionScoped
@Component()
@Scope("session")
public class LoginBean {

	private String username;
	private String password;
	private List<Client> listeCli;

	// @ManagedProperty(value = "#{serviceClientImpl}")
	@Autowired
	private ServiceClient serviceClient;

	public String verifLogin() {
		String suite = null;
		listeCli = serviceClient.findClientByName(this.username);
		if (username.equals("admin") && password.equals("pwd")) {
			suite = "loginok";
		} else {
			suite = "loginfail";
		}
		return suite;
	}

	public LoginBean() {

	}

	public LoginBean(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	public List<Client> getListeCli() {
		return listeCli;
	}

	public void setListeCli(List<Client> listeCli) {
		this.listeCli = listeCli;
	}

	public ServiceClient getServiceClient() {
		return serviceClient;
	}

	public void setServiceClient(ServiceClient serviceClient) {
		this.serviceClient = serviceClient;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}

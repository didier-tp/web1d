<%@page import="com.sopra.resa.service.ServiceClient"%>
<%@page import="com.sopra.resa.model.Client"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page
	import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/style.css">
<title>Client</title>
</head>
<%
	String sNumCli = request.getParameter("numclient");
	String msg = "";
	if (sNumCli != null) {
		try {
			Long numCli = Long.parseLong(sNumCli);
			WebApplicationContext ctxSpring = WebApplicationContextUtils.getWebApplicationContext(application);
			ServiceClient beanServiceClient = (ServiceClient) ctxSpring.getBean("serviceClientImpl");
			Client client = beanServiceClient.rechercherClient(numCli);
			request.setAttribute("client", client);
			if (client == null) {
				msg = "Client non trouvé en base";
			}
		} catch (NumberFormatException e) {
			msg = "Saisie invalide";
		}
	}
%>
<body>
	<%@ include file="header.jsp"%>
	<form action="" method="post">
		<label for="numclient">Numéro Client : </label><input name="numclient" type="number">
		<br /> <input type="submit" value="Rechercher">
	</form>
	<hr />
	<%=msg%>
	<%
		if (msg == "") {
	%>
	<br />Nom complet du client : ${client.nom} ${client.prenom}
	<%
		}
	%>
</body>
</html>
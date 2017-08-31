<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/style.css">
<title>Echec Login</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<f:view>
		<h:messages styleClass="RedCssClass" />
		<hr />
			Echec de la connexion
			<br />
		<a href="login.jsf">Réessayer</a>
		<br />
		Liste Clients :<br />
		<h:dataTable value="#{loginBean.listeCli}" var="rowVar" border="1">
			<h:column>
				<f:facet name="header">
					<f:verbatim>Nom</f:verbatim>
				</f:facet>
				<h:outputText value="#{rowVar.nom}" />
			</h:column>
			<h:column>
				<f:facet name="header">
					<f:verbatim>Prénom</f:verbatim>
				</f:facet>
				<h:outputText value="#{rowVar.prenom}" />
			</h:column>
		</h:dataTable>
	</f:view>
</body>
</html>
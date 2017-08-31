<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/style.css">
<title>Succ�s Login</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<f:view>
		<h:messages styleClass="RedCssClass" />
		<hr />
			Connect� avec succ�s en tant que <h:outputText
			value="#{loginBean.username}" />
		<br />
	</f:view>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/style.css">
<title>Insert title here</title>
</head>
<%
	String produit = request.getParameter("produit");
	String msg = "";
	if (produit != null) {
		List<String> caddy = (List<String>) session.getAttribute("caddy");
		if (caddy == null) {
			caddy = new ArrayList<String>();
			session.setAttribute("caddy", caddy);
		}
		caddy.add(produit);
		msg = "Vous avez actuellement " + caddy.size() + " produits dans le caddy";
	}
%>
<body>
	<%@ include file="header.jsp"%>
	<form method="post" action="">
		<label for="produit">Produit : </label><input type="text"
			name="produit"><br /> <input type="submit"
			value="Ajouter au caddy">
	</form>
	<%=msg%>
	<br />
	<a href="affCaddy.jsp">Afficher votre caddy</a>
</body>
</html>
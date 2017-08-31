<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/style.css">
<title>Insert title here</title>
</head>
<%
	List<String> caddy = (List<String>) session.getAttribute("caddy");
	String reinit = request.getParameter("reinit");
	if (caddy != null && reinit != null && reinit == "1") {
		caddy = null;
	}
%>
<body>
	<%@ include file="header.jsp"%>
	<ul>
		<%
			if (caddy != null && caddy.size() != 0) {
				for (String produit : caddy) {
		%>
		<li><%=produit%></li>
		<%
			}
			}
		%>
	</ul>
	<br />
	<hr />
	<table border="2">
		<c:forEach var="p" items="${sessionScope.caddy}">
			<tr>
				<td>${p}</td>
			</tr>
		</c:forEach>
	</table><br />
	<form method="post" action="">
		<input name="reinit" type="hidden" value="1"> <input
			type="submit" value="Réinitialiser caddy">
	</form>
</body>
</html>
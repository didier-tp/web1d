<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/style.css">
<title>param_calcul</title>
</head>
<%
	String sA = request.getParameter("a");
	String sB = request.getParameter("b");
%>
<body>
	<%@ include file="header.jsp"%>
	<br />
	<form method="POST" action="">
		<label for="a">a : </label><input type="number" name="a"><br />
		<label for="b">b : </label><input name="b" type="number"><br />
		<br /> <input type="submit" value="Additionner">
	</form>
	<hr />
	<br />
	<%
		if (sA != null && sB != null) {
			double a = Double.parseDouble(sA);
			double b = Double.parseDouble(sB);
			double res = a + b;
	%>
	res =
	<%=res%>
	<%
		}
	%>
</body>
</html>